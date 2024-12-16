import '../../../../../../data/models/user.dart';
import '../../../../../../export.dart';

class ProfilesContent extends ConsumerStatefulWidget {
  const ProfilesContent({super.key});

  @override
  ProfilesContentState createState() => ProfilesContentState();
}

class ProfilesContentState extends ConsumerState<ProfilesContent> {
  late User currentUser;

  void setCurrentUser(String userId) {
    setState(() {
      ref.read(usersProvider.notifier).selectUser(userId);
    });
  }

  void removeUser(String userId) {
    setState(() {
      ref.read(usersProvider.notifier).removeUser(userId);
    });
  }

  @override
  Widget build(BuildContext context) {
    var users = ref.watch(usersProvider.select((users) => users));
    final currentUser = users.selectedUser;
    final usersList = users.users;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CommonTitle(
          title: "Profiles",
          hasBackButton: true,
          onPressed: () {
            ref.read(appProvider.notifier).back();
          },
        ),
        Expanded(
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 144),
            itemCount: usersList.length,
            separatorBuilder: (context, index) {
              return const SizedBox(
                height: 8,
              );
            },
            itemBuilder: (context, index) {
              return Container(
                height: 130,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      stops: currentUser == usersList[index]
                          ? [0, 0.01, 0.8]
                          : [0.1, 1],
                      colors: currentUser == usersList[index]
                          ? <Color>[
                              Colors.white,
                              Colors.blue,
                              const Color.fromARGB(16, 41, 98, 255)
                            ]
                          : <Color>[Colors.black, Colors.black12]),
                ),
                child: ListTile(
                  minVerticalPadding: 0.0,
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 40.0),
                  leading: Text(users.users[index].name,
                      style: const TextStyle(fontSize: 40)),
                  //title: Text(widget.title),
                  //enabled: isSwitchOn,
                  trailing: IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      removeUser(users.users[index].id);
                    },
                    icon: const Icon(
                      Icons.close,
                      color: AGLDemoColors.periwinkleColor,
                      size: 48,
                    ),
                  ),

                  onTap: () {
                    setCurrentUser(usersList[index].id);
                  },
                ),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 150.0),
          child: Column(
            children: [
              GenericButton(
                height: 122,
                width: 317,
                text: 'New Profile',
                onTap: () {
                  context
                      .flow<AppState>()
                      .update((state) => AppState.newProfile);
                },
              ),
           
              const SizedBox(height: 20),
              GenericButton(
                height: 122,
                width: 412,
                text: 'Reset to Default',
                onTap: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}

