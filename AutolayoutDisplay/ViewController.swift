//
//  ViewController.swift
//  AutolayoutDisplay
//
//  Created by Page Kallop on 2/16/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemPink
 
        let imageView = UIImageView(image: #imageLiteral(resourceName: "dogprint"))
        view.addSubview(imageView)
        //imageView.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        //enables outolayout for image 
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        imageView.topAnchor.constraint(equalTo:view.topAnchor, constant: 100).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
    }


}

