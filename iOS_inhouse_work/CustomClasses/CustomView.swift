//
//  CustomView.swift
//  ScratchApp
//
//  Created by HTS-676 on 07/02/25.
//

import UIKit

class AnimatedView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .systemBlue
        self.layer.cornerRadius = 20
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func animateIn() {
        self.alpha = 0
        self.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
        
        UIView.animate(withDuration: 0.5,
                       delay: 0,
                       usingSpringWithDamping: 0.6,
                       initialSpringVelocity: 1,
                       options: [],
                       animations: {
            self.alpha = 1
            self.transform = .identity
        })
    }
}
