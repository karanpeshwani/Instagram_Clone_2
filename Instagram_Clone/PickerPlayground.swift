//
//  PickerPlayground.swift
//  Instagram_Clone
//
//  Created by KARAN on 14/07/23.
//

import SwiftUI

struct PickerPlayground: View {
    
    @State private var name = "jkl"
    
    var body: some View {
        VStack(alignment: .leading) {
            
            VStack {
                Picker("I am Picker", selection: $name) {
                    Text("abc").tag("abc")
                    Text("def").tag("def")
                    Text("ghi").tag("ghi")
                    Text("jkl").tag("nfuijnvcerb")
                }
                .frame(width: 150, height: 50, alignment: .leading)
                .background(Color(.green))
                
                Text("bjj")
            }
//            .frame(maxWidth: .infinity)
            .background(Color.red)
            
            
            List{
                Picker("I am second Picker", selection: $name) {
                    Text("abc").tag("rbfhb")
                    Text("def").tag("jrinbecni3riiii")
                    Text("ghi")
                    Text("jkl")
                }
            }
            .frame(height: 200)
            
            Text("name is " + name)
        }
    }
}

struct PickerPlayground_Previews: PreviewProvider {
    static var previews: some View {
        PickerPlayground()
    }
}
