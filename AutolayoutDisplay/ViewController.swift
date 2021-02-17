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
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let descriptionTextView: UITextView = {
        
        let textView = UITextView()
        textView.text = "Join us today in our fun and games!"
        textView.font = UIFont.boldSystemFont(ofSize: 18)
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.textAlignment = .center
        textView.isEditable = false
        textView.isScrollEnabled = false
        return textView
    }()
    
    let subTextView: UITextView = {

        let textView = UITextView()
        textView.text = "Drop your dog for some doggy day fun"
        textView.textAlignment = .center
        textView.isEditable = false
        textView.isScrollEnabled = false
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
   
       
     
        view.addSubview(descriptionTextView)
        view.addSubview(subTextView)
        setUpLayout()
      
        
    }
    
    private func setUpLayout() {
        
        let topImageContainerView = UIView()
        topImageContainerView.backgroundColor = .clear
        view.addSubview(topImageContainerView)
        topImageContainerView.translatesAutoresizingMaskIntoConstraints = false
        
        
        topImageContainerView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        topImageContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        topImageContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        topImageContainerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        //add image to topImageContainer
        topImageContainerView.addSubview(pawImage)
        //image constraints
        pawImage.centerXAnchor.constraint(equalTo: topImageContainerView.centerXAnchor).isActive = true
        pawImage.centerYAnchor.constraint(equalTo: topImageContainerView.centerYAnchor).isActive = true
        pawImage.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
       
        //text description constraints
        descriptionTextView.topAnchor.constraint(equalTo: topImageContainerView.bottomAnchor).isActive = true
        descriptionTextView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        descriptionTextView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        descriptionTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        
       // subTextView constraints
        subTextView.topAnchor.constraint(equalTo: topImageContainerView.bottomAnchor, constant: 100).isActive = true
        subTextView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        subTextView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        subTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
    }

}

