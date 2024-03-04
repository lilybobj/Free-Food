//
//  WelcomeView.swift
//  Yummie
//
//  Created by Lily Jiang on 3/3/24.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack{
            Image("IMG_3361") //welcome background
                .resizable()
                .scaledToFill()
                .frame(width: .screenWidth, height: .screenHeight)
            VStack{
                Spacer()
                
                Image("IMG_3361") //app logo
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60, height: 60)
                    .padding(.bottom, 8)
                
                Text ("Welcome to Free Leftovers")
                    .font(.customfont(.bold, fontSize: 45))
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                
                Text ("Help Us Reduce Food Waste!")
                    .font(.customfont(.bold, fontSize: 22))
                    .foregroundColor(.black.opacity(0.8))
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 30)
                
                NavigationLink {
                    SignInView()
                } label: {
                    RoundButton(title: "Get Started!"){
                }

               
                    
                }
                
                Spacer()
                    .frame(height:80)
            }
            .padding(.horizontal, 20)
        }
        .navigationTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        .ignoresSafeArea()
    }

}

#Preview {
    
    NavigationView{
        WelcomeView()
    }
}
