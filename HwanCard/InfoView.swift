//
//  InfoView.swift
//  HwanCard
//
//  Created by 김동환 on 2020/12/31.
//  Copyright © 2020 Kim Hwan. All rights reserved.
//

import SwiftUI

struct InfoView: View {
    
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame( height: 50, alignment: .center).overlay(HStack {
                Image(systemName: imageName).resizable().frame(width: 20, height: 20, alignment: .leading).foregroundColor(.green)
                Text(text)
            })
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hello", imageName: "envelope.fill").previewLayout(.sizeThatFits)
    }
}
