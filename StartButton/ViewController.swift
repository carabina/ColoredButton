//
//  ViewController.swift
//  StartButton
//
//  Created by Diana Daia on 9/11/18.
//  Copyright © 2018 Diana Daia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var coloredButton: ColoredButton = {
        let b = ColoredButton(frame: .zero)
        view.addSubview(b)
        
        b.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        b.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        b.update(with: { [weak self] in
            self?.view.backgroundColor = .blue
            },
            stopAction: { [weak self] in
            self?.view.backgroundColor = .yellow
        })
        
        return b
    }()
    
    
    // MARK: - View life

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        _ = coloredButton
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

