import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              //Image Container//
              Container(
                margin: const EdgeInsets.only(top: 30),
                alignment: Alignment.center,
                child: ClipRRect(
                  child: Image.asset(
                    'assets/images/karunalogo.png',
                    height: 220,
                    width: 220,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              //End of Image Container//
              const SizedBox(height: 30),
              //Please enter the details below to continue ...Container//
              Container(
                  margin: const EdgeInsets.only(top: 5, bottom: 10),
                  alignment: Alignment.center,
                  child: Text('Please enter the details below to continue',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.questrial(
                        textStyle: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ))),
              //End of Container 'Please enter details below to continue'.

              //Text Form Fields//
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Column(
                  children: [
                    //Container for 'Enter phone number'//
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10,),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey.shade800,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                            hintText: 'Enter phone number',
                            border: InputBorder.none,
                            hintStyle: TextStyle(
                              fontSize: 13,
                              color: Colors.grey,
                            )),
                      ),
                    ),
                    //End of Container "Enter phone number"//

                    const SizedBox(
                      height: 30,
                    ),

                    //Container for Password//
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey.shade800,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                            hintText: 'Pick a strog password',
                            border: InputBorder.none,
                            hintStyle: TextStyle(
                              fontSize: 13,
                              color: Colors.grey,
                            )),
                      ),
                    ),
                    //End of Container for Password//

                    const SizedBox(height: 20),

                  ],
                ),
              ),
              //End of all the FormFields//

              const SizedBox(
                height: 50,
              ),

              //Container for Log In button//
              Container(
                padding: const EdgeInsets.only(top: 10),
                height: 50,
                width: MediaQuery.of(context).size.width - 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                ),
                child: Text('Sign Up',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.questrial(
                        textStyle: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ))),
              ),
              //End of Log In button container//

              const SizedBox(
                height: 50,
              ),

              //Container for "Don't have an account"//  
              SizedBox(
                height: 30,
                width: MediaQuery.of(context).size.width - 60,
                child: Text(
                  "Already have an account?",
                  textAlign: TextAlign.start,
                  style: GoogleFonts.questrial(
                      textStyle: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  )),
                ),
              ),
              //End of Container//

              //Container for Create account Button//
              InkWell(
                onTap: () {
                  
                },
                child: Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  padding: const EdgeInsets.only(top: 15,),
                  height: 50,
                  width: MediaQuery.of(context).size.width - 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade800,
                  ),
                  child: Text('Log In',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.questrial(
                          textStyle: const TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ))),
                ),
              ),
              //End of Container//
            ],
          ),
        ));
  }
}
