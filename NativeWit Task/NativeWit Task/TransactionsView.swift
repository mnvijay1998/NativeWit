//
//  TransactionsView.swift
//  NativeWit Task
//
//  Created by Vijay MN on 3/1/21.
//

import SwiftUI



struct TransactionsView: View {
    var body: some View {
        
        NavigationView{
            
            ZStack{
                Color( red: 244.0/255.0, green: 248.0/255.0, blue: 253.0/255.0)
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    
                    HStack{
                        
                        NavigationLink(destination: ProfileView().navigationBarHidden(true)){
                            Image(systemName: "chevron.backward")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 25, height: 25)
                                .foregroundColor(Color.black)
                           
                        }
                        
                        Spacer()
                        NavigationLink(destination: ProfileView().navigationBarHidden(true)){
                            Image(systemName: "magnifyingglass")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 25, height: 25)
                                .foregroundColor(Color.black)
                           
                        }
                        
                      
                    }
                    Spacer()
                    HStack{
                       
                        Text("Recent Transactions")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(loginButtonColorViolet)
                            .multilineTextAlignment(.leading)
                        Spacer()
                        Text("See all")
                            .font(.body)
                            .fontWeight(.light)
                            .foregroundColor(Color.gray)
                            .multilineTextAlignment(.leading)
                    }
                    
                   // Spacer()
                    HStack{
                        NavigationLink(destination: ProfileView().navigationBarHidden(true)){
                    
                            SmallButtonContent(typedesc: "All")
                        }
                        NavigationLink(destination: ProfileView().navigationBarHidden(true)){
                    
                            SmallWhiteButtonContent(typedesc: "Income")
                        }
                        NavigationLink(destination: ProfileView().navigationBarHidden(true)){
                    
                            SmallWhiteButtonContent(typedesc: "Expense")
                        }
                        
                        
                    
                            
                      
                    
                            
                       
                        Spacer()
                    }
                    
                   // Spacer()
                    HStack{
                        Text("Today")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(loginButtonColorViolet)
                            .multilineTextAlignment(.leading)
                        Spacer()
                    }
                    //Spacer()
                    TransactionsNew(logoName: "envelope.open", statusType: "Payment", description: "Payment from Andrea", amount: "$30.00")
                    Spacer()
                    ProfileTeam()
                    
                    Spacer()
                    
                    NavigationLink(destination: ProfileView().navigationBarHidden(true)){
                
                        SeeDetailsButtonContent()
                    }
                    
                }
                
                .padding(.all)
                
            }
        }
        

    }
}

struct TransactionsView_Previews: PreviewProvider {
    static var previews: some View {
        TransactionsView()
    }
}

struct SeeDetailsButtonContent: View {
    var body: some View {
        Text("See Details")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 400, height:60)
            .background(loginButtonColorViolet)
            .cornerRadius(35.0)
    }
}

struct SmallButtonContent: View {
    var typedesc: String
    var body: some View {
        Text(typedesc)
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 100, height:40)
            .background(loginButtonColorViolet)
            .cornerRadius(35.0)
    }
}

struct SmallWhiteButtonContent: View {
    var typedesc: String
    var body: some View {
        Text(typedesc)
            .font(.headline)
            .foregroundColor(.black)
            .padding()
            .frame(width: 100, height:40)
            .background(Color.white)
            .cornerRadius(35.0)
    }
}

struct ProfileTeam: View {
    var body: some View {
        Image("TeamImage")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 400, height: 300)
            //.clipped()
            .cornerRadius(10)
            .padding(.bottom,50)
        
    }
}

struct TransactionsNew: View {
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
                    //.background(Color( red: 229.0/255.0, green: 232.0/255.0, blue: 246.0/255.0))
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
