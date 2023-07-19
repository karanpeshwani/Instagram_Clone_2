//
//  TextField.swift
//  Instagram_Clone
//
//  Created by KARAN on 13/07/23.
//

import SwiftUI

struct TextFieldPlayground: View {
    
    @State var name : String = ""
    
    var body: some View {
        ScrollView {
            TextField("How to centre the placeholder", text: $name)
                .frame(width: UIScreen.main.bounds.width/2)
                .multilineTextAlignment(TextAlignment.center)
                .background(Color.gray.opacity(0.3).cornerRadius(15))
                .foregroundColor(.red)
                .padding(10)
                .font(.caption)
                .disabled(true)
            
            
            TextField("Email-1", text: $name, axis: .vertical)
                .frame(width: 300, height: 50)
                .multilineTextAlignment(TextAlignment.center)
                .background(Color.yellow)
                .padding(.trailing, 30)
                .background(Color.red)
                .keyboardType(.emailAddress)
            
            TextField("Enter Your phone number", text: $name)
                .frame(width: 290, height: 50)
                .multilineTextAlignment(TextAlignment.trailing)
                .background(Color.yellow)
                .padding(.trailing, 30)
                .background(Color.red)
                .frame(maxWidth: .infinity, alignment: .trailing)
                .keyboardType(.numberPad)
            
            TextField("Enter Your Email", text: $name)
                .frame(width: 200, height: 50)
                .multilineTextAlignment(TextAlignment.center)
                .background(Color.yellow)
                .frame(maxWidth: .infinity, alignment: .trailing)
                .background(Color.red)
                .padding(.trailing, 30)
            
            SecureField("Enter password", text: $name)
                .frame(width: UIScreen.main.bounds.width/1.5, height: 40)
                .multilineTextAlignment(TextAlignment.center)
                .background(Color.gray.opacity(0.3).cornerRadius(15))
                .foregroundColor(.red)
                .padding(10)
                .font(.caption)
            
            SecureField("Enter password", text: $name)
                .frame(width: UIScreen.main.bounds.width/1.5, height: 40)
                .multilineTextAlignment(TextAlignment.center)
                .background(Color.gray.opacity(0.3).cornerRadius(15))
                .foregroundColor(.red)
                .padding(10)
//                .border(.blue .opacity(0.2) .cornerRadius(30))
                .border(Color.purple, width: 5)
//                .buttonBorderShape(.capsule)
                .font(.caption)
            
            TextField("surname", text: $name)
                .bold()
                .background(Color.green)
                .position(CGPoint(x: 180, y: 300))
                .frame(width: 200, height: 400)
            
            
        }
    }
}

struct TextField_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldPlayground()
    }
}
