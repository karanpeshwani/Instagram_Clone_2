//
//  OverlayPlayground.swift
//  Instagram_Clone
//
//  Created by KARAN on 20/07/23.
//

import SwiftUI

struct OverlayPlayground: View {
    
    var strArr : [String] = ["bhr", "krb", "krbv", "urhfur", "rbr"]
    
    var body: some View {
        VStack{
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .frame(width: 300, height: 300, alignment: .topLeading)
                .background(Color(.gray))
                .overlay(alignment: .topTrailing) {
                    Circle()
                        .stroke()
                        .frame(width: 50, height: 50)
                }
            
            Rectangle()
                .fill(Color(.green))
                .overlay(alignment: .topTrailing){
                    Capsule(style: .circular)
                        .frame(width: 200, height: 50)
                }
                .padding(.all, 20)
        }
    }
}

struct OverlayPlayground_Previews: PreviewProvider {
    static var previews: some View {
        OverlayPlayground()
    }
}
