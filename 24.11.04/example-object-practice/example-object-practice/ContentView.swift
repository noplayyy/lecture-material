//
//  ContentView.swift
//  example-object-practice
//
//  Created by Yeonju on 11/4/24.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var artworkData = ArtworkData()
    
    var body: some View {
        NavigationView {
            VStack(spacing: 30) {
                ForEach(artworkData.artworks) { artwork in
                    NavigationLink(destination: ArtworkDetailView(artwork: artwork)) {
                        Text("\(artwork.title) | 👍: \(artwork.like)")
                            .font(.title)
                            .fontWeight(.heavy)
                            .padding()
                            .foregroundColor(.white)
                            .background(Color.black)
                            .cornerRadius(20)
                    }
                }
            }
            .navigationTitle("작품 리스트")
        }
        .environmentObject(artworkData)
    }
}

struct ArtworkDetailView: View {
    var artwork: Artwork
    @EnvironmentObject var artworkData: ArtworkData
    
    var body: some View {
        VStack(spacing: 30) {
            artwork.image
                .resizable()
                .scaledToFit()
                .frame(width: 300)
            
            Text(artwork.title)
                .font(.title)
                .bold()
            
            VStack(alignment: .leading) {
                Text("작가: \(artwork.artist)")
                Text("제작 연도: \(artwork.date)")
                Text("재료: \(artwork.material.map { $0.rawValue }.joined(separator: ", "))")
                Text("크기: \(artwork.width) x \(artwork.height) cm")
            }
            .frame(maxWidth: .infinity)
            
            Button(action: {
                artworkData.increaseLike(artwork: artwork)
            }) {
                Text("👍 : \(artwork.like)")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .padding()
        .navigationTitle(artwork.title)
    }
}

#Preview {
    ContentView()
}
