#!/usr/bin/env python3
"""
Ultra-minimal Raspberry Pi monitor
Single file, zero dependencies, ~100 lines
"""

from http.server import BaseHTTPRequestHandler, HTTPServer
import json, os, socket

class H(BaseHTTPRequestHandler):
    def log_message(self, *args): pass
    
    def do_GET(self):
        if self.path == '/':
            self.send_response(200)
            self.send_header('Content-type', 'text/html')
            self.end_headers()
            self.wfile.write(HTML.encode())
        elif self.path == '/m':
            self.send_response(200)
            self.send_header('Content-type', 'application/json')
            self.end_headers()
            
            # CPU
            load = os.getloadavg()[0]
            cpu_pct = min((load / (os.cpu_count() or 4)) * 100, 100)
            
            # Memory
            m = {}
            for line in open('/proc/meminfo'):
                k, v = line.split()[0].rstrip(':'), int(line.split()[1])
                m[k] = v * 1024
            mem_pct = ((m['MemTotal'] - m['MemAvailable']) / m['MemTotal'] * 100)
            
            # Disk
            s = os.statvfs('/')
            disk_pct = ((s.f_blocks - s.f_bavail) / s.f_blocks * 100)
            
            # Temp
            try:
                temp = f"{float(open('/sys/class/thermal/thermal_zone0/temp').read())/1000:.1f}°C"
            except:
                temp = "N/A"
            
            # Network
            sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
            sock.connect(("8.8.8.8", 80))
            ip = sock.getsockname()[0]
            sock.close()
            
            # Uptime
            up = float(open('/proc/uptime').read().split()[0])
            d, h, m = int(up//86400), int((up%86400)//3600), int((up%3600)//60)
            
            data = {
                'cpu': cpu_pct, 'mem': mem_pct, 'disk': disk_pct,
                'temp': temp, 'ip': ip, 'up': f"{d}d {h}h {m}m"
            }
            self.wfile.write(json.dumps(data).encode())

HTML = """<!DOCTYPE html>
<html><head><meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1">
<title>System Monitor</title>
<style>
*{margin:0;padding:0;box-sizing:border-box}
body{font-family:-apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif;background:#0b0c0e;color:#d8d9da;padding:0;min-height:100vh}
.header{background:#1f1f20;padding:12px 20px;border-bottom:1px solid #2e2e2f;display:flex;justify-content:space-between;align-items:center}
.logo{font-size:1.5em;font-weight:600;color:#fff}
.time{color:#9fa1a4;font-size:0.9em;font-family:monospace}
.container{padding:20px;display:flex;flex-direction:column;gap:20px;max-width:1600px;margin:0 auto}
.panel{background:#18181b;border:1px solid #2e2e2f;border-radius:4px;overflow:hidden}
.panel-header{padding:12px 16px;background:#212124;border-bottom:1px solid #2e2e2f;display:flex;justify-content:space-between;align-items:center}
.panel-title{font-size:0.95em;font-weight:500;color:#d8d9da;display:flex;align-items:center;gap:8px}
.panel-value{font-size:1.8em;font-weight:600;font-family:monospace}
.chart-container{position:relative;height:220px;padding:20px}
canvas{width:100%!important;height:100%!important}
.info-panel{display:grid;grid-template-columns:repeat(auto-fit,minmax(200px,1fr));gap:16px;padding:20px;background:#18181b;border:1px solid #2e2e2f;border-radius:4px}
.info-item{display:flex;flex-direction:column;gap:4px}
.info-label{font-size:0.85em;color:#9fa1a4;text-transform:uppercase;letter-spacing:0.5px}
.info-value{font-size:1.1em;font-weight:500;color:#fff;font-family:monospace}
.status-dot{width:8px;height:8px;border-radius:50%;background:#73bf69;display:inline-block;margin-right:6px;animation:pulse 2s infinite}
@keyframes pulse{0%,100%{opacity:1}50%{opacity:.5}}
.cpu-color{color:#73bf69}
.mem-color{color:#5794f2}
.disk-color{color:#fb7185}
</style>
<script src="https://cdn.jsdelivr.net/npm/chart.js@4.4.0/dist/chart.umd.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chartjs-adapter-date-fns@3.0.0/dist/chartjs-adapter-date-fns.bundle.min.js"></script>
</head><body>
<div class="container">
<div class="panel">
<div class="panel-header">
<div class="panel-title">CPU Usage</div>
<div class="panel-value cpu-color" id="cpu-val">0%</div>
</div>
<div class="chart-container"><canvas id="cpu-chart"></canvas></div>
</div>
<div class="panel">
<div class="panel-header">
<div class="panel-title">Memory Usage</div>
<div class="panel-value mem-color" id="mem-val">0%</div>
</div>
<div class="chart-container"><canvas id="mem-chart"></canvas></div>
</div>
<div class="panel">
<div class="panel-header">
<div class="panel-title">Disk Usage</div>
<div class="panel-value disk-color" id="disk-val">0%</div>
</div>
<div class="chart-container"><canvas id="disk-chart"></canvas></div>
</div>
<div class="info-panel">
<div class="info-item">
<div class="info-label">Temperature</div>
<div class="info-value" id="temp">-</div>
</div>
<div class="info-item">
<div class="info-label">IP Address</div>
<div class="info-value" id="ip">-</div>
</div>
<div class="info-item">
<div class="info-label">Uptime</div>
<div class="info-value" id="up">-</div>
</div>
<div class="info-item">
<div class="info-label">Last Update</div>
<div class="info-value" id="time">-</div>
</div>
</div>
</div>
<script>
const timestamps=[];
const cpuData=[];
const memData=[];
const diskData=[];
const maxPoints=60;
const chartConfig=(label,color,data)=>({
type:'line',
data:{datasets:[{label,data,borderColor:color,backgroundColor:color+'22',fill:true,tension:0.4,borderWidth:2,pointRadius:0,pointHoverRadius:4}]},
options:{
responsive:true,
maintainAspectRatio:false,
interaction:{mode:'index',intersect:false},
plugins:{
legend:{display:false},
tooltip:{
backgroundColor:'#18181b',
titleColor:'#d8d9da',
bodyColor:'#d8d9da',
borderColor:'#2e2e2f',
borderWidth:1,
padding:12,
displayColors:false,
callbacks:{
label:ctx=>ctx.parsed.y.toFixed(1)+'%',
title:ctx=>new Date(ctx[0].parsed.x).toLocaleTimeString()
}
}
},
scales:{
x:{
type:'time',
time:{unit:'second',displayFormats:{second:'HH:mm:ss'}},
grid:{color:'#2e2e2f',drawBorder:false},
ticks:{color:'#9fa1a4',maxTicksLimit:10}
},
y:{
min:0,
max:100,
grid:{color:'#2e2e2f',drawBorder:false},
ticks:{color:'#9fa1a4',callback:v=>v+'%'}
}
}
}
});
const cpuChart=new Chart(document.getElementById('cpu-chart'),chartConfig('CPU','#73bf69',cpuData));
const memChart=new Chart(document.getElementById('mem-chart'),chartConfig('Memory','#5794f2',memData));
const diskChart=new Chart(document.getElementById('disk-chart'),chartConfig('Disk','#fb7185',diskData));
function u(){
fetch('/m').then(r=>r.json()).then(d=>{
const now=Date.now();
timestamps.push(now);
cpuData.push({x:now,y:d.cpu});
memData.push({x:now,y:d.mem});
diskData.push({x:now,y:d.disk});
if(timestamps.length>maxPoints){
timestamps.shift();
cpuData.shift();
memData.shift();
diskData.shift();
}
document.getElementById('cpu-val').textContent=d.cpu.toFixed(1)+'%';
document.getElementById('mem-val').textContent=d.mem.toFixed(1)+'%';
document.getElementById('disk-val').textContent=d.disk.toFixed(1)+'%';
document.getElementById('temp').textContent=d.temp;
document.getElementById('ip').textContent=d.ip;
document.getElementById('up').textContent=d.up;
const timeStr=new Date().toLocaleTimeString();
document.getElementById('time').textContent=timeStr;
cpuChart.update('none');
memChart.update('none');
diskChart.update('none');
})}
u();setInterval(u,2000);
</script>
</body></html>"""

if __name__ == '__main__':
    port = 8000
    sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    sock.connect(("8.8.8.8", 80))
    ip = sock.getsockname()[0]
    sock.close()
    print(f"Starting on port {port}...")
    print(f"Open: http://{ip}:{port}")
    HTTPServer(('', port), H).serve_forever()