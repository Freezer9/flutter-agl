import 'package:new_virtual_keyboard/virtual_keyboard.dart';
import 'package:flutter_ics_homescreen/export.dart';

class NewProfilePage extends ConsumerStatefulWidget {
  const NewProfilePage({super.key});

  static Page<void> page() => const MaterialPage<void>(child: NewProfilePage());

  @override
  NewProfilePageState createState() => NewProfilePageState();
}

class NewProfilePageState extends ConsumerState<NewProfilePage> {
  final _controller = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool shiftEnabled = false;

  int chars = 0;
  @override
  void initState() {
    super.initState();
  }

  _onKeyPress(VirtualKeyboardKey key) {
    String text = _controller.text;
    if (key.keyType == VirtualKeyboardKeyType.String) {
      text = text + (shiftEnabled ? key.capsText : key.text)!;
    } else if (key.keyType == VirtualKeyboardKeyType.Action) {
      switch (key.action) {
        case VirtualKeyboardKeyAction.Backspace:
          if (text.isEmpty) return;
          text = text.substring(0, text.length - 1);
          break;
        case VirtualKeyboardKeyAction.Return:
          text = '$text\n';
          break;
        case VirtualKeyboardKeyAction.Space:
          text = text + key.text!;
          break;
        case VirtualKeyboardKeyAction.Shift:
          shiftEnabled = !shiftEnabled;
          break;
        default:
      }
    }

// Update the screen
    if (text.length >= 25) {
      _controller.text = text.substring(0, 25);
    } else {
      _controller.text = text;
    }

    updateMaxChar(_controller.text.length);
  }

  void showKeyboard() {
    var ctx = homeScaffoldKey.currentContext;
    showModalBottomSheet(
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      barrierColor: Colors.transparent,
      context: ctx!,
      builder: (ctx) {
        return Container(
          height: 479,
          width: 1080,
          decoration: const BoxDecoration(
            color: AGLDemoColors.resolutionBlueColor,
            border: Border(
                top: BorderSide(
              color: Color(0xFF295EF7),
              width: 1,
            )),
          ),
          child: VirtualKeyboard(
            height: 478,
            textColor: AGLDemoColors.periwinkleColor,
            fontSize: 40,
            // [A-Z, 0-9]
            type: VirtualKeyboardType.Alphanumeric,
            // Callback for key press event
            onKeyPress: (key) {
              _onKeyPress(key);
            },
          ),
        );
      },
    );
  }

  @override
  void didChangeDependencies() async {
    Future.delayed(const Duration(seconds: 0), () {
      showKeyboard();
    });
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void updateMaxChar(int charsCount) {
    setState(() {
      chars = charsCount;
    });
  }

  void addUser() {
    ref.read(usersProvider.notifier).addUser(_controller.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CommonTitle(
              title: 'New Profile',
              hasBackButton: true,
              onPressed: () {
                context.flow<AppState>().update((state) => AppState.profiles);
              },
            ),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 50, horizontal: 144),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Profile Name',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(fontSize: 40),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          stops: [0, 0.5, 1],
                          colors: <Color>[
                            Colors.black12,
                            Colors.black,
                            Colors.black12
                          ],
                        ),
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 140,
                            padding: const EdgeInsets.only(top: 30),
                            child: TextFormField(
                              onTap: () {
                                showKeyboard();
                              },
                              controller: _controller,
                              autofocus: true,
                              maxLength: 25,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                              //maxLengthEnforcement: MaxLengthEnforcement.none,
                              onChanged: (value) {
                                if (_controller.text.length <= 1) {
                                  if (_formKey.currentState!.validate()) {}
                                  _formKey.currentState!.save();
                                }
                                updateMaxChar(_controller.text.length);
                              },
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                counterText: '',
                              ),
                              textAlign: TextAlign.center,
                              textDirection: TextDirection.rtl,
                              style: const TextStyle(fontSize: 60),
                            ),
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                stops: [0, 0.2, 0.8, 1],
                                colors: <Color>[
                                  Colors.transparent,
                                  AGLDemoColors.neonBlueColor,
                                  AGLDemoColors.neonBlueColor,
                                  Colors.transparent,
                                ],
                              ),
                            ),
                            height: 2,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Text('$chars/25 Characters',
                          style: const TextStyle(fontSize: 26)),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 350.0),
              child: GenericButton(
                height: 130,
                width: 493,
                text: 'Save Profile',
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    addUser();
                    context
                        .flow<AppState>()
                        .update((state) => AppState.profiles);
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 150.0),
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}
