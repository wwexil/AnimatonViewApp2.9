//
//  Animation.swift
//  AnimatonViewApp2.9
//
//  Created by Алекс Мерсер on 07.02.2022.
//

import Foundation

struct Animation {
    let name: String
    let curve: String
    let force: Float
    let duration: Float
    let delay: Float
    
    var description: String {
        """
        preset: \(name)
        curve: \(curve)
        force: \(String(format: "%.02f", force))
        duration: \(String(format: "%.02f", duration))
        delay: \(String(format: "%.02f", delay))
        """
    }
    
    static func getRandomAnimation() -> Animation {
        Animation(
            name: DataManager.shared.animations.randomElement()?.rawValue ?? "",
            curve: DataManager.shared.curves.randomElement()?.rawValue ?? "",
            force: Float.random(in: 1...3),
            duration: Float.random(in: 0.5...2),
            delay: Float.random(in: 0.5...1)
        )
    }
}
