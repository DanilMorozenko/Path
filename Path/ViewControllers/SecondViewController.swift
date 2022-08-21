//
//  SecondViewController.swift
//  Path
//
//  Created by brubru on 20.08.2022.
//

import UIKit

class SecondViewController: UIViewController {
    // в лейбл передать имя из модели и передать экземпляр модели дальше
    var character: Character!
    
    @IBOutlet var nameLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = character.name
    }
 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVC = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarVC.viewControllers else { return }
        
        for viewController in viewControllers {
            if let thirdVC = viewController as? ThreeViewController {
                thirdVC.character = character
            } else if let secondNavigationVC = viewController as? UINavigationController {
              guard let fourthVC = secondNavigationVC.viewControllers.first as? FourthViewController else { return }
                fourthVC.character = character
            }
        }
    
    }
}
