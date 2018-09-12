//
//  ColoredButton.swift
//  ColoredButton
//
//  Created by Diana Daia on 9/11/18.
//  Copyright © 2018 Diana Daia. All rights reserved.
//

import UIKit

final class ColoredButton: UIButton {
    
    private let side: CGFloat = 50
    private var isStopped = true
    private var start: () -> Void = {}
    private var stop: () -> Void = {}
    
    
    // MARK: - Actions
    
    func update(with startAction: @escaping () -> Void, stopAction: @escaping () -> Void) {
        start = startAction
        stop = stopAction
    }
    
    @objc
    private func customAction() {
        if isStopped {
            setTitle("Stop", for: .normal)
            layer.cornerRadius = 0
            start()
            
            isStopped = false
        }
        else {
            setTitle("Start", for: .normal)
            layer.cornerRadius = side / 2
            stop()
            
            isStopped = true
        }
    }
    
    
    // MARK: - Layout
    
    private func setupLayout() {
        translatesAutoresizingMaskIntoConstraints = false
        
        widthAnchor.constraint(equalToConstant: side).isActive = true
        heightAnchor.constraint(equalToConstant: side).isActive = true
        
        layer.cornerRadius = side / 2
        
        backgroundColor = .red
        
        setTitleColor(.white, for: .normal)
        setTitle("Start", for: .normal)
    }
    
    
    // MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupLayout()
        
        addTarget(
            self,
            action: #selector(customAction),
            for: .touchUpInside)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
