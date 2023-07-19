import SwiftUI

struct HomePage: View {
    
    
    @ObservedObject private var vm = HomePageViewModel()
    
    var body: some View {
       
        VStack  {
            List(vm.imageList, id: \.id, rowContent: { img in
                PostView(img: img)
            }).listStyle(.plain)
        }
        .task {
            vm.imageList = vm.readJSONFile(forName: "ImagesJSON")
        }
    }
}


struct PostView : View {
    
    let img : ImageElement
    //What to do for this variable in MVVM???

    var body: some View{
        VStack(){
            HStack{
                Image(systemName: "person.circle.fill")
                Text("user_id_")
                Spacer()

            }
            .padding(.leading, 10)
    
            AsyncImage(url: URL(string: img.url)) { image in  // <-- here
                 image
                    .resizable()
                    .scaledToFit()
                    .frame(width: UIScreen.main.bounds.width)
            } placeholder: {
                 Image("placeholderImage")
                     .resizable()
                     .scaledToFit()
                     .frame(width: UIScreen.main.bounds.width)
            }

            HStack{
                Image(systemName: "heart")
                    .padding(.leading, 10)
                Image(systemName: "message")
                    .padding(.leading, 10)
                Image(systemName: "paperplane")
                    .padding(.leading, 10)
                Spacer()
                Image(systemName: "bookmark")
                    .padding(.trailing, 14)
            }
            .padding(.top, 2)

            HStack{
                Text("3917 likes")
                    .padding(.leading, 10)
                Spacer()
            }
            .padding(.top, 5)
        }
        .padding(.bottom, 5)
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
