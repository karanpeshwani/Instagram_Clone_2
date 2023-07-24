//
//  TaggedPostsTab.swift
//  Instagram_Clone
//
//  Created by KARAN on 07/07/23.
//

import SwiftUI

let hstackListTagged : [AnyView] = [
//    singleHstack
]

struct ImageStruct: Codable {
    let src: String
    let alt: String
}

struct AlbumStruct: Codable {
    let images: [ImageStruct]
}

/* func jsonToStruct(file : String) -> Void {
    let url = URL(string: "https://demo0989623.mockable.io/car/1")!

    let task = URLSession.shared.dataTask(with: url) { data, response, error in
      
      // ensure there is no error for this HTTP response
      guard error == nil else {
        print ("error: \(error!)")
        return
      }
      
      // ensure there is data returned from this HTTP response
      guard let data = data else {
        print("No data")
        return
      }
      
      // Parse JSON into Car struct using JSONDecoder
      guard let Album = try? JSONDecoder().decode(AlbumStruct.self, from: data) else {
        print("Error: Couldn't decode data into car")
        return
      }
      
      // 'gotten car is Car(name: "Toyota Prius", horsepower: 1)'
      print("gotten car is \(Album)")
    }
} */

func jsonToStruct(file : String) -> AlbumStruct? {
    let url = URL(string: file)!
    
    var Album : AlbumStruct?
    
    let task = URLSession.shared.dataTask(with: url) { data, response, error in
      
      // ensure there is no error for this HTTP response
      guard error == nil else {
        print ("error: \(error!)")
        return
      }
      
      // ensure there is data returned from this HTTP response
      guard let data = data else {
        print("No data")
        return
      }
        
     Album = try? JSONDecoder().decode(AlbumStruct.self, from: data)
        
        if(Album == nil){
            print("Error: Couldn't decode data into car")
            return
        }
    }
    return Album
}

struct TaggedPostsTab: View {
    
    var body: some View {
        List {
            
        }
    }
}

struct TaggedPostsTab_Previews: PreviewProvider {
    static var previews: some View {
        TaggedPostsTab()
    }
}
