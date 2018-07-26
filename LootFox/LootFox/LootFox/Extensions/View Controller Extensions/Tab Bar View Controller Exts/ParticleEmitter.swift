//
//  ParticleEmitter.swift
//  LootFox
//
//  Created by Landon Carr on 6/26/18.
//  Copyright © 2018 Landon Carr. All rights reserved.
//

import Foundation
import UIKit



extension DiscoverVC {


    func createParticles() {


        let view = self.particleView

        let particleEmitter = CAEmitterLayer()
//        self.view.addSubview(view!)


        let yy = ((view?.frame.size.height)! / 2.0)
        let  xx = ((view?.frame.size.width)! / 2.0)

        particleEmitter.emitterPosition = CGPoint(x: xx, y: yy)
        view?.contentMode = UIView.ContentMode.scaleAspectFill
       // particleEmitter.emitterPosition = CGPoint(x: (view?.center.x)!, y: (view?.center.y)!)
        particleEmitter.emitterShape = CAEmitterLayerEmitterShape.circle
        particleEmitter.emitterSize = CGSize(width: 5, height: 5)

//        let red = makeEmitterCell(color: UIColor.red)
//        let green = makeEmitterCell(color: UIColor.green)
//        let blue = makeEmitterCell(color: UIColor.blue)
//
//        particleEmitter.emitterCells = [red, green, blue]
//
//        view.layer.addSublayer(particleEmitter)
        let white = makeEmitterCell(color: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
        particleEmitter.emitterCells = [white]

        view?.layer.addSublayer(particleEmitter)
    }

    func makeEmitterCell(color: UIColor) -> CAEmitterCell {
        let cell = CAEmitterCell()
        cell.birthRate = 50
        cell.lifetime = 5
        cell.lifetimeRange = 0
        cell.color = color.cgColor
        cell.velocity = 50
        cell.velocityRange = 50
        cell.emissionLongitude = CGFloat.pi
        cell.emissionLatitude = CGFloat.pi
        cell.emissionRange = CGFloat.pi * 2
        cell.spin = 5.0
        cell.spinRange = 3
        cell.scaleRange = 0.0//0.5
        cell.scaleSpeed = 0.0//-0.05
        cell.scale = 0.3

        cell.contents = UIImage(named: "pixelfive")?.cgImage
        return cell
}

}

