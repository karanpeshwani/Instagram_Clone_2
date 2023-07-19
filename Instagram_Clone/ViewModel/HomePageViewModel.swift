//
//  HomePageViewModel.swift
//  Instagram_Clone
//
//  Created by KARAN on 18/07/23.
//

import Foundation


class HomePageViewModel : ObservableObject {
     @Published var imageList : [ImageElement] = []
    
    func readJSONFile(forName name: String) -> [ImageElement] {
        if let bundlePath = Bundle.main.path(forResource: name, ofType: "json") {
            do {
                let jsonData = try Data(contentsOf: URL(fileURLWithPath: bundlePath), options: .mappedIfSafe)
                let tempImageList : [ImageElement] = try! JSONDecoder().decode([ImageElement].self, from: jsonData)
                return tempImageList
            } catch {
                print(error)
            }
        } else {
            print("Can't read file!")
        }
        return []
    }
}


/*func loadImage(urlString : String) async throws -> UIImage {
    guard let url = URL(string: urlString) else{
        throw ErrorCode.e1
    }

//        guard let (data, _) = try await URLSession.shared.data(from: url) else{
//            throw ErrorCode.e2
//        }

    let (data, _) = try await URLSession.shared.data(from: url)

//        guard let img = UIImage(data: data) else{
//            throw ErrorCode.e3
//        }

    guard let img = UIImage(data: data) else{
        throw ErrorCode.e3
    }



    return img
}*/
