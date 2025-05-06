//
//  ViewController.swift
//  iOS_inhouse_work
//
//  Created by ihub on 29/04/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        loadUI()
    }
    
    
    private func loadUI(){
        view.backgroundColor = .red
    }
    
    func basicTestAboutCodeCoverage(){
        let basicVM = BasicViewModel()
        Task{
            await basicVM.fetchUserList()
        }

        view.backgroundColor = .green
        
        var label = UILabel()
        label.text = "Test Content"
        view.addSubview(label)
    }
}

