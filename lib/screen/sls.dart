import 'package:flutter/material.dart';

class AboutSLS extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Welcome To SLS'),

        leading:
        IconButton( onPressed: (){
          Navigator.pop(context);
        },icon:Icon(Icons.arrow_back_ios,size: 20,color: Colors.white,)),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text (''),
                        Text ('Student Learning Support (SLS) endeavours to provide a comprehensive range of services to help USP students take control of their learning.'),
                        Text ('There are SLS staff members located in 10 of USP’s campuses across the region (Kiribati, Labasa, Laucala, Lautoka, Marshall Islands, Samoa, Solomon Islands, Tonga, Tuvalu and Vanuatu).'),
                                ],
                          ),
                  ],
                  ),
              ],

        ),

      ),
      ),
    ),
    );
  }
}



