//
//  Posts.swift
//  Instagram_Clone
//
//  Created by KARAN on 06/07/23.
//

import SwiftUI


let img = AnyView(Image("Me")
                  .resizable()
                  .scaledToFill())

let singleHstack = AnyView(HStack{
    img
    img
    img
})

let hstackList = [singleHstack,singleHstack,singleHstack,singleHstack,singleHstack,singleHstack,singleHstack,singleHstack,singleHstack,singleHstack,singleHstack,singleHstack,singleHstack,singleHstack,singleHstack,singleHstack,singleHstack,singleHstack,singleHstack,singleHstack,singleHstack,singleHstack,singleHstack,singleHstack,singleHstack,singleHstack,singleHstack,singleHstack,singleHstack,singleHstack,singleHstack,singleHstack,singleHstack,singleHstack,singleHstack,singleHstack,singleHstack,singleHstack,singleHstack,singleHstack,singleHstack,singleHstack,singleHstack,singleHstack,singleHstack,singleHstack,singleHstack,singleHstack,singleHstack,singleHstack,singleHstack,singleHstack,singleHstack,singleHstack,singleHstack,singleHstack,singleHstack,singleHstack,singleHstack,singleHstack,singleHstack,singleHstack,singleHstack,singleHstack,singleHstack,singleHstack,singleHstack,singleHstack,singleHstack,singleHstack,singleHstack,singleHstack,singleHstack,singleHstack,singleHstack,singleHstack,singleHstack,singleHstack,singleHstack,singleHstack,singleHstack]

struct MyPostsTab : View {
    var body: some View{
        List {
            ForEach(0..<hstackList.count) { num in
                hstackList[num]
            }
        }
    }
}
