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
        self.loadAnimateCustomView()
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
        var label = UILabel()
        label.text = "Test Content"
        view.addSubview(label)
    }
    
    func loadAnimateCustomView(){
        let animatedView = AnimatedView(frame: CGRect(x: 100, y: 100, width: 150, height: 150))
        view.addSubview(animatedView)
        animatedView.animateIn()
    }
}

