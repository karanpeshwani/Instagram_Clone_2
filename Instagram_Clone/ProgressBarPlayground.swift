//
//  ProgressBarPlayground.swift
//  Instagram_Clone
//
//  Created by KARAN on 14/07/23.
//

import SwiftUI

struct ProgressBarPlayground: View {
    @State var name = "karan"
    var body: some View {
        VStack{
            ProgressView("Loading", value: 80, total: 100)
                .frame(width: 200)
                .background {
                    Image(systemName: "globe")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .scaledToFill()
                }
                .background()
                .padding(50)
            
            ProgressView(value: 0.9)
                .frame(width: 200, height: 200)
                .progressViewStyle(CircularProgressViewStyle(tint: .yellow))
                .controlSize(.large)
                .onAppear(perform: {
                    print("hello")
                })
            
            ProgressView("Loading", value: 20, total: 100)
                .progressViewStyle(CircularProgressViewStyle(tint: .yellow))
                .font(.title)
                .onAppear(perform: {
                    print("hello")
                })
                .bold()
                .disabled(true)
                .foregroundColor(.green)
                .padding(50)
            
            ProgressView("", value: 20, total: 100)
                .progressViewStyle(.automatic)
                .padding(30)
            
            ProgressView()
//                .progressViewStyle(.automatic)
        }
    }
}

struct ProgressBarPlayground_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBarPlayground()
    }
}
