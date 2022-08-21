//
//  ThreeViewController.swift
//  Path
//
//  Created by brubru on 20.08.2022.
//

import UIKit

class ThreeViewController: UIViewController {
    // в лейбл передать имя и фамилию из модели и передать экземпляр модели дальше
    var character: Character!
    
    @IBOutlet var fullNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fullNameLabel.text = "\(character.name)  \(character.surename)"
    }
    
}
