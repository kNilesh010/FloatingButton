//
//  ViewController.swift
//  FloatingButton
//
//  Created by Nilesh Kumar on 01/02/22.
//

import UIKit

class ViewController: UIViewController {
    
    private let myFloatingButton: UIButton = {
        let myFloatingButton = UIButton()
        
        myFloatingButton.layer.shadowOpacity = 0.5
        myFloatingButton.layer.shadowRadius = 4
        
       // myButton.layer.masksToBounds = true
        myFloatingButton.layer.cornerRadius = 25.0
        myFloatingButton.tintColor = .white
        myFloatingButton.backgroundColor = .red
        let myImage = UIImage(systemName: "plus", withConfiguration: UIImage.SymbolConfiguration(pointSize: 25.0, weight: .medium, scale: .medium))
        myFloatingButton.setImage(myImage, for: .normal)
        myFloatingButton.setTitleColor(.white, for: .normal)
        myFloatingButton.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        return myFloatingButton
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
        view.addSubview(myFloatingButton)
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        myFloatingButton.frame = CGRect(x: view.frame.size.width - 100, y: view.frame.size.height - 100 - view.safeAreaInsets.bottom, width: 50.0, height: 50.0)
    }

}

