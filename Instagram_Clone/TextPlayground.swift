//
//  TextPlayground.swift
//  Instagram_Clone
//
//  Created by KARAN on 12/07/23.
//

// spacing between the lines
// change font

import SwiftUI


struct TextPlayground: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var btnBack : some View { Button(action: {
        self.presentationMode.wrappedValue.dismiss()
    }) {
        HStack {
            Image("ic_back") // set image here
                .aspectRatio(contentMode: .fit)
                .foregroundColor(.white)
            Image(systemName: "arrowshape.turn.up.backward.2.fill")
            Text("Simon go back!")
        }
    }
    }
    
    var body: some View {
        ScrollView{
            Text("Hello World!")
                .font(.largeTitle)
                .padding(.bottom, 10)
                .disabled(true)
            
            Text("Hello World!")
                .foregroundColor(Color(.red))
                .padding(.bottom, 10)
            
            Text("Hello World!")
                .bold()
                .padding(.bottom, 10)
            
            Text("Hello World!")
                .background(Color(.yellow))
                .padding(.bottom, 10)
            
            Text("Hello World!")
                .italic()
                .padding(.bottom, 10)
            
            Text("wmenbfj embrji crbjcnrebc,sncierbnjrjbr fh rhifbirjc h fi jrnfjrn jr fj trjfntjfg t gj gt jg tgjtngjt gt gj tg ur e fh hr f rifbj3efh43 hf enfdb3fd 34 fh34bf3fnjbff bubfj f hbufnr3bfji")
            
                .background(Color(.green))
                .multilineTextAlignment(.trailing)
                .padding(.bottom, 10)
            
            
            Text("Hello World!")
                .padding(.horizontal, 20)
            
                .background(Color(.orange))
                .padding(.bottom, 10)
            
            Text("Hello World!")
                .fontWidth(.init(10))
                .padding(.bottom, 10)
            
            Text("Hello World!")
                .fontWeight(.ultraLight)
                .padding(.bottom, 10)
            
            VStack(){
                Text("Hello World!")
                    .strikethrough( true , pattern: .dot, color: .red)
                    .font(.system(size: 36))
                    .padding(.bottom, 10)
                
                Text("Hello World!")
                    .underline()
                    .padding(.bottom, 10)
                
                Text("Hello World!")
                    .kerning(10)
                    .padding(.bottom, 10)
                
                Text("Hello World!")
                    .lineLimit(3)
                    .padding(.bottom, 10)
                
                Text("wmenbfj embrji crbjcnrebc,sncierbnjrjbr fh rhifbirjc h fi jrnfjrn jr fj trjfntjfg t gj gt jg tgjtngjt gt gj tg ur e fh hr f rifbj3efh43 hf enfdb3fd 34 fh34bf3fnjbff bubfj f hbufnr3bfji")
                    .lineLimit(4)
                    .frame(width: 150)
                    .background(Color(.green))
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 10)
                    .lineSpacing(20)
                
                
                Text("Hello World")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 10)
                
                Text("Hello World")
                    .padding(.bottom, 10)
                
                Text("Hello World")
                    .font(.headline)
                    .padding(.bottom, 10)
            }
            
        }
        .background(Color(red: 0, green: 200, blue: 20))
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: btnBack)
    }
}

struct TextPlayground_Previews: PreviewProvider {
    static var previews: some View {
        TextPlayground()
    }
}
