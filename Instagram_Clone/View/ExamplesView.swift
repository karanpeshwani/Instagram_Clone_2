//
//  TestTab.swift
//  Instagram_Clone
//
//  Created by KARAN on 12/07/23.
//

import SwiftUI

struct Examples: View {
    
    var body: some View {
        
        NavigationStack {
            List{
                NavigationLink("Alert Example", destination: {
                    AlertExample()
                })
                NavigationLink("Focus Handling Example", destination: {
                    FocusHandlingExample()
                })
                NavigationLink("Text Playground", destination: {
                    TextPlayground()
                })
                NavigationLink("Button Playground", destination: {
                    ButtonPlayground()
                })
                NavigationLink("Text Field Playground", destination: {
                    TextFieldPlayground()
                })
                NavigationLink("Image Playground", destination: {
                    ImagePlayground()
                })
                NavigationLink("Progress bar Playground", destination: {
                    ProgressBarPlayground()
                })
                
                NavigationLink("Picker Playground", destination: {
                    PickerPlayground()
                })
            }
                .navigationTitle("Examples")
            
            .toolbar {
                ToolbarItem(placement: .principal) {
                    HStack {
                        Button(action: {}) {
                            Image(systemName: "globe")
                        }
                        Image(systemName: "sun.min.fill")
                        Text("Title").font(.headline)
                    }
                }
            }
            
            .navigationBarItems(leading: Image(systemName: "house"))
            .navigationBarItems(leading: Image(systemName: "clock"))
        }
    }
}

struct TestTab_Previews: PreviewProvider {
    static var previews: some View {
        Examples()
    }
}
