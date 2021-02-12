//
//  ContentView.swift
//  PersonalCard
//
//  Created by Mazen .A on 12/02/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(UIColor(red: 0.09, green: 0.63, blue: 0.52, alpha: 1.00))
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("me")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150, alignment: .center)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)
                    )
                
                Text("Mazen Asiri")
                    .foregroundColor(.white)
                    .bold()
                    .font(Font.custom("Pacifico-Regular", size: 40))
                
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                
                VStack {
                    InfoView(text: "+966 50 608 5501", imageName: "phone.fill")
                    InfoView(text: "almazniM@outlook.com", imageName: "envelope.fill")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
