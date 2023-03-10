//
//  ViewController.swift
//  AnimationApp
//
//  Created by Kirill Taraturin on 15.02.2023.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var animationView: SpringView!
    @IBOutlet var startButton: SpringButton!
    
    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    //MARK: - Private properties
    private var currentAnimation: AnimationPreset = .pop
    
    // MARK: - Life Cycles Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLabels(preset: .pop, curve: .easeIn, force: 2, duration: 1, delay: 1)
    }
    
    // MARK: - IB Actions
    @IBAction func startAnimation(_ sender: SpringButton) {
        
        switch currentAnimation {
        case .pop:
            
            setupAnimation(animation: .pop, curve: .easeIn, force: 2, duration: 1, delay: 1)
            setupLabels(preset: .pop, curve: .easeIn, force: 2, duration: 1, delay: 1)
            
            currentAnimation = .slideLeft
            startButton.setTitle("slideLeft", for: .normal)
            
        case .slideLeft:
            
            setupAnimation(animation: .slideLeft, curve: .easeOut, force: 2, duration: 1, delay: 1)
            setupLabels(preset: .slideLeft, curve: .easeIn, force: 2, duration: 1, delay: 1)
            
            currentAnimation = .slideRight
            startButton.setTitle("slideRight", for: .normal)
            
        case .slideRight:
            
            setupAnimation(animation: .slideRight, curve: .easeInSine, force: 2, duration: 1, delay: 1)
            setupLabels(preset: .slideRight, curve: .easeIn, force: 2, duration: 1, delay: 1)
            
            currentAnimation = .slideDown
            startButton.setTitle("slideDown", for: .normal)
            
        case .slideDown:
            
            setupAnimation(animation: .slideDown , curve: .easeOutSine, force: 2, duration: 1, delay: 1)
            setupLabels(preset: .slideDown, curve: .easeIn, force: 2, duration: 1, delay: 1)
            
            currentAnimation = .slideUp
            startButton.setTitle("slideUp", for: .normal)
            
        case .slideUp:
            
            setupAnimation(animation: .slideUp, curve: .easeIn, force: 2, duration: 1, delay: 1)
            setupLabels(preset: .slideUp, curve: .easeIn, force: 2, duration: 1, delay: 1)
            
            currentAnimation = .squeezeLeft
            startButton.setTitle("squeezeLeft", for: .normal)
            
        case .squeezeLeft:
            
            setupAnimation(animation: .squeezeLeft, curve: .easeIn, force: 2, duration: 1, delay: 1)
            setupLabels(preset: .squeezeLeft, curve: .easeIn, force: 2, duration: 1, delay: 1)
            
            currentAnimation = .squeezeRight
            startButton.setTitle("squeezeRight", for: .normal)
            
        case .squeezeRight:
            
            setupAnimation(animation: .squeezeRight, curve: .easeIn, force: 2, duration: 1, delay: 1)
            setupLabels(preset: .squeezeRight, curve: .easeIn, force: 2, duration: 1, delay: 1)
            
            currentAnimation = .squeezeDown
            startButton.setTitle("squeezeDown", for: .normal)
            
        case .squeezeDown:
            
            setupAnimation(animation: .squeezeDown, curve: .easeIn, force: 2, duration: 1, delay: 1)
            setupLabels(preset: .squeezeDown, curve: .easeIn, force: 2, duration: 1, delay: 1)
            
            currentAnimation = .squeezeUp
            startButton.setTitle("squeezeUp", for: .normal)
            
        case .squeezeUp:
            
            setupAnimation(animation: .squeezeUp, curve: .easeIn, force: 2, duration: 1, delay: 1)
            setupLabels(preset: .squeezeUp, curve: .easeIn, force: 2, duration: 1, delay: 1)
            
            currentAnimation = .fadeIn
            startButton.setTitle("fadeIn", for: .normal)
            
        case .fadeIn:
            
            setupAnimation(animation: .fadeIn, curve: .easeIn, force: 2, duration: 1, delay: 1)
            setupLabels(preset: .fadeIn, curve: .easeIn, force: 2, duration: 1, delay: 1)
            
            currentAnimation = .fadeOut
            startButton.setTitle("fadeOut", for: .normal)
            
        case .fadeOut:
            
            setupAnimation(animation: .fadeOut, curve: .easeIn, force: 2, duration: 1, delay: 1)
            setupLabels(preset: .fadeOut, curve: .easeIn, force: 2, duration: 1, delay: 1)
            
            currentAnimation = .fadeOutIn
            startButton.setTitle("fadeOutIn", for: .normal)
            
        case .fadeOutIn:
            
            setupAnimation(animation: .fadeOutIn, curve: .easeIn, force: 2, duration: 1, delay: 1)
            setupLabels(preset: .fadeOutIn, curve: .easeIn, force: 2, duration: 1, delay: 1)
            
            currentAnimation = .fadeInLeft
            startButton.setTitle("fadeInLeft", for: .normal)
            
        case .fadeInLeft:
            
            setupAnimation(animation: .fadeInLeft, curve: .easeIn, force: 2, duration: 1, delay: 1)
            setupLabels(preset: .fadeInLeft, curve: .easeIn, force: 2, duration: 1, delay: 1)
            
            currentAnimation = .fadeInRight
            startButton.setTitle("fadeInRight", for: .normal)
            
        case .fadeInRight:
            
            setupAnimation(animation: .fadeInRight, curve: .easeIn, force: 2, duration: 1, delay: 1)
            setupLabels(preset: .fadeInRight, curve: .easeIn, force: 2, duration: 1, delay: 1)
            
            currentAnimation = .fadeInDown
            startButton.setTitle("fadeInDown", for: .normal)
            
        case .fadeInDown:
            
            setupAnimation(animation: .fadeInDown, curve: .easeIn, force: 2, duration: 1, delay: 1)
            setupLabels(preset: .fadeInDown, curve: .easeIn, force: 2, duration: 1, delay: 1)
            
            currentAnimation = .fadeInUp
            startButton.setTitle("fadeInUp", for: .normal)
            
        case .fadeInUp:
            setupAnimation(animation: .fadeInUp, curve: .easeIn, force: 2, duration: 1, delay: 1)
            setupLabels(preset: .fadeInUp, curve: .easeIn, force: 2, duration: 1, delay: 1)
            
            currentAnimation = .zoomIn
            startButton.setTitle("zoomIn", for: .normal)
            
        case .zoomIn:
            
            setupAnimation(animation: .zoomIn, curve: .easeIn, force: 2, duration: 1, delay: 1)
            setupLabels(preset: .zoomIn, curve: .easeIn, force: 2, duration: 1, delay: 1)
            
            currentAnimation = .zoomOut
            startButton.setTitle("zoomOut", for: .normal)
            
        case .zoomOut:
            setupAnimation(animation: .zoomOut, curve: .easeIn, force: 2, duration: 1, delay: 1)
            setupLabels(preset: .zoomOut, curve: .easeIn, force: 2, duration: 1, delay: 1)
            
            currentAnimation = .fall
            startButton.setTitle("fall", for: .normal)
            
        case .fall:
            
            setupAnimation(animation: .fall, curve: .easeIn, force: 2, duration: 1, delay: 1)
            setupLabels(preset: .fall, curve: .easeIn, force: 2, duration: 1, delay: 1)
            
            currentAnimation = .shake
            startButton.setTitle("shake", for: .normal)
            
        case .shake:
            
            setupAnimation(animation: .shake, curve: .easeIn, force: 2, duration: 1, delay: 1)
            setupLabels(preset: .shake, curve: .easeIn, force: 2, duration: 1, delay: 1)
            
            currentAnimation = .flipX
            startButton.setTitle("flipX", for: .normal)
            
        case .flipX:
            
            setupAnimation(animation: .flipX, curve: .easeIn, force: 2, duration: 1, delay: 1)
            setupLabels(preset: .flipX, curve: .easeIn, force: 2, duration: 1, delay: 1)
            
            currentAnimation = .flipY
            startButton.setTitle("flipY", for: .normal)
            
        case .flipY:
            
            setupAnimation(animation: .flipY, curve: .easeIn, force: 2, duration: 1, delay: 1)
            setupLabels(preset: .flipY, curve: .easeIn, force: 2, duration: 1, delay: 1)
            
            currentAnimation = .morph
            startButton.setTitle("morph", for: .normal)
            
        case .morph:
            
            setupAnimation(animation: .morph, curve: .easeIn, force: 2, duration: 1, delay: 1)
            setupLabels(preset: .morph, curve: .easeIn, force: 2, duration: 1, delay: 1)
            
            currentAnimation = .squeeze
            startButton.setTitle("squeeze", for: .normal)
            
        case .squeeze:
            
            setupAnimation(animation: .squeeze, curve: .easeIn, force: 2, duration: 1, delay: 1)
            setupLabels(preset: .squeeze, curve: .easeIn, force: 2, duration: 1, delay: 1)
            
            currentAnimation = .flash
            startButton.setTitle("flash", for: .normal)
            
        case .flash:
            
            setupAnimation(animation: .flash, curve: .easeIn, force: 2, duration: 1, delay: 1)
            setupLabels(preset: .flash, curve: .easeIn, force: 2, duration: 1, delay: 1)
            
            currentAnimation = .wobble
            startButton.setTitle("wobble", for: .normal)
            
        case .wobble:
            
            setupAnimation(animation: .wobble, curve: .easeIn, force: 2, duration: 1, delay: 1)
            setupLabels(preset: .wobble, curve: .easeIn, force: 2, duration: 1, delay: 1)
            
            currentAnimation = .swing
            startButton.setTitle("swing", for: .normal)
            
        case .swing:
            
            setupAnimation(animation: .swing, curve: .easeIn, force: 2, duration: 1, delay: 1)
            setupLabels(preset: .swing, curve: .easeIn, force: 2, duration: 1, delay: 1)
            
            currentAnimation = .pop
            startButton.setTitle("pop", for: .normal)
        }
    }
    
    // MARK: - Private Methods
    private func setupAnimation(animation: AnimationPreset, curve: AnimationCurve, force: Int, duration: Int, delay: Int) {
        animationView.animation = animation.rawValue
        animationView.curve = curve.rawValue
        animationView.force = CGFloat(force)
        animationView.duration = CGFloat(duration)
        animationView.delay = CGFloat(delay)
        animationView.animate()
    }
    
    private func setupLabels(preset: AnimationPreset, curve: AnimationCurve, force: Int, duration: Int, delay: Int) {
        presetLabel.text = "Preset: \(preset.rawValue)"
        curveLabel.text = "Curve: \(curve.rawValue)"
        forceLabel.text = "Force: \(force)"
        durationLabel.text = "Duration: \(duration)"
        delayLabel.text = "Delay: \(delay)"
    }
}

