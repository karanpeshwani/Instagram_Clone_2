//
//  ButtonPlayground.swift
//  Instagram_Clone
//
//  Created by KARAN on 13/07/23.
//

import SwiftUI

struct MyButtonStyle: ButtonStyle {
  func makeBody(configuration: Self.Configuration) -> some View {
    MyButtonStyleView(configuration: configuration)
  }
}

extension MyButtonStyle {
  struct MyButtonStyleView: View {
    // tracks if the button is enabled or not
    @Environment(\.isEnabled) var isEnabled
    // tracks the pressed state
    let configuration: MyButtonStyle.Configuration

    var body: some View {
      return configuration.label
        // change the text color based on if it's disabled
        .foregroundColor(isEnabled ? .white : Color(white: 1, opacity: 179 / 255.0))
        .background(RoundedRectangle(cornerRadius: 5)
          // change the background color based on if it's disabled
          .fill(isEnabled ? Color(red: 0, green: 97 / 255.0, blue: 205 / 255.0) : Color(red: 188 / 255.0, green: 224 / 255.0, blue: 253 / 255.0))
        )
        // make the button a bit more translucent when pressed
        .opacity(configuration.isPressed ? 0.8 : 1.0)
        // make the button a bit smaller when pressed
        .scaleEffect(configuration.isPressed ? 0.98 : 1.0)
    }
  }
}

struct ButtonView : View {
    var body: some View{
        HStack {
            Image(systemName: "plus")
                .bold()
            Text("Add Item")
                .font(.system(size: 22))
        }
        .frame(width: 150, height: 50)
        .background(Color(.cyan))
        .cornerRadius(10)
    }
}

struct ButtonPlayground: View {
    
    @State var ColorIsBlue : Bool = true
    
    func getColor() -> UIColor {
        if(ColorIsBlue) {
            return UIColor.blue
        }
        return UIColor.red
    }
    
    var body: some View {
        ScrollView(){
            VStack(){
                Button(action: {}) {
                    ButtonView()
                }.disabled(true)
                HStack{
                    Button("Click Me 99999", action: {
                        print("Button clicked")
                    })
                    .buttonStyle(.bordered)
                    Spacer()
                }
            }
            .frame(maxWidth: .infinity)
            .background(Color(.yellow))
            .padding(.bottom, 30)
            
            VStack(){
                Button(action: {}) {
                    ButtonView()
                }
                Button("Click Me", action: {
                    print("Button clicked")
                })
                .buttonStyle(.borderedProminent)
            }
            .frame(maxWidth: .infinity)
            .background(Color(.yellow))
            .padding(.bottom, 30)
            
            
            Button("Click Me", action: {
                print("Button clicked")
            })
            .disabled(true)
            
            Button("rbnf", action: {print("hello 8")})
                .buttonStyle(MyButtonStyle())
            
            Button(action: {print("hello")}) {
                Text("ABCD")
                    .frame(width: UIScreen.main.bounds.width/3, height: 30)
            }
            .buttonStyle(MyButtonStyle())
//            .buttonStyle(.borderedProminent)
            .disabled(true)
            
            Button("Mr Button", action: {
                print("hello 8")})
            .frame(width: 350, height: 40)
            .border(.blue)
            .foregroundColor(.white)
            .background(Color.red)
            .cornerRadius(30)
            
            
            
            Button(action: {
                print("hello 8")
            }, label: {
                Text("Mr Button 2")
                    .frame(width: UIScreen.main.bounds.width/2, height: 40)
                    .background(Color.green)
            })
            .cornerRadius(5)
            .padding(.bottom, 20)
            .foregroundColor(.orange)
            //            .disabled(true)
            
            Button("Bad Button", role: .destructive,
                   action: {
                print("hello 8")})
            .buttonStyle(.borderedProminent)
            .frame(maxWidth: UIScreen.main.bounds.width/2)
            .background(Color.black)
            .padding(.bottom, 20)
            
            Button("Click Me", action: {
                print("Button clicked")
                ColorIsBlue.toggle()
            })
            .border(.blue)
            .frame(width: 300)
            .background(Color.yellow)
            .padding(.bottom, 20)
            
            Text("hello world")
//                .foregroundColor(
//                    Color(ColorIsBlue ? .blue : .red)
//                )
            .foregroundColor(
                Color(getColor())
            )
        }
    }
}

struct ButtonPlayground_Previews: PreviewProvider {
    static var previews: some View {
        ButtonPlayground()
    }
}

/*
disabled me color                   -> Done
// https://swiftuirecipes.com/blog/custom-swiftui-button-with-disabled-and-pressed-state
acccess modifiers with code         -> Code likhna h
MVVM with code                      -> code likhna h
https://www.youtube.com/watch?v=H5wmKjfsz68
https://www.youtube.com/watch?v=uQtM6StTsQg
UI improve on insta                 -> Done
version control                     -> Learn about this
naming conventions                  -> Done
lifecycle methods                   -> learn and try to implement
 https://betterprogramming.pub/view-life-cycle-methods-in-swiftui-b7fa9f0e8dfb
 https://developer.apple.com/tutorials/app-dev-training/managing-state-and-life-cycle
 
 
 
 
 //Escaping Closures
 // in out keyword
 // escaping closures
 // week self

*/
