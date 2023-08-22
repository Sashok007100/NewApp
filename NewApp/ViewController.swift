//
//  ViewController.swift
//  NewApp
//
//  Created by Alexandr Artemov (Mac Mini) on 19.08.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var skyImageView: UIImageView!
    @IBOutlet weak var changeButton: UIButton!
    
    private var isSun: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        skyImageView.image = UIImage(systemName: "moon")
        skyImageView.tintColor = .gray
        
        changeButton.backgroundColor = .green
    }

    @IBAction func buttonDidTap(_ sender: Any) {
        if isSun {
            skyImageView.image = UIImage(systemName: "moon")
        } else {
            skyImageView.image = UIImage(systemName: "sun.max")
        }
        isSun.toggle()
    }
    
    @IBAction func pressButton(_ sender: Any) {
        print("Кнопка нажата")
    }
}

