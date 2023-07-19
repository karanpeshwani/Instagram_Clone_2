//
//  FocusHandlingExample.swift
//  Instagram_Clone
//
//  Created by KARAN on 12/07/23.
//

import SwiftUI

struct FocusHandlingExample: View {
    enum FocusEnum {
        case firstNameEnum, lastNameEnum
    }
    
    @FocusState private var focusedRightNow : FocusEnum?
    @State var firstName : String = ""
    @State var lastName : String = ""
    @State var fullName: String = ""
    
    func submitData() -> () {
        focusedRightNow = nil
        fullName = firstName + " " + lastName
    }
    
    var body: some View {
        Form {
            Section("name") {
                TextField("First Name", text: $firstName)
                    .focused($focusedRightNow, equals: .firstNameEnum)
                    .submitLabel(.next)
                    .onSubmit {
                        focusedRightNow = .lastNameEnum
                    }
                TextField("Last Name", text: $lastName)
                    .focused($focusedRightNow, equals: .lastNameEnum)
                    .submitLabel(.done)
                    .onSubmit {
                        submitData()
                    }
            }
            Section("Show Details") {
                Text("Name is : " + fullName)
            }
        }
    }
}

struct FocusHandlingExample_Previews: PreviewProvider {
    static var previews: some View {
        FocusHandlingExample()
    }
}
