//
//  AlertFile.swift
//  Instagram_Clone
//
//  Created by KARAN on 12/07/23.
//

import SwiftUI

struct AlertExample: View {
    
    @State var alert_bool_1 = false
    @State var num = 0
    
    @State var alertType : AlertType? = nil
    @State var alert_bool_2 = false
    
    @State var alert_bool_3 = false

    
    enum AlertType {
        case error, success, warning
    }
    
    func getAlert() -> Alert {
        switch alertType {
        case .success:
            return Alert(title: Text("Success"), message: Text("Hurray!"))
        case .error:
            return Alert(title: Text("Error"), message: Text("Pls try again"))
        case .warning:
            return Alert(title: Text("Warning"), message: Text("Check warning"))
        default:
            return Alert(title: Text("Default!"), message: Text("rnvnr"))
        }
    }
    
    var body: some View {
        VStack{
            VStack{
                Button("Hit me 1") {
                    alert_bool_1.toggle()
                }
                Text("Count is " + String(num))
            
                .alert(isPresented: $alert_bool_1) {
                    Alert(title: Text("I am an alert"), primaryButton: Alert.Button.default(Text("Not okay"), action: {
                        num += 1
                    }), secondaryButton: Alert.Button.default(Text("Okayy")))
                }
            }
            .padding(.bottom, 30)
            
            VStack{
                Button("Press for error") {
                    alertType = .error
                    alert_bool_2.toggle()
                }
                
                Button("Press for success"){
                    alertType = .success
                    alert_bool_2.toggle()
                }
                
                Button("Press for warning"){
                    alertType = .warning
                    alert_bool_2.toggle()
                }
                
                .alert(isPresented: $alert_bool_2) {
                    getAlert()
                }
            }
            .padding(.bottom, 30)
            
            VStack{
                Button(action: {
                    alert_bool_3.toggle()
                }) {
                    Text("Hit me 2")
                }
                
                .alert("I am the title", isPresented: $alert_bool_3, actions: {
                    Button("save", action: {
                        print("saved")
                    })
                    
                    Button("Ignore", role: .cancel, action: {
                        print("Cancelled")
                    })


                    Button("Delete", role: .destructive, action: {
                        print("Deleted")
                    })
                }, message: {
                    Text("Select the appropriate option!")
                })
            }
            
            .task {
                
            }
        }
    }
    
    func downloadData() async -> String {
        //4-5 sec
        return "jsabdj"
    }
}

struct AlertFile_Previews: PreviewProvider {
    static var previews: some View {
        AlertExample()
    }
}
