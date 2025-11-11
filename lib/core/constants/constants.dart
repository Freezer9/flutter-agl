import '../../export.dart';

const splashWarning =
    'Please use the IVI system responsibly while driving. Keep your attention on the road, and use voice commands or hands-free controls when interacting with the system. Distracted driving can lead to accidents and serious injury. Follow all traffic laws and drive safely.';
// EV Battery constants (State of Charge 0-100%)
const maxBatteryLevel = 100.0;
const lowBatteryThreshold = 20.0; // Warning threshold
// Speed and RPM constants
const maxSpeed = 240.0;
const maxRpm = 8000;
final GlobalKey<ScaffoldState> homeScaffoldKey = GlobalKey();
const debugDisplay = bool.fromEnvironment('DEBUG_DISPLAY');
const disableBkgAnimationDefault =
    bool.fromEnvironment('DISABLE_BKG_ANIMATION');
const randomHybridAnimationDefault =
    bool.fromEnvironment('RANDOM_HYBRID_ANIMATION');
const enableVoiceAssistantDefault =
    bool.fromEnvironment('ENABLE_VOICE_ASSISTANT');
