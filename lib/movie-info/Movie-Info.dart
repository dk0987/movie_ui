import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MovieInfo extends StatelessWidget {
  const MovieInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screen = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor:  const Color(0xff1f1c2a),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: screen.height / (100 / 70),
            floating: false,
            pinned: true,
            flexibleSpace:  FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset("lib/assets/image/boruto.webp" , fit: BoxFit.fitHeight ),
                  Opacity(
                    opacity: 0.5 ,
                    child: Container(
                      decoration: const BoxDecoration(
                        color:  Color(0xff1f1c2a)
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Colors.transparent , Color(0xff1f1c2a)],
                        )
                    ),
                  ),
                  //Main Content Container
                  SafeArea(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(padding: EdgeInsets.only(top: 0)),
                        const Text(
                          "Boruto 2-Blue Vortex" ,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                          fontWeight: FontWeight.w400 ,
                          fontSize: 16,
                          color: Color(0xfffaf9fa)),
                          textAlign: TextAlign.center,
                        ),
                        Container(
                          width: screen.width / (100 / 60),
                          height: screen.height / (100 / 40),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child : ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.asset("lib/assets/image/boruto.webp" , fit: BoxFit.fitHeight ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 45 ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                      width: 15,
                                      height: 15,
                                      child : SvgPicture.asset("lib/assets/icons/calendar-svgrepo-com.svg" , color: const Color(0xff95929e))
                                  ),
                                  Padding(padding: EdgeInsets.all(5)),
                                  const Text("2021" ,
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xff95929e),
                                        fontWeight: FontWeight.w300
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                width: 2,
                                height: 20,
                                decoration: const BoxDecoration(
                                    color: Color(0xff95929e)
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                      width: 15,
                                      height: 15,
                                      child : SvgPicture.asset("lib/assets/icons/clock-three-svgrepo-com.svg" , color: Color(0xff95929e),fit: BoxFit.scaleDown)
                                  ),
                                  Padding(padding: EdgeInsets.all(5)),

                                  const Text("128 minutes" ,
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xff95929e),
                                        fontWeight: FontWeight.w300
                                    ),
                                  ),

                                ],
                              ),
                              Container(
                                width: 2,
                                height: 20,
                                decoration: const BoxDecoration(
                                    color: Color(0xff95929e)
                                ),
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                      width: 15,
                                      height: 15,
                                      child : SvgPicture.asset("lib/assets/icons/movie-svgrepo-com.svg" , color: const Color(0xff95929e),fit: BoxFit.scaleDown)
                                  ),
                                  Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                                  const Text("2021" ,
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xff95929e),
                                        fontWeight: FontWeight.w300
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 20,
                              height: 20,
                              child: SvgPicture.asset("lib/assets/icons/star-svgrepo-com.svg" , fit: BoxFit.cover, color: Color(0xffff8400),),
                            ),
                            Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                            const Text("4.5" ,
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xffff8400),
                                  fontWeight: FontWeight.w400
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () => {},
                              child: Container(
                                width: screen.width / (100 / 35),
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Color(0xffff8400),
                                  borderRadius: BorderRadius.circular(30)
                                )  ,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 30,
                                      height: 30,
                                      child: SvgPicture.asset("lib/assets/icons/play-svgrepo-com.svg" , color: Color(0xfffffcf5), fit: BoxFit.cover,),
                                    ),
                                    Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                                    const Text("Play" ,
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Color(0xfffffcf5),
                                          fontWeight: FontWeight.w300
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Color(0xff1d2834)
                              ),
                              child: Align(
                                alignment: Alignment.center,
                                child:SvgPicture.asset("lib/assets/icons/download-minimalistic-svgrepo-com.svg" , color: Color(0xffff8400), fit: BoxFit.cover) ,
                              ),
                            ),
                            Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Color(0xff1d2834)
                              ),
                              child: Align(
                                alignment: Alignment.center,
                                child:SvgPicture.asset("lib/assets/icons/share-1-svgrepo-com.svg" , color: Color(0xff28d0d7), fit: BoxFit.cover , ) ,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            leading: Container(
                width: 15,
                height: 15,
                padding: const EdgeInsets.all(10),
                child : SvgPicture.asset("lib/assets/icons/back.svg" , color: Color(0xfffaf9fa),fit: BoxFit.scaleDown)
            ),
            actions: [
              Container(
                  width: 25,
                  height: 25,
                  margin: const EdgeInsets.only(right: 20),
                  child : SvgPicture.asset("lib/assets/icons/heart-svgrepo-com (1).svg" , color: Color(0xfff84548),fit: BoxFit.scaleDown)
              )
            ],
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20 , vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Story line" ,
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xfffffcf5),
                        fontWeight: FontWeight.w500
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text : "Boruto: Two Blue Vortex is the name of the second part of the Boruto manga. This can be considered similar to how the second part of the Naruto anime was named Naruto Shippuden. In Boruto: Two Blue Vortex, fans are likely going to see all their characters return after the 4-year time skip. Usually, shonen manga often witness short timeskips, and this is prevalent across almost all the stories, however, in Boruto, the timeskip is actually quite big. Boruto returns to Konoha as a 16-year-old, which means that the timeskip is going to be 4 years long, giving Boruto, as well as other members of the next generation of ninjas, time to mature and evolve into fantastic Shinobi, worthy of protecting their village.",
                          style: TextStyle(
                              fontSize: 14,
                              color: Color(0xfffffcf5),
                              fontWeight: FontWeight.w300,
                             overflow: TextOverflow.fade,
                          ),
                        ),
                        TextSpan(
                          text: "More",
                          style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff28d0d7),
                              fontWeight: FontWeight.w500
                          ),
                        )
                      ]
                    ),
                    ),
                ],
              ),
          )

          )
        ],
      )
    );
  }
}
