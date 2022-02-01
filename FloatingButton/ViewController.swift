//
//  ViewController.swift
//  FloatingButton
//
//  Created by Nilesh Kumar on 01/02/22.
//

import UIKit

class ViewController: UIViewController {
    
    private let myButton: UIButton = {
        let myButton = UIButton()
        
        myButton.layer.shadowOpacity = 0.5
        myButton.layer.shadowRadius = 4
        
       // myButton.layer.masksToBounds = true
        myButton.layer.cornerRadius = 25.0
        myButton.tintColor = .white
        myButton.backgroundColor = .red
        let myImage = UIImage(systemName: "plus", withConfiguration: UIImage.SymbolConfiguration(pointSize: 25.0, weight: .medium, scale: .medium))
        myButton.setImage(myImage, for: .normal)
        myButton.setTitleColor(.white, for: .normal)
        myButton.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        return myButton
    }()
    
    @objc func didTapButton(){
        let alertVC = UIAlertController(title: "Add", message: "Add an item", preferredStyle: .alert)
        alertVC.addTextField(configurationHandler: nil)
        alertVC.addAction(UIAlertAction(title: "Save", style: .default, handler: nil))
        alertVC.addAction(UIAlertAction(title: "Cancel", style: .destructive, handler: nil))
        present(alertVC, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(myButton)
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        myButton.frame = CGRect(x: view.frame.size.width - 100, y: view.frame.size.height - 100 - view.safeAreaInsets.bottom, width: 50.0, height: 50.0)
    }

}

