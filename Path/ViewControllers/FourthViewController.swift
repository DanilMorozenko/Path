//
//  FourthViewController.swift
//  Path
//
//  Created by brubru on 20.08.2022.
//

import UIKit

class FourthViewController: UIViewController {
    // в лейбл передать полное имя и возраст из модели
    var character: Character!
    
    @IBOutlet var fullInfoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fullInfoLabel.text = "\(character.name)  \(character.surename)  \(character.age)"
    }

    // Вернутья на первый экран при помощи unwindSegue и изменить смайлик на экране FirstVC
    
    
    
}
