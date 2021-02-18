//
//  PageCell.swift
//  AutolayoutDisplay
//
//  Created by Page Kallop on 2/18/21.
//

import Foundation
import UIKit

class PageCell: UICollectionViewCell {
    
    let pawImage: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "dogprint"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let descriptionTextView: UITextView = {
        
        let textView = UITextView()
        let attributedText = NSMutableAttributedString(string: "Join us today in our fun and games!", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 18)])
        attributedText.append(NSAttributedString(string: "\n\n\nAre you ready for loads of fun? Don't wait any longer! We hope to see you in our stores soon!", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 13), NSAttributedString.Key.foregroundColor: UIColor.gray]))
        textView.attributedText = attributedText
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.textAlignment = .center
        textView.isEditable = false
        textView.isScrollEnabled = false
        return textView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        setUpLayout()
    }
  
    private func setUpLayout() {
        //creates container view to hold image view
        let topImageContainerView = UIView()
        topImageContainerView.backgroundColor = .clear
        addSubview(topImageContainerView)
        topImageContainerView.translatesAutoresizingMaskIntoConstraints = false
        
        
        topImageContainerView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        topImageContainerView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        topImageContainerView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        topImageContainerView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.5).isActive = true
        //add image to topImageContainer
        topImageContainerView.addSubview(pawImage)
        //image constraints
        pawImage.centerXAnchor.constraint(equalTo: topImageContainerView.centerXAnchor).isActive = true
        pawImage.centerYAnchor.constraint(equalTo: topImageContainerView.centerYAnchor).isActive = true
        pawImage.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
       addSubview(descriptionTextView)
        //text description constraints
        descriptionTextView.topAnchor.constraint(equalTo: topImageContainerView.bottomAnchor).isActive = true
        descriptionTextView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        descriptionTextView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15).isActive = true
        descriptionTextView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0).isActive = true
      
        
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
