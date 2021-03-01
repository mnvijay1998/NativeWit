//
//  ProfileView.swift
//  NativeWit Task
//
//  Created by Vijay MN on 3/1/21.
//

import SwiftUI


struct ProfileView: View {
    var body: some View {
        
        NavigationView{
         
            ZStack{
                
                Color( red: 229.0/255.0, green: 232.0/255.0, blue: 246.0/255.0)
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    
                    VStack{
                       Color(.white)
                            .edgesIgnoringSafeArea(.all)
                        ProfileHira()
                        Text("Hira Riaz")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(loginButtonColorViolet)
                            .multilineTextAlignment(.center)
                        Text("UX/UI Designer")
                            .font(.callout)
                            .fontWeight(.light)
                            .foregroundColor(loginButtonColorViolet)
                            .multilineTextAlignment(.center)
                        Spacer()
                        HStack{
                            
                            VStack{
                                Amount(amount: "$8900")
                                AmountType(amountType: "Income")
                            }
                            .padding(.all)
                            Divider()
                            VStack{
                                Amount(amount: "$5500")
                                AmountType(amountType: "Expenses")
                            }
                            .padding(.all)
                            Divider()
                            VStack{
                                Amount(amount: "$890")
                                AmountType(amountType: "Loan")
                            }
                            
                           .padding(.all)
                        }
                       
                        
                    }
                    .background(Color.white)
                    .cornerRadius(20)
                    .padding(.all)
                    Spacer()
                    
                    HStack{
                        Text("Overview")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(loginButtonColorViolet)
                            .multilineTextAlignment(.leading)
                        Image(systemName: "bell.badge")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .padding(.bottom,0)
                        Spacer()
                        Text("Sept 13, 2020")
                            .font(.body)
                            .fontWeight(.semibold)
                            .foregroundColor(loginButtonColorViolet)
                            .padding(.all)

                    }
                    .padding(.all)
                    Spacer()
                    
                    VStack{
                        Transactions(logoName: "arrow.up", statusType: "Sent", description: "Sending Payments to Clients", amount: "$150")
                        Transactions(logoName: "arrow.down", statusType: "Receive", description: "Receiving Salary from Company", amount: "$250")
                        Transactions(logoName: "dollarsign.square", statusType: "Loan", description: "Loan for the Car", amount: "$400")
                    }
                    .padding(.all)
                    
                    /*List {
                        Transactions(logoName: "arrow.up", statusType: "Sent", description: "Sending Payments to Clients", amount: "$150")
                        Transactions(logoName: "arrow.down", statusType: "Receive", description: "Receiving Salary from Company", amount: "$250")
                        Transactions(logoName: "dollarsign.square", statusType: "Loan", description: "Loan for the Car", amount: "$400")
                    }*/
                    Spacer()
                    HStack{
                        NavigationLink(destination: TransactionsView().navigationBarHidden(true)){
                    
                            TabButtonContent(buttonName: "house")
                        }.foregroundColor(Color.gray)
                        Spacer()
                        NavigationLink(destination: TransactionsView().navigationBarHidden(true)){
                    
                            TabButtonContent(buttonName: "creditcard")
                        }.foregroundColor(Color.gray)
                        Spacer()
                        NavigationLink(destination: TransactionsView().navigationBarHidden(true)){
                    
                            TabButtonContent(buttonName: "plus.app.fill")
                                .padding(.all)
                                .frame(width: 50, height: 50)
                                
                        }
                       .foregroundColor(Color( red: 63/255.0 , green: 71/255.0 , blue: 129/255.0))

                        .cornerRadius(10)
                        Spacer()
                        NavigationLink(destination: TransactionsView().navigationBarHidden(true)){
                    
                            TabButtonContent(buttonName: "dollarsign.square")
                                
                        }.foregroundColor(Color.gray)
                        
                        Spacer()
                        NavigationLink(destination: TransactionsView().navigationBarHidden(true)){
                    
                            TabButtonContent(buttonName: "person.crop.circle")
                        }.foregroundColor(Color.gray)
                        

                    }
                    .padding(.all)
                }
                
            

            }
        }
        
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()

    }
}

struct ProfileHira: View {
    var body: some View {
        Image("ProfileHira")
            .resizable()
            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
            .frame(width: 150, height: 150)
            .clipped()
            .cornerRadius(150)
            .padding(.bottom,5)
        
    }
}

struct Amount: View {
    var amount: String
    var body: some View {
        Text(amount)
            .font(.title3)
            .fontWeight(.medium)
            .foregroundColor(loginButtonColorViolet)
    }
}

struct AmountType: View {
    var amountType: String
    var body: some View {
        Text(amountType)
            .font(.body)
            .fontWeight(.light)
            .foregroundColor(loginButtonColorViolet)
    }
}

struct Transactions: View {
    var logoName: String
    var statusType: String
    var description: String
    var amount: String
    var body: some View {
        VStack{
            HStack{
                Image(systemName: logoName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 20, height: 20)
                    .padding(.all)
                    .background(Color( red: 229.0/255.0, green: 232.0/255.0, blue: 246.0/255.0))
                    .cornerRadius(20)
                VStack{
                    HStack{
                        Text(statusType)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundColor(.black)
                        Spacer()
                    }
                    HStack{
                        Text(description)
                            .font(.body)
                            .fontWeight(.light)
                            .foregroundColor(Color.gray)
                        Spacer()
                        Text(amount)
                            .font(.body)
                            .fontWeight(.medium)
                            .foregroundColor(Color.black)
                        
                    }
                }
                
                
            }.padding(.all)
        }.background(Color.white)
        .cornerRadius(20)

    }
}

struct TabButtonContent: View {
    var buttonName: String
    var body: some View {
        
        Image(systemName: buttonName)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 30, height: 30)
            .padding(.bottom,5)

    }
}
