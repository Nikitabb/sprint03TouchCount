//
//  ViewController.swift
//  Touch count
//
//  Created by Никита on 31.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var click: UIButton!
    @IBOutlet weak var touchCount: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var clickButton: Int = 0 {
     didSet{
         updateTouchCount()
      }
     }
    
     private func updateTouchCount() {
        touchCount.text = "Значение счетчика: \(clickButton)"
    }


    @IBAction func buttonDidTap(_ sender: Any) {
        clickButton += 1
    }
}

