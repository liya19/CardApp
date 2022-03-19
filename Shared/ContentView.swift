//
//  ContentView.swift
//  Shared
//
//  Created by Лия Ахметзянова on 19.03.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.83, green: 0.77, blue: 0.98)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Image("pic1")
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .frame(width: 150, height: 150)
                    .overlay( Rectangle().stroke(lineWidth: 5))
                Text("Лия Ахметзянова")
                    .font(.title)
                    .fontWeight(.regular)
                Text("iOS developer / it-manager")
                    .font(.callout)
                    .fontWeight(.light)
                Link(destination: URL(string: "https://www.instagram.com/")!){
                    Card(image: "photo", message: "instagram")
                }
                Card(image: "envelope", message: "liya1999.19@yandex.ru")
            }.foregroundColor(.white)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}


struct Card: View {
    let image: String
    let message: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25).padding(.horizontal, 28.0).frame(height: 50).overlay(HStack {
            Image(systemName: image)
            Text(message)
                .font(.title2)
                .fontWeight(.regular)
        }.foregroundColor(Color.purple))
    }
}
