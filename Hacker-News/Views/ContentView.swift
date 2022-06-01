//
//  ContentView.swift
//  Hacker-News
//
//  Created by KimJongHee on 2022/05/31.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url), label: {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                })
            }
            .navigationTitle("Hacker News")
        }
        .onAppear() {
            networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//let posts = [
//    Post(objectID: "", points: "", title: "", url: ""),
//    Post(objectID: "", points: "", title: "", url: ""),
//    Post(objectID: "", points: "", title: "", url: ""),
//]



