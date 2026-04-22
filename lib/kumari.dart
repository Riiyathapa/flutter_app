import 'package:flutter/material.dart';

class KumariBank extends StatelessWidget {
  const KumariBank({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Color(0xff038db8),
            ),
            Image.asset(
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
              "assets/images/kumari.jpg",    
            ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: SingleChildScrollView(
               child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: 70,
                        width: 70,
                        child: Image.asset(
                         
                          "assets/images/klogo.png",fit: BoxFit.cover,
                        ),
                      ),
                      Spacer(),
                     Icon(Icons.search,size: 35,color: Colors.white,),
                     Icon(Icons.image,size: 35,color: Colors.white,),
                     Icon(
                      Icons.notifications_none,color: Colors.white,size: 35,
                     ),    
                          ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.white,
                            width: 2,
                          )
                        ),
                        child:CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 27,
                        child: Text(" RT",style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),),
                        ),               
                      ),
                      SizedBox(width: 20,),
                      Text("Good Afternoon, \n RIYA",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Colors.white),),
                    ],
                  ),
                SizedBox(height: 20,),
                 Padding(
                   padding:  EdgeInsets.only(bottom: 10),
                   child: Container(
                    color: Colors.white,
                    height: 115,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                         Row(
                           children: [
                             Icon(Icons.wallet_sharp,size: 14,),
                             SizedBox(width: 5,),
                             Text("XXXXX XXXXX XXXX ",style: TextStyle(fontSize: 15),),   
                           ],
                         ),
                         SizedBox(height: 7,),
                         Row(
                               children: [
                                 Text("XXXXXXXXX",style: TextStyle(fontSize: 18,fontWeight: FontWeight.normal),),
                               ],
                             ),
                             SizedBox(height: 15,),
                             Row(
                               children: [
                                 Text("XXX",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),
                                 SizedBox(width: 4,),
                                 Text("XXX.XX",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                 SizedBox(width: 6,),
                                 Icon(Icons.remove_red_eye_outlined,color: Colors.blue,size: 19,)
                               ],
                             )
                        ],
                      ),
                    ),
                 ),
                 ),
                 Padding(
                   padding:  EdgeInsets.only(bottom: 10),
                   child: Container(
                    color: Colors.white,
                   height: 200,
                   width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("My Section",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                              Spacer(),
                              Text("View All",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                              SizedBox(width: 14,),
                              Icon(Icons.arrow_forward_ios,size: 20,fontWeight: FontWeight.bold,),
                            ],
                          ),
                          SizedBox(height: 20,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(children: [
                       Container(
                          padding: EdgeInsets.all(10),
                   decoration: BoxDecoration(
                     color: Colors.grey.shade200,
                       borderRadius: BorderRadius.circular(10),
                  ),
                        child: Icon(Icons.account_circle,size: 30,)),
                       SizedBox(height: 14),
                       Text("My Accounts",style: TextStyle(fontSize: 12),),
                      ],),
                    
                      Column(children: [
                        Container(
                         padding: EdgeInsets.all(10),
                   decoration: BoxDecoration(
                     color: Colors.grey.shade200,
                       borderRadius: BorderRadius.circular(10),
                    ),
                          child: Icon(Icons.send,size: 30,)),
                          SizedBox(height: 14,),
                          Text("Send Money",style: TextStyle(fontSize: 12),),
                      ],),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                        Container(
                           padding: EdgeInsets.all(10),
                   decoration: BoxDecoration(
                     color: Colors.grey.shade200,
                       borderRadius: BorderRadius.circular(10),
                        ),
                          child: Icon(Icons.history,size: 30,),),
                        SizedBox(height: 12),
                        Text("Payment \n history",textAlign: TextAlign.center,style: TextStyle(fontSize: 12),),
                        
                      ],),
                      Column(
                              children: [
                               Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Icon(Icons.payment, size: 30),
                          ),
                          SizedBox(height: 14),
                          Text("Payments ", style: TextStyle(fontSize: 12)),
                          
                        ],
                      ),
                  
                    ],
                  )
                        ],
                      ),
                    ),         
                   ),
                 ),
                 Padding(
                   padding:  EdgeInsets.only(bottom: 10),
                   child: Container(
                    color: Colors.white,
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Account Services",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                Spacer(),
                                Text("View All",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                SizedBox(width: 14,),
                                Icon(Icons.arrow_forward_ios,size: 20,fontWeight: FontWeight.bold,),
                              ],
                            ),
                          ),
                          SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(children: [
                       Container(
                          padding: EdgeInsets.all(10),
                   decoration: BoxDecoration(
                     color: Colors.grey.shade200,
                       borderRadius: BorderRadius.circular(10),
                  ),
                        child: Icon(Icons.savings,size: 30,)),
                       SizedBox(height: 14),
                       Text("Cash\nDeposit",style: TextStyle(fontSize: 12),),
                      ],),
                    
                      Column(children: [
                        Container(
                         padding: EdgeInsets.all(10),
                   decoration: BoxDecoration(
                     color: Colors.grey.shade200,
                       borderRadius: BorderRadius.circular(10),
                    ),
                          child: Icon(Icons.account_balance,size: 30,)),
                          SizedBox(height: 14,),
                          Text("Loan\n Against FD",textAlign:TextAlign.center,style:  TextStyle(fontSize: 12),),
                      ],),
                      Column(children: [
                        Container(
                           padding: EdgeInsets.all(10),
                   decoration: BoxDecoration(
                     color: Colors.grey.shade200,
                       borderRadius: BorderRadius.circular(10),
                        ),
                          child: Icon(Icons.trending_up,size: 30,),),
                        SizedBox(height: 12),
                        Text("FD Loan \nEnhancement",textAlign: TextAlign.center,style: TextStyle(fontSize: 12),),
                        
                      ],),
                      Column(
                              children: [
                               Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Icon(Icons.handshake, size: 30),
                          ),
                          SizedBox(height: 14),
                          Text("FD Loan\nSettlememt", style: TextStyle(fontSize: 12)),
                        ],
                      ),
                  ],       
               ),
                        ],
                    ),
             )
           ),
             Padding(
                   padding:  EdgeInsets.only(bottom: 10),
                   child: Container(
                    color: Colors.white,
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Banking Services",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                Spacer(),
                                Text("View All",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                SizedBox(width: 14,),
                                Icon(Icons.arrow_forward_ios,size: 20,fontWeight: FontWeight.bold,),
                              ],
                            ),
                          ),
                          SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(children: [
                       Container(
                          padding: EdgeInsets.all(10),
                   decoration: BoxDecoration(
                     color: Colors.grey.shade200,
                       borderRadius: BorderRadius.circular(10),
                  ),
                        child: Icon(Icons.savings,size: 30,)),
                       SizedBox(height: 14),
                     
                      ],),
                    
                      Column(children: [
                        Container(
                         padding: EdgeInsets.all(10),
                   decoration: BoxDecoration(
                     color: Colors.grey.shade200,
                       borderRadius: BorderRadius.circular(10),
                    ),
                          child: Icon(Icons.account_balance,size: 30,)),
                          SizedBox(height: 14,),
                         
                      ],),
                      Column(children: [
                        Container(
                           padding: EdgeInsets.all(10),
                   decoration: BoxDecoration(
                     color: Colors.grey.shade200,
                       borderRadius: BorderRadius.circular(10),
                        ),
                          child: Icon(Icons.trending_up,size: 30,),),
                        SizedBox(height: 12),               
                         ],),
                      Column(
                              children: [
                               Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Icon(Icons.handshake, size: 30),
                          ),
                          SizedBox(height: 14),
                          
                        ],
                      ), 
                    ],
                  ),
          ],
        ),
      ),
           )
               
          ],
        ),
      ),
           ),
          ],
        )
      ),
    );
      
  }
}