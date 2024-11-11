//
//  Artwork.swift
//  lecture-object-practice
//
//  Created by Yeonju on 11/4/24.
//

import SwiftUI

// 작품 데이터 모델
class ArtworkData: ObservableObject {
    @Published var artworks: [Artwork] = [
        Artwork(
            title: "해바라기",
            artist: "빈센트 반 고흐",
            date: "1888년 8월",
            material: [.canvas, .oilColor],
            width: 92,
            height: 73,
            image: Image("sunflower"),
            like: 101
        ),
        Artwork(
            title: "우는 여인",
            artist: "파블로 피카소",
            date: "1937년",
            material: [.canvas, .acrylicColor, .pencil],
            width: 60,
            height: 50,
            image: Image("femmeEnPleurs"),
            like: 202
        ),
        Artwork(
            title: "산책",
            artist: "클로드 모네",
            date: "1875년",
            material: [.canvas, .waterColor, .pencil],
            width: 100,
            height: 81,
            image: Image("laPromenade"),
            like: 303
        ),
        Artwork(
            title: "절규",
            artist: "에드바르트 뭉크",
            date: "1893년",
            material: [.canvas, .oilColor, .pastel, .crapas],
            width: 74,
            height: 91,
            image: Image("skrik"),
            like: 404
        )
    ]
    
    func increaseLike(artwork: Artwork) {
        
    }
}

struct Artwork: Identifiable {
    let id = UUID()
    var title: String
    var artist: String
    var date: String
    var material: [ArtworkMaterial]
    var width: Int
    var height: Int
    var image: Image
    var like: Int

    enum ArtworkMaterial: String {
        case canvas = "캔버스", oilColor = "유화 물감", waterColor = "수채화 물감", acrylicColor = "아크릴 물감", pastel = "파스텔", crapas = "크레파스", pencil = "연필"
    }
}
