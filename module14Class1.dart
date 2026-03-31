import 'package:flutter/material.dart';

class Module14class1 extends StatefulWidget {
  const Module14class1({super.key});

  @override
  State<Module14class1> createState() => _Module14class1State();
}

class _Module14class1State extends State<Module14class1>
    with SingleTickerProviderStateMixin {
    late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6FA),

      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   elevation: 0,
      //   title: const Text(
      //     "Custom TabBar",
      //     style: TextStyle(
      //       color: Colors.black,
      //       fontWeight: FontWeight.bold,
      //     ),
      //   ),
      //   centerTitle: true,
      // ),


      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("Custom tabbar",
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold
        ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [

          SizedBox(height: 100,),
          Container(
            margin: const EdgeInsets.all(16),
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(30),
            ),

            child: TabBar(
              controller: _tabController,
              labelColor: Colors.blueAccent,
              unselectedLabelColor: Colors.black,
              labelStyle: const TextStyle(fontWeight: FontWeight.bold,fontSize: 15),

              tabs: const [
                Tab(text: "Home"),
                Tab(text: "Profile"),
                Tab(text: "Setting"),
              ],
            ),
          ),

          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                Center(
                  child: Text(
                    "Home View",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                  ),
                ),
                Center(
                  child: Text(
                    "Profile View",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                  ),
                ),
                Center(
                  child: Text(
                    "Setting View",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
