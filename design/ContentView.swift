//
//  ContentView.swift
//  design
//
//  Created by MacMini on 09/05/23.
//

//Diseño https://dribbble.com/shots/21339806-Project-Management-App

import SwiftUI

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}

struct RoundedCorner: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

extension Color{
    init(hex: UInt, alpha: Double = 1){
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xff) / 255,
            green: Double((hex >> 08) & 0xff) / 255,
            blue: Double((hex >> 00) & 0xff) / 255,
            opacity: alpha

        )
    }
}


struct ContentView: View {
    var body: some View {
        NavigationStack {
//            ZStack {
//                Color(hex: 0xff0d1318, alpha: 1).ignoresSafeArea()
//
//            }
            TabView{
                ChatTab().tabItem{
                    Label("Chats", systemImage: "bubble.right.fill")
                }.background(Color(hex: 0xff0d1318, alpha: 1).ignoresSafeArea())
                    .toolbarBackground(Color(hex: 0xff0d1318, alpha: 1), for: .tabBar)
                TaskTab().tabItem{
                    Label("Tasks", systemImage: "list.bullet.rectangle")
                }
                ExploreTab().tabItem{
                    Label("Explore", systemImage: "person.3")
                }
                ProfileTab().tabItem{
                    Label{
                        Text("Profile")
                    } icon: {
                        AsyncImage(url: URL(string: "https://picsum.photos/id/50/30")).frame(width: 30, height: 30).cornerRadius(15)
                    }
                }.background(Color(hex: 0xff0d1318, alpha: 1).ignoresSafeArea())
                    .toolbarBackground(Color(hex: 0xff0d1318, alpha: 1), for: .tabBar)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
