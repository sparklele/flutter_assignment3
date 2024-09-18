import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.person_2_outlined,
              size: 150,
              color: Colors.purpleAccent,
            ),
            const SizedBox(height: 20,),
            const Text("your profile", style: TextStyle(color: Colors.purpleAccent, fontWeight: FontWeight.bold,fontSize: 40),),
            const SizedBox(height: 20,),
            SizedBox(
              width: 200,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.purpleAccent),
                    onPressed: () {},
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Icon(Icons.edit, color: Colors.white,), Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Expanded(child: Text("Edit profile", style: TextStyle(color: Colors.white),)),
                      )],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}