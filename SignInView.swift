//
//  SignInView.swift
//  Yummie
//
//  Created by Lily Jiang on 3/3/24.
//

import SwiftUI
import CountryPicker

struct SignInView: View {
    
    @State var txtMobile: String = ""
    @State var isShowPicker: Bool = false
    @State var countryObj: Country?
    
    var body: some View {
        
        ZStack {
       
            /*Image("IMG_3361") //background
                .resizable()
                .scaledToFill()
                .frame(width: .screenWidth, height: . screenHeight)
            */
            VStack{

                Image("IMG_3361") //top image
                    .resizable()
                    .scaledToFill()
                    .frame(width: .screenWidth, height: 400)
                Spacer()
            }
            .background(Color.primaryApp)
            
            ScrollView{
                
                VStack(alignment: .leading){
                   
                    Text ("Get free food with Free Leftovers!")
                        .font(.customfont(.bold, fontSize: 26))
                        .foregroundColor(.primaryText)
                        .multilineTextAlignment(.leading)
                        .padding(.bottom, 25)
                    
                    HStack{
                        
                        Button {
                            isShowPicker = true
                        } label: {
                            //Image("")
                            if let countryObj = countryObj {
                                
                                Text("\( countryObj.isoCode.getFlag())")
                                    .font(.customfont(.medium, fontSize: 30))
                                
                                Text("+\( countryObj.phoneCode)")
                                    .font(.customfont(.medium, fontSize: 25))
                                    .foregroundColor(.primaryText)
                            }
                        }

                        TextField("Enter Phone Number", text: $txtMobile)
                            .font(.customfont(.semibold, fontSize: 18))
                            .frame(minWidth:0, maxWidth: .infinity)
                    
                    }
                    Divider()
                        .padding(.bottom, 35)
                    
                    Text ("Or connect with social media")
                        .font(.customfont(.bold, fontSize: 14))
                        .foregroundColor(.textTitle)
                        .multilineTextAlignment(.center)
                        .frame(minWidth:0, maxWidth: .infinity, alignment: .center)
                        .padding(.bottom, 13)
                   
                    Button{
                       
                    } label: {
                        
                        Image("GoogleLogo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 35, height: 35)
                        
                        Text ("Continue with Google")
                            .font(.customfont(.bold, fontSize: 19))
                            .foregroundColor(.black)
                            .multilineTextAlignment(.center)
                    }
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 60, maxHeight: 60)
                    .background(Color(hex: "C2F0FB"))
                    .cornerRadius(13)
                   
                    
                    
                }
                .padding(.horizontal, 20)
                .frame(width: .screenWidth, alignment: .leading)
                .padding(.top, .topInsets + .screenWidth)
                
               
                
                
                
            }
        }
        .onAppear(){
            self.countryObj = Country(phoneCode: "1", isoCode: "US")
        }
        .sheet(isPresented: $isShowPicker, content: {
            CountryPickerUI(country: $countryObj)
        })
        .navigationTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        .ignoresSafeArea()
    }
}

#Preview {
    SignInView()
}
