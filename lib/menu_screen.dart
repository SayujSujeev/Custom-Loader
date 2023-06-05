import 'package:custom_loder/loaders/loader_10.dart';
import 'package:custom_loder/loaders/loader_11.dart';
import 'package:custom_loder/loaders/loader_12.dart';
import 'package:custom_loder/loaders/loader_13.dart';
import 'package:custom_loder/loaders/loader_14.dart';
import 'package:custom_loder/loaders/loader_15.dart';
import 'package:custom_loder/loaders/loader_7.dart';
import 'package:custom_loder/loaders/loader_5.dart';
import 'package:custom_loder/loaders/loader_4.dart';
import 'package:custom_loder/loaders/loader_6.dart';
import 'package:custom_loder/loaders/loader_2.dart';
import 'package:custom_loder/loaders/loader_3.dart';
import 'package:custom_loder/loaders/loader_1.dart';
import 'package:custom_loder/loaders/loader_8.dart';
import 'package:custom_loder/loaders/loader_9.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_) => const Loader1(),),);
                  },
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: const Center(
                      child: Text('Loader 1',style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),),
                    ),
                  ),
                ),
                const SizedBox(height: 20,),

                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_) => const Loader2(),),);
                  },
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: const Center(
                      child: Text('Loader 2',style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),),
                    ),
                  ),
                ),
                const SizedBox(height: 20,),

                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_) => const Loader3(),),);
                  },
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: const Center(
                      child: Text('Loader 3',style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),),
                    ),
                  ),
                ),
                const SizedBox(height: 20,),

                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_) => const Loader4(),),);
                  },
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: const Center(
                      child: Text('Loader 4',style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),),
                    ),
                  ),
                ),
                const SizedBox(height: 20,),

                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_) => const Loader5(),),);
                  },
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: const Center(
                      child: Text('Loader 5',style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),),
                    ),
                  ),
                ),
                const SizedBox(height: 20,),

                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_) => const Loader6(),),);
                  },
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: const Center(
                      child: Text('Loader 6',style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),),
                    ),
                  ),
                ),
                const SizedBox(height: 20,),

                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_) => const Loader7(),),);
                  },
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: const Center(
                      child: Text('Loader 7',style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),),
                    ),
                  ),
                ),
                const SizedBox(height: 20,),

                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_) => const Loader8(),),);
                  },
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: const Center(
                      child: Text('Loader 8',style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),),
                    ),
                  ),
                ),
                const SizedBox(height: 20,),

                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_) => const Loader9(),),);
                  },
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: const Center(
                      child: Text('Loader 9',style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),),
                    ),
                  ),
                ),
                const SizedBox(height: 20,),

                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_) => const Loader10(),),);
                  },
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: const Center(
                      child: Text('Loader 10',style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),),
                    ),
                  ),
                ),
                const SizedBox(height: 20,),

                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_) => const Loader11(),),);
                  },
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: const Center(
                      child: Text('Loader 11',style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),),
                    ),
                  ),
                ),
                const SizedBox(height: 20,),

                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_) => const Loader12(),),);
                  },
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: const Center(
                      child: Text('Loader 12',style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),),
                    ),
                  ),
                ),
                const SizedBox(height: 20,),

                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_) => const Loader13(),),);
                  },
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: const Center(
                      child: Text('Loader 13',style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),),
                    ),
                  ),
                ),
                const SizedBox(height: 20,),

                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_) => const Loader14(),),);
                  },
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: const Center(
                      child: Text('Loader 14',style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),),
                    ),
                  ),
                ),
                const SizedBox(height: 20,),

                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_) => const Loader15(),),);
                  },
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: const Center(
                      child: Text('Loader 15',style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),),
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
