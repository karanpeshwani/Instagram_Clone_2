


//import Foundation
//
//
//func readJSONFile(forName name: String) {
//   do {
//      if let bundlePath = Bundle.main.path(forResource: name, ofType: "json"),
//      let jsonData = try String(contentsOfFile: bundlePath).data(using: .utf8) {
//         if let json = try JSONSerialization.jsonObject(with: jsonData, options: .mutableLeaves) as? [String: Any] {
//            print("JSON: \(json)")
//         } else {
//            print("Given JSON is not a valid dictionary object.")
//         }
//      }
//   } catch {
//      print(error)
//   }
//}
//
//
//
//print("frbfibri")
//readJSONFile(forName: "ImagesJSON.json")



















// func function_1(f : (Int) -> (Int)){
//     print("Starting function_1")
//     print("inside function_1, return val of f is : " + String(f(7)))
//     print("Ending function_1")
// }

// //these all work
// function_1(f : {
//     (num : Int) -> (Int) in
//     return num + 5
// })

// function_1(f : {
//     return $0 + 5
// })


// function_1(f: {
//     $0 + 5
// })

// function_1(){
//     $0 + 5
// }

// function_1{
//     $0 + 5
// }


// this syntax doesn't work
// function_1(f: (num : Int) -> (Int) {
//     return num + 5
// })
