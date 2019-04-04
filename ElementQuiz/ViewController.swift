//
//  ViewController.swift
//  ElementQuiz
//
//  Created by Dhruv Sharma on 2/4/19.
//  Copyright © 2019 Dhruv Sharma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let elementList = ["Carbon", "Gold", "Chlorine", "Sodium"]
    var currentElementIndex = 0

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var answerLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        updateElement()
    }
    
    func updateElement() {
        answerLabel.text = "?"
        let elementName = elementList[currentElementIndex]
        let image = UIImage(named: elementName)
        imageView.image = image
    }

    @IBAction func showAnswer(_ sender: UIButton) {
        answerLabel.text = elementList[currentElementIndex]
    }
    
    @IBAction func goToNextElement(_ sender: UIButton) {
        currentElementIndex = (currentElementIndex + 1) % elementList.capacity
        updateElement()
    }
}

