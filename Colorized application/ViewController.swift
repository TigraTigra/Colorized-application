//
//  ViewController.swift
//  Colorized application
//
//  Created by Pavel Mazurenko on 09.05.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBAction func sliderAction(_ sender: UISlider) {
        setColor()
        switch sender {
        case redSlider:
            redLabel.text = string(from: redSlider)
        case greenSlider:
            greenLabel.text = string(from: greenSlider)
        default:
            blueLabel.text = string(from: blueSlider)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorView.layer.cornerRadius = 15
        
       setColor()
        
        redLabel.text = string(from: redSlider)
        greenLabel.text = string(from: greenSlider)
        blueLabel.text = string(from: blueSlider)
    }
    
   
    
    private func setColor() {
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
    
    private func string(from slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
}

