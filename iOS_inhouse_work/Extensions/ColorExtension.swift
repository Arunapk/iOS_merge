//
//  ColorExtension.swift
//  iOS_inhouse_work
//
//  Created by HTS-676 on 05/05/25.
//

import UIKit

extension UIColor{
    static let THEME_COLOR = UIColor(red: 10, green: 20, blue: 30, alpha: 1.0)
}

extension UIColor{
    
    static var random: UIColor{
        return UIColor(red: .random(in: 0.6...1), green: .random(in: 0.6...1), blue: .random(in: 0.6...1), alpha: 1)
    }
}
