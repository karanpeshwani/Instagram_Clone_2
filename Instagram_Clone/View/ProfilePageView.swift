//
//  ProfilePage.swift
//  Instagram_Clone
//
//  Created by KARAN on 07/07/23.
//

import SwiftUI

struct ProfilePage: View {
    
    @State private var selectedTab: Int = 0
    @State private var bottomSheetVisible = false
    
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "lock")
                Text("karan.peshwani")
                Image(systemName: "chevron.down")
                Spacer(minLength: 100)
                Image(systemName: "plus.app")
                Button(action: {bottomSheetVisible = true}, label: {Image(systemName: "list.bullet")}).foregroundColor(.black)
            }
            .padding(.horizontal)
            
            HStack{
                Image("Me")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100)
                    .clipShape(Circle())
                Spacer()
                Spacer()
                Spacer()
                VStack{
                    Text("20")
                    Text("Posts")
                }
                Spacer()
                VStack{
                    Text("599")
                    Text("Followers")
                }
                Spacer()
                VStack {
                    Text("542")
                    Text("Following")
                }
            }
            .padding(.horizontal)
            
            HStack{
                Text("Karan Peshwani")
                    .bold()
                Spacer()
            }
            .padding(.horizontal)
            .padding(.bottom, -1)
            
            HStack {
                Text("""
                    Addicted to the drug of life.
                    Har Har Mahadev!! 🙏
                    BITSIAN 📚📖
                    🏡 Jabalpur📍Bengaluru👨‍💼
                    """
                )
                Spacer()
            }
            .padding(.horizontal)
            
            HStack {
                Button(action: {}, label: {
                    Text("  Edit Profile    ")
                        .padding(8)
                        .padding(.horizontal, 10)
                })
                .background(Color(UIColor.gray))
                .foregroundColor(.white)
                .cornerRadius(8)
                
                Button(action: {}, label: {
                    Text("  Share Profile   ")
                        .padding(8)
                        .padding(.horizontal, 10)
                })
                .background(Color(UIColor.gray))
                .foregroundColor(.white)
                .cornerRadius(8)
                
                Image(systemName: "person.badge.plus")
                    .padding(.horizontal, 5)
            }
            .padding(.top, 5)
            
            ScrollView (.horizontal){
                HStack {
                    ForEach(0..<15) { _ in
                        Image("Me")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 60)
                            .clipShape(Circle())
                    }
                }
            }
            .padding(5)
            
            Picker("", selection: $selectedTab) {
                Image(systemName: "squareshape.split.3x3")
                    .resizable()
                    .scaledToFit()
                    .tag(0)
                
                Image(systemName: "person.2")
                    .resizable()
                    .scaledToFit()
                    .tag(1)
            }
            .pickerStyle(SegmentedPickerStyle())
            
            switch(selectedTab) {
                case 0: MyPostsTab()
                case 1: TaggedPostsTab()
                default:
                    Text("hello 4")
            }
        }
        .sheet(isPresented: $bottomSheetVisible) {
            Text("You have opened the bottom sheet!")
                .presentationDetents([.fraction(0.35), .fraction(0.80)])
        }
    }
}

struct ProfilePage_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePage()
    }
}
