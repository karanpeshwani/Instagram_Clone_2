//
//  ImagePlayground.swift
//  Instagram_Clone
//
//  Created by KARAN on 13/07/23.
//

import SwiftUI

struct ImagePlayground: View {
    var body: some View {
        ScrollView{
            VStack {
                VStack{
                    Image("Me")
                        .resizable()
                        .scaledToFill()
                        .padding(20)
                }
                .background(Color(.red))

//                Image("Me")
//                    .resizable()
//                    .frame(width: UIScreen.main.bounds.width/2 , height: 300)
//                    .background(Color.green)
//                    .padding(50)
//                    .position(CGPoint(x: 100, y: 100))

//                Image("Me")
//                    .resizable()
//
//                Image("img1")
//                    .resizable()
//                //                .interpolation(.high)  // diffusion done by swiftui

                Image("img1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: UIScreen.main.bounds.width/2)
                    .brightness(0.5)
                    .padding(.bottom, 30)

                Image("img1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: UIScreen.main.bounds.width/2)
                    .foregroundColor(.black)
                    .opacity(0.5)

                Image("img1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: UIScreen.main.bounds.width/2)
                    .foregroundColor(.black)
                    .opacity(0.5)


                Image("img1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: UIScreen.main.bounds.width/2)
                    .brightness(0.5)
                    .padding(.bottom, 30)


                Image("img1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: UIScreen.main.bounds.width/2)
                    .border(.purple, width: 5)
                    .cornerRadius(30)


                Image("img1")
                    .resizable()
                    .cornerRadius(20)
                    .scaledToFit()
                    .frame(width: UIScreen.main.bounds.width/2)



                Image("img1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: UIScreen.main.bounds.width/2)
                    .clipShape(Circle())
                    .overlay(RoundedRectangle(cornerRadius: 30)
                        .stroke(Color.orange, lineWidth: 4))
                    .shadow(radius: 10)
            }
        }
    }
}

struct ImagePlayground_Previews: PreviewProvider {
    static var previews: some View {
        ImagePlayground()
    }
}


//button, alert, image
