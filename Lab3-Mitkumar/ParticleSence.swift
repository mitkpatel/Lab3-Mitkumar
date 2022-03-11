//
//  ParticleSence.swift
//  Lab3-Mitkumar
//
//  Created by user215540 on 3/10/22.
//

import Foundation
import SpriteKit

class ParticleSence: SKScene {
    override func didMove(to view: SKView) {
        super.didMove(to: view)
        
        setupParticleEmitter()
    }
    
    private func setupParticleEmitter() {
        let particleEmitter = SKEmitterNode(fileNamed: "Rain")!
        particleEmitter.position = CGPoint(x: size.width / 2, y: size.height - 50)
        addChild(particleEmitter)
        
    }
 }
