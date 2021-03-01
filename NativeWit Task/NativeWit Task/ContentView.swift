//
//  ContentView.swift
//  NativeWit Task
//
//  Created by Vijay MN on 3/1/21.
//

import SwiftUI

let pureWhiteColor = Color( red: 255.0/255.0 , green: 255.0/255.0 , blue: 255.0/255.0)
let loginButtonColorViolet = Color( red: 63/255.0 , green: 71/255.0 , blue: 129/255.0)
let appBackgroundColor = Color( red: 244/255.0 , green: 248/255.0 , blue: 253.0/255.0)

var storedUsername = "vj@nativewit.com"
var storedPassword = "Nativewit"


struct ContentView: View {
    
    @State var username: String = ""
    @State var password: String = ""
    @State var authenticationDidFail : Bool = false
    @State var authenticationDidSucceed : Bool = false

    var body: some View {
        
        NavigationView{
            
            
            ZStack{
                Color( red: 244.0/255.0, green: 248.0/255.0, blue: 253.0/255.0)
                    .edgesIgnoringSafeArea(.all)
            VStack{
                Loginlogo()
                VStack{
                    HStack{
                        Text("Email Address")
                            .foregroundColor(/*@START_MENU_TOKEN@*/.gray/*@END_MENU_TOKEN@*/)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                         Spacer()

                    }.padding(.all)
                    HStack {
                        Image(systemName: "envelope")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 25, height: 25)
                        Spacer()
                        UsernameTextField(username: $username)
                        
                    }.padding(.all)
                    
                }
                .background(Color.white)
                .cornerRadius(20)
                .position(x: 200, y: 50)
                
                VStack{
                    HStack{
                        Text("Password")
                            .foregroundColor(/*@START_MENU_TOKEN@*/.gray/*@END_MENU_TOKEN@*/)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                         Spacer()

                    }.padding(.all)
                    HStack {
                        Image(systemName: "lock")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 25, height: 25)
                        Spacer()
                        PasswordSecureField(password: $password)
                        Image(systemName: "eye")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 25, height: 25)
                        
                    }.padding(.all)
                    
                }
                .background(Color.white)
                .cornerRadius(20)
                .position(x: 200, y: 90)
                
                
                
                if authenticationDidFail{
                    Text("Information Not Correct. Try Again!")
                        .offset(y: -10)
                        .foregroundColor(.red)
                }
                if authenticationDidSucceed{
                    Text("Login Successful!")
                        .offset(y: -10)
                        .foregroundColor(.green)
                }
                
                NavigationLink(destination: ProfileView().navigationBarHidden(true)){
            
                    LoginButtonContent()
                    
                    /*Button(action: {
                        if self.username == storedUsername && self.password == storedPassword{
                            self.authenticationDidSucceed = true
                            self.authenticationDidFail = false
                           
                        }
                        else{
                            self.authenticationDidFail = true
                            self.authenticationDidSucceed = false
                        }
                    }){
                        LoginButtonContent()
                    
                        //ProfileView()
                    }*/

                }
                HStack{
                    NavigationLink(destination: Text("Your Credentials will be shared shortly.")){
                        Text("Signup")
                            .foregroundColor(Color.gray)
                            .padding(.all)
                    }
                
                    Spacer()
                    NavigationLink(destination: Text("A passowrd reset link has been sent to your mail id.")){
                        Text("Forgot Password?")
                            .foregroundColor(Color.gray)
                            .padding(.all)
                
                    }
                }.position(x: 200, y: 0)
                    
            }
            
                .padding()
            }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Loginlogo: View {
    var body: some View {
        Image("Loginlogo")
            .resizable()
            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
            .frame(width: 150, height: 150)
            .clipped()
            .cornerRadius(150)
            .padding(.bottom,75)
            .position(.init(x: 200, y: 50))
    }
}

struct LoginButtonContent: View {
    var body: some View {
        Text("Login")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 400, height:60)
            .background(loginButtonColorViolet)
            .cornerRadius(35.0)
            .position(x: 200, y: 80)
    }
}

struct UsernameTextField: View {
    @Binding var username: String
    var body: some View {
        TextField("Email Address", text: $username)
            //.textFieldStyle(RoundedBorderTextFieldStyle())
            .padding()
            .background(pureWhiteColor)
            .cornerRadius(10.0)
           //.padding(.bottom, 20)
    }
}

struct PasswordSecureField: View {
    @Binding var password: String
    var body: some View {
        SecureField("Password", text: $password)
            //.textFieldStyle(RoundedBorderTextFieldStyle())
            .padding()
            .background(pureWhiteColor)
            .cornerRadius(10.0)
            //.padding(.bottom, 20)
    }
}





