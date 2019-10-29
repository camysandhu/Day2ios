//
//  ViewController.swift
//  Day2ios
//
//  Created by MacStudent on 2019-10-28.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var labelSlider: UILabel!
    
    @IBAction func AlertButton(_ sender: UIButton)
    {
        let alert = UIAlertController(title: "Did you bring your towel?", message: "It's recommended you bring your towel before continuing.", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: nil))
        alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))
        
        self.present(alert, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    
    @IBAction func slider(_ sender: UISlider)
    {
        
        labelSlider.text = "\(slider.value)"
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let homeVC = sb.instantiateViewController(withIdentifier: "homeVC") as! HomeViewController
        
        
        self.present(homeVC, animated: true, completion: nil)
    }
    
    

}

