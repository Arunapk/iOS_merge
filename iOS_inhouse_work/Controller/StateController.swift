//
//  StateController.swift
//  iOS_inhouse_work
//
//  Created by ihub on 06/05/25.
//

import UIKit
import Combine

final class StateController: UIViewController {
    
    @MyState private var bgColor: UIColor = .orange
    
    var cancellable = Set<AnyCancellable>()
    
    var refreshTimer: Timer?
    
    var value: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = bgColor
        loadAnimateCustomView()
        refreshTimer = Timer.scheduledTimer(timeInterval: 3, target: self, selector: #selector(timerUpdate), userInfo: nil, repeats: true)
        
        receiver()
    }
    
    private func receiver(){
        $bgColor
            .receive(on: RunLoop.main)
            .sink { [weak self] newColor in
                self?.view.backgroundColor = newColor
            }
            .store(in: &cancellable)
    }
    
    @objc func timerUpdate(){
        value += 3
        
        if value == 15{
            refreshTimer?.invalidate()
            refreshTimer = nil
        }
        
        bgColor = .random
        
        print("color changed : \(value)")
    }
    
    func loadAnimateCustomView(){
        let animatedView = AnimatedView(frame: CGRect(x: 100, y: 100, width: 150, height: 150))
        view.addSubview(animatedView)
        animatedView.animateIn()
    }
    
}
