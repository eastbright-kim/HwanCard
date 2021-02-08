//
//  ContentView.swift
//  HwanCard
//
//  Created by 김동환 on 2020/12/30.
//  Copyright © 2020 Kim Hwan. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(red: 0.95, green: 0.77, blue: 0.06)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                
                Image("PHOTO_2763").resizable().aspectRatio(contentMode: .fit)
                    .frame(width: 3800, height: 300)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))

                Text("KIM DONG HWAN")
                    .font(Font.custom("Pacifico-Regular", size: 30))
                    .bold()
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "010-4488-3838", imageName: "phone.fill")
                InfoView(text: "1033513@naver.com", imageName: "envelope.fill")
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


