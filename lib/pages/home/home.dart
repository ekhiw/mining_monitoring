import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getwidget/getwidget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_monitoring/pages/home/message_dialog.dart';
import 'package:tailwind_colors/tailwind_colors.dart';

import '../../constants/strings.dart';
import '../../di/providers/chat_provider.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  Widget _BackgroundWidget() {
    return SizedBox.expand(
      child: Image.network(
        'https://picsum.photos/200/300',
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _RightDrawerWidget() {
    return Drawer(
      width: 200,
      backgroundColor: Colors.black.withOpacity(0.3),
      child: ListView.separated(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          if (index == 0) {
            return ListTile(
              tileColor: Colors.grey[800],
              leading: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
              title: const Text(
                'Choose Activity',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            );
          } else {
            final activities = [
              'Idle',
              'Hauling',
              'Loading',
              'Hanging',
              'Dumping',
              'Queuing',
              'Maintenance'
            ];
            return ListTile(
              textColor: Colors.white,
              title: Text(activities[index - 1].toUpperCase()),
            );
          }
        },
        separatorBuilder: (context, index) => const Divider(
          color: Colors.black,
          height: 0.5,
        ),
        itemCount: 8,
      ),
    );
  }

  Widget _LeftIndicator() {

    return SizedBox(
      width: 250,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
            ),
            color: TW3Colors.red,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  color: Colors.black,
                  padding: const EdgeInsets.all(16),
                  width: 100,
                  height: 80,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.speed,
                        color: Colors.white,
                      ),
                      Text("Speed",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 10
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                    child: Container(
                      child: Text(
                        '75\nkm/h',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    )),
                Expanded(
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          child: Text(
                            'Max\n70',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          color: TWColors.blue,
                          child: Text(
                            'Min\n35',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    )
                ),
              ],
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
            ),
            color: TW3Colors.zinc.shade600.withAlpha(127),
            child: Row(
              children: [
                Container(
                  color: Colors.black,
                  padding: const EdgeInsets.all(16),
                  width: 100,
                  child: Column(
                    children: [
                      Icon(Icons.track_changes,
                        color: Colors.white,
                      ),
                      Text("Achievement",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 10
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    spacing: 4,
                    children: [
                      Text(
                        '100/50 ton',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      GFProgressBar(
                        lineHeight: 20,
                        percentage: 0.5,
                        padding: EdgeInsets.zero,
                        backgroundColor : Colors.black26,
                        progressBarColor: TWColors.blue,
                        progressHeadType: GFProgressHeadType.square,
                        child: Text("50%",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
            ),
            color: TW3Colors.zinc.shade600.withAlpha(127),
            child: Row(
              children: [
                Container(
                  color: Colors.black,
                  padding: const EdgeInsets.all(16),
                  width: 100,
                  child: Column(
                    children: [
                      Icon(Icons.diamond,
                        color: Colors.white,
                      ),
                      Text("Material",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 10
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Text(
                    'COALS',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 24
                    ),
                    textAlign: TextAlign.center,

                  ),
                ),
              ],
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
            color: TW3Colors.zinc.shade600.withAlpha(127),
            child: Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
              child: Column(
                children: [
                  Text(
                    'HAULING',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.timer,
                        color: Colors.white,),
                      Text('02:00',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _MachineIndicatorWidget(VoidCallback onClick) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _LeftIndicator(),
          SizedBox(width: 100,),
          Expanded(child: Container(
            height: 80,
            child: _TravelProgress(),
          )),
          SizedBox(width: 100,),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            spacing: 8,
            children: [
              Container(
                width: 150,
                child: GFButton(
                  onPressed: (){

                  },
                  text: "End Activity",
                  color: TW3Colors.amber,
                  size: GFSize.LARGE,
                  shape: GFButtonShape.square,
                ),
              ),
              Container(
                width: 150,
                child: GFButton(
                  onPressed: (){
                    onClick();
                  },
                  text: "Activity",
                  color: Colors.black,
                  size: GFSize.LARGE,
                  shape: GFButtonShape.square,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _TravelProgress() {
    return Card(

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
        child: Row(
          children: [
            Text(
              'DSP-2',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(width: 8),
            Expanded(child: AbsorbPointer(
              absorbing: true,
              child: Slider(
                min: 0.0,
                max: 100.0,
                value: 50,
                activeColor: TWColors.blue,
                onChanged: (value) {

                },
              ),
            )),
            const SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.timer,
                      color: Colors.white,
                    ),
                    Text(
                      '14m 42s',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Text(
                  '1Km to go',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _tabController = useTabController(initialLength: 2);

    final chatState = ref.watch(chatNotifierProvider);

    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    useEffect(() {
      ref.watch(chatNotifierProvider.notifier).initConnection("ws/fms-dev/monitoring/messages/equipments/${Strings.unitId}",(data){
        print("EKHIW CONNECT CALLBACK $data");
        if (!ref.read(chatNotifierProvider).isDialogOpen) {
          showDialog(
            barrierDismissible: false,
            context: context,
            builder: (_) => MessageDialog(),
          );
          ref.read(chatNotifierProvider.notifier).setIsDialogOpen(true);
        }

      });
      _tabController.animateTo(0);
      return null;
    },const []);

    return Stack(
      children: [
        _BackgroundWidget(),
        Scaffold(
          backgroundColor: Colors.transparent,
          drawerScrimColor: Colors.transparent,
          endDrawer: _RightDrawerWidget(),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: screenWidth,
                height: screenHeight * 0.8,
                child:TabBarView(
                    controller: _tabController,
                    children: [
                      Builder(builder: (context) {
                        return _MachineIndicatorWidget(() {
                          Scaffold.of(context).openEndDrawer();
                        });
                      }),
                      Center(child: Text("data"),)
                    ]),
              ),
              const SizedBox(height: 8),
              Container(
                color: Colors.grey.withAlpha(127),
                padding: const EdgeInsets.symmetric(
                    horizontal: 16, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GFButton(
                      onPressed: (){

                      },
                      text: "EMERGENCY",
                      color: TW3Colors.red,
                      size: GFSize.LARGE,
                      shape: GFButtonShape.square,
                    ),
                    GFButton(
                      onPressed: (){

                      },
                      text: "BREAKDOWN",
                      color: TW3Colors.red,
                      size: GFSize.LARGE,
                      shape: GFButtonShape.square,
                    ),
                    Row(
                      spacing: 8,
                      children: [
                        GFIconButton(
                          onPressed: (){},
                          color: Colors.transparent,
                          icon: Icon(Icons.settings,
                            color: Colors.white,
                          ),
                        ),
                        GFIconButton(
                          onPressed: (){},
                          color: Colors.transparent,
                          icon: Icon(Icons.auto_graph_rounded,
                            color: Colors.white,
                          ),
                        ),
                        GFIconButton(
                          onPressed: (){
                            _tabController.animateTo(1);
                          },
                          color: _tabController.index == 1 ?TW3Colors.blue:Colors.transparent,
                          icon: Icon(Icons.email_outlined,
                            color: Colors.white,
                          ),
                        ),
                        GFIconButton(
                          onPressed: (){
                            _tabController.animateTo(0);
                          },
                          color: _tabController.index == 0 ?TW3Colors.blue:Colors.transparent,
                          icon: Icon(Icons.menu_rounded,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )

            ],
          ),
        ),
      ],
    );
  }
}
