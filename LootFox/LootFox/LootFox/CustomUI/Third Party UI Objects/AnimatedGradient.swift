//
//  PointConfiguration.swift
//  LootFox
//
//  Created by Landon Carr on 7/1/18.
//  Copyright © 2018 Landon Carr. All rights reserved.
//

import Foundation

import UIKit

@objc

//PastelPoint
public enum PointConfiguration: Int {
    case left
    case top
    case right
    case bottom
    case topLeft
    case topRight
    case bottomLeft
    case bottomRight
    
    var point: CGPoint {
        switch self {
        case .left: return CGPoint(x: 0.0, y: 0.5)
        case .top: return CGPoint(x: 0.5, y: 0.0)
        case .right: return CGPoint(x: 1.0, y: 0.5)
        case .bottom: return CGPoint(x: 0.5, y: 1.0)
        case .topLeft: return CGPoint(x: 0.0, y: 0.0)
        case .topRight: return CGPoint(x: 1.0, y: 0.0)
        case .bottomLeft: return CGPoint(x: 0.0, y: 1.0)
        case .bottomRight: return CGPoint(x: 1.0, y: 1.0)
        }
    }
}


//////////


//PastelGradient
@objc public enum CustomGradient: Int {
    case warmFlame
    case nightFade
    case springWarmth
    case juicyPeach
    case youngPassion
    case ladyLips
    case sunnyMorning
    case rainyAshville
    case frozenDreams
    case winterNeva
    case dustyGrass
    case temptingAzure
    case heavyRain
    case amyCrisp
    case meanFruit
    case deepBlue
    case ripeMalinka
    case cloudyKnoxville
    case malibuBeach
    case newLife
    case trueSunset
    case morpheusDen
    case rareWind
    case nearMoon
    case wildApple
    case saintPeterburg
    case ariellesSmile
    case plumPlate
    case everlastingSky
    case happyFisher
    case monarchcasino
    case midnight
    case wakanda
    
    
    
    func colors() -> [UIColor] {
        switch self {
        case .warmFlame:
            return [#colorLiteral(red: 1, green: 0.6039215686, blue: 0.6196078431, alpha: 1), #colorLiteral(red: 0.9803921569, green: 0.8156862745, blue: 0.768627451, alpha: 1)]
        case .nightFade:
            return [#colorLiteral(red: 0.631372549, green: 0.5490196078, blue: 0.8196078431, alpha: 1), #colorLiteral(red: 0.9843137255, green: 0.7607843137, blue: 0.9215686275, alpha: 1)]
        case .springWarmth:
            return [#colorLiteral(red: 0.9803921569, green: 0.8156862745, blue: 0.768627451, alpha: 1), #colorLiteral(red: 1, green: 0.8196078431, blue: 1, alpha: 1)]
        case .juicyPeach:
            return [#colorLiteral(red: 1, green: 0.9254901961, blue: 0.8235294118, alpha: 1), #colorLiteral(red: 0.9882352941, green: 0.7137254902, blue: 0.6235294118, alpha: 1)]
        case .youngPassion:
            return [#colorLiteral(red: 1, green: 0.5058823529, blue: 0.4666666667, alpha: 1), #colorLiteral(red: 1, green: 0.5254901961, blue: 0.4784313725, alpha: 1), #colorLiteral(red: 1, green: 0.5490196078, blue: 0.4980392157, alpha: 1), #colorLiteral(red: 0.9764705882, green: 0.568627451, blue: 0.5215686275, alpha: 1), #colorLiteral(red: 0.8117647059, green: 0.3333333333, blue: 0.4235294118, alpha: 1), #colorLiteral(red: 0.6941176471, green: 0.1647058824, blue: 0.3568627451, alpha: 1)]
        case .ladyLips:
            return [#colorLiteral(red: 1, green: 0.6039215686, blue: 0.6196078431, alpha: 1), #colorLiteral(red: 0.9960784314, green: 0.8117647059, blue: 0.937254902, alpha: 1), #colorLiteral(red: 0.9960784314, green: 0.8117647059, blue: 0.937254902, alpha: 1)]
        case .sunnyMorning:
            return [#colorLiteral(red: 0.9647058824, green: 0.8274509804, blue: 0.3960784314, alpha: 1), #colorLiteral(red: 0.9921568627, green: 0.6274509804, blue: 0.5215686275, alpha: 1)]
        case .rainyAshville:
            return [#colorLiteral(red: 0.9843137255, green: 0.7607843137, blue: 0.9215686275, alpha: 1), #colorLiteral(red: 0.6509803922, green: 0.7568627451, blue: 0.9333333333, alpha: 1)]
        case .frozenDreams:
            return [#colorLiteral(red: 0.9921568627, green: 0.7960784314, blue: 0.9450980392, alpha: 1), #colorLiteral(red: 0.9921568627, green: 0.7960784314, blue: 0.9450980392, alpha: 1), #colorLiteral(red: 0.9019607843, green: 0.8705882353, blue: 0.9137254902, alpha: 1)]
        case .winterNeva:
            return [#colorLiteral(red: 0.631372549, green: 0.768627451, blue: 0.9921568627, alpha: 1), #colorLiteral(red: 0.7607843137, green: 0.9137254902, blue: 0.9843137255, alpha: 1)]
        case .dustyGrass:
            return [#colorLiteral(red: 0.831372549, green: 0.9882352941, blue: 0.4745098039, alpha: 1), #colorLiteral(red: 0.5882352941, green: 0.9019607843, blue: 0.631372549, alpha: 1)]
        case .temptingAzure:
            return [#colorLiteral(red: 0.5176470588, green: 0.9803921569, blue: 0.6901960784, alpha: 1), #colorLiteral(red: 0.5607843137, green: 0.8274509804, blue: 0.9568627451, alpha: 1)]
        case .heavyRain:
            return [#colorLiteral(red: 0.8117647059, green: 0.8509803922, blue: 0.8745098039, alpha: 1), #colorLiteral(red: 0.8862745098, green: 0.9215686275, blue: 0.9411764706, alpha: 1)]
        case .amyCrisp:
            return [#colorLiteral(red: 0.6509803922, green: 0.7529411765, blue: 0.9960784314, alpha: 1), #colorLiteral(red: 0.9647058824, green: 0.5019607843, blue: 0.5176470588, alpha: 1)]
        case .meanFruit:
            return [#colorLiteral(red: 0.9882352941, green: 0.7960784314, blue: 0.5647058824, alpha: 1), #colorLiteral(red: 0.8352941176, green: 0.4941176471, blue: 0.9215686275, alpha: 1)]
        case .deepBlue:
            return [#colorLiteral(red: 0.8784313725, green: 0.7647058824, blue: 0.9882352941, alpha: 1), #colorLiteral(red: 0.5568627451, green: 0.7725490196, blue: 0.9882352941, alpha: 1)]
        case .ripeMalinka:
            return [#colorLiteral(red: 0.9411764706, green: 0.5764705882, blue: 0.9843137255, alpha: 1), #colorLiteral(red: 0.9607843137, green: 0.3411764706, blue: 0.4235294118, alpha: 1)]
        case .cloudyKnoxville:
            return [#colorLiteral(red: 0.9921568627, green: 0.9843137255, blue: 0.9843137255, alpha: 1), #colorLiteral(red: 0.9215686275, green: 0.9294117647, blue: 0.9333333333, alpha: 1)]
        case .malibuBeach:
            return [#colorLiteral(red: 0.3098039216, green: 0.6745098039, blue: 0.9960784314, alpha: 1), #colorLiteral(red: 0, green: 0.9490196078, blue: 0.9960784314, alpha: 1)]
        case .newLife:
            return [#colorLiteral(red: 0.262745098, green: 0.9137254902, blue: 0.4823529412, alpha: 1), #colorLiteral(red: 0.2196078431, green: 0.9764705882, blue: 0.8431372549, alpha: 1)]
        case .trueSunset:
            return [#colorLiteral(red: 0.9803921569, green: 0.4392156863, blue: 0.6039215686, alpha: 1), #colorLiteral(red: 0.9960784314, green: 0.8823529412, blue: 0.2509803922, alpha: 1)]
        case .morpheusDen:
            return [#colorLiteral(red: 0.1882352941, green: 0.8117647059, blue: 0.8156862745, alpha: 1), #colorLiteral(red: 0.2, green: 0.03137254902, blue: 0.4039215686, alpha: 1)]
        case .rareWind:
            return [#colorLiteral(red: 0.6588235294, green: 0.9294117647, blue: 0.9176470588, alpha: 1), #colorLiteral(red: 0.9960784314, green: 0.8392156863, blue: 0.8901960784, alpha: 1)]
        case .nearMoon:
            return [#colorLiteral(red: 0.368627451, green: 0.9058823529, blue: 0.8745098039, alpha: 1), #colorLiteral(red: 0.7058823529, green: 0.5647058824, blue: 0.7921568627, alpha: 1)]
        case .wildApple:
            return [#colorLiteral(red: 0.8235294118, green: 0.6, blue: 0.7607843137, alpha: 1), #colorLiteral(red: 0.9960784314, green: 0.9764705882, blue: 0.8431372549, alpha: 1)]
        case .saintPeterburg:
            return [#colorLiteral(red: 0.9607843137, green: 0.968627451, blue: 0.9803921569, alpha: 1), #colorLiteral(red: 0.7647058824, green: 0.8117647059, blue: 0.8862745098, alpha: 1)]
        case .ariellesSmile:
            return [#colorLiteral(red: 0.0862745098, green: 0.8509803922, blue: 0.8901960784, alpha: 1), #colorLiteral(red: 0.1882352941, green: 0.7803921569, blue: 0.9254901961, alpha: 1), #colorLiteral(red: 0.2745098039, green: 0.6823529412, blue: 0.968627451, alpha: 1)]
        case .plumPlate:
            return [#colorLiteral(red: 0.4, green: 0.4941176471, blue: 0.9176470588, alpha: 1), #colorLiteral(red: 0.462745098, green: 0.2941176471, blue: 0.6352941176, alpha: 1)]
        case .everlastingSky:
            return [#colorLiteral(red: 0.50937661, green: 0.3846351528, blue: 1, alpha: 1), #colorLiteral(red: 0.3333333333, green: 0.862745098, blue: 1, alpha: 1)]
        case .happyFisher:
            return [#colorLiteral(red: 0.537254902, green: 0.968627451, blue: 0.9960784314, alpha: 1), #colorLiteral(red: 0.4, green: 0.6509803922, blue: 1, alpha: 1)]
        case .monarchcasino:
            return [#colorLiteral(red: 0.8196078431, green: 0.1215686275, blue: 0.1490196078, alpha: 1), #colorLiteral(red: 1, green: 0.7843137255, blue: 0.1098039216, alpha: 1)]
        case .midnight:
            return [#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)]
        case .wakanda:
            return [#colorLiteral(red: 0.5098039216, green: 0.3843137255, blue: 1, alpha: 1), #colorLiteral(red: 0.01176470588, green: 0.9490196078, blue: 0.5176470588, alpha: 1)]
            
        }
    }
}
///////////////////
///////////////////
///////////////////



class PastelView: UIView {
    
struct Animation {
        static let keyPath = "colors"
        static let key = "ColorChange"
    }
    
    //MARK: - Custom Direction
 var startPoint: CGPoint = PointConfiguration.topRight.point
  var endPoint: CGPoint = PointConfiguration.bottomLeft.point
    
  var startPastelPoint = PointConfiguration.topRight {
        didSet {
            startPoint = startPastelPoint.point
        }
    }
    
 var endPastelPoint = PointConfiguration.bottomLeft {
        didSet {
            endPoint = endPastelPoint.point
        }
    }
    
/////
 var animationDuration: TimeInterval = 5.0
 let gradient = CAGradientLayer()
 var currentGradient: Int = 0
 var colors: [UIColor] = [UIColor(red: 156/255, green: 39/255, blue: 176/255, alpha: 1.0),
                                     UIColor(red: 255/255, green: 64/255, blue: 129/255, alpha: 1.0),
                                     UIColor(red: 123/255, green: 31/255, blue: 162/255, alpha: 1.0),
                                     UIColor(red: 32/255, green: 76/255, blue: 255/255, alpha: 1.0),
                                     UIColor(red: 32/255, green: 158/255, blue: 255/255, alpha: 1.0),
                                     UIColor(red: 90/255, green: 120/255, blue: 127/255, alpha: 1.0),
                                     UIColor(red: 58/255, green: 255/255, blue: 217/255, alpha: 1.0)]

 override func layoutSubviews() {
        super.layoutSubviews()
        gradient.frame = bounds
    }
    
func startAnimation() {
        gradient.removeAllAnimations()
        setup()
        animateGradient()
    }
    
 func setup() {
        gradient.frame = bounds
        gradient.colors = currentGradientSet()
        gradient.startPoint = startPoint
        gradient.endPoint = endPoint
        gradient.drawsAsynchronously = true
        
        layer.insertSublayer(gradient, at: 0)
    }
    
 func currentGradientSet() -> [CGColor] {
        guard colors.count > 0 else { return [] }
        return [colors[currentGradient % colors.count].cgColor,
                colors[(currentGradient + 1) % colors.count].cgColor]
    }
    
 func setColors(_ colors: [UIColor]) {
        guard colors.count > 0 else { return }
        self.colors = colors
    }
 func setPastelGradient(_ gradient: CustomGradient) {
        setColors(gradient.colors())
    }
    
  func addcolor(_ color: UIColor) {
        self.colors.append(color)
    }
    
    func animateGradient() {
        currentGradient += 1
        let animation = CABasicAnimation(keyPath: Animation.keyPath)
        animation.duration = animationDuration
        
        animation.toValue = currentGradientSet()
        animation.fillMode = CAMediaTimingFillMode.forwards
        animation.isRemovedOnCompletion = false
        animation.delegate = self
        gradient.add(animation, forKey: Animation.key)
    }
    
 override func removeFromSuperview() {
        super.removeFromSuperview()
        gradient.removeAllAnimations()
        gradient.removeFromSuperlayer()
    }
}

extension PastelView: CAAnimationDelegate {
    public func animationDidStop(_ anim: CAAnimation, finished flag: Bool) {
        if flag {
            gradient.colors = currentGradientSet()
            animateGradient()
        }
    }
}


