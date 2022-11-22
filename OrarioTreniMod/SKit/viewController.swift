//
//  viewController.swift
//  OrarioTreniMod
//
//  Created by Antonio Giordano on 22/11/22.
//

import Foundation
import UIKit

class viewController: UIViewController{
    	//MARK: Create a new label and set its text, font, and alignment.
    private var label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.preferredFont(forTextStyle: .title1)
        label.text = "Hello, UIKit!"
        label.textAlignment = .center
        
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //MARK: Set view background color to pink
        view.backgroundColor = .systemPink
        
        //MARK: Add the label on the center of the view controller.
        view.addSubview(label)
        NSLayoutConstraint.activate([
            label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            label.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            label.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            label.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20),
        ])
    }
}
