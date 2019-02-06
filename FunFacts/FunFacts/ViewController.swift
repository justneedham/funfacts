//
//  ViewController.swift
//  FunFacts
//
//  Created by Justin Needham on 2019-02-01.
//  Copyright © 2019 ___Treehouse___. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var funFactLabel: UILabel!
    @IBOutlet weak var funFactButton: UIButton!
    
    let factProvider = FactProvider()
    let colorProvider = BackgroundColorProvider()

    override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
        funFactLabel.text = factProvider.randomFact(previousFact: nil)
    }

    @IBAction func showFact() {
        funFactLabel.text = factProvider.randomFact(previousFact: funFactLabel.text)

        let randomColor = colorProvider.randomColor(previousColor: view.backgroundColor!)
        view.backgroundColor = randomColor
        funFactButton.tintColor = randomColor
    }
}
