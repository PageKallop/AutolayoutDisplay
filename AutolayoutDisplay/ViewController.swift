//
//  ViewController.swift
//  AutolayoutDisplay
//
//  Created by Page Kallop on 2/16/21.
//

import UIKit

class ViewController: UIViewController {
    
    let pawImage: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "dogprint"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let descriptionTextView: UITextView = {
        
        let textView = UITextView()
        textView.text = "Join us today in our fun and games!"
        textView.translatesAutoresizingMaskIntoConstraints = false 
        return textView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
   
       
        view.addSubview(pawImage)
        view.addSubview(descriptionTextView)
        setUpLayout()
      
        
    }
    
    private func setUpLayout() {
        //image constraints
        pawImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        pawImage.topAnchor.constraint(equalTo:view.topAnchor, constant: 100).isActive = true
        pawImage.widthAnchor.constraint(equalToConstant: 200).isActive = true
        pawImage.heightAnchor.constraint(equalToConstant: 200).isActive = true
       
        //text description constraints
        descriptionTextView.topAnchor.constraint(equalTo: pawImage.bottomAnchor, constant: 150).isActive = true
        descriptionTextView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        descriptionTextView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        descriptionTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        
    }

}

