//
//  MyState.swift
//  iOS_inhouse_work
//
//  Created by ihub on 06/05/25.
//

import Foundation
import Combine

@propertyWrapper
final class MyState<Value>{
    
    private var subject: CurrentValueSubject<Value, Never>
    
    var wrappedValue: Value{
        get{ subject.value }
        set{
            subject.send(newValue)
        }
    }
    
    // MARK: The projectedValue in a @propertyWrapper is what allows you to access the $variable syntax.
    var projectedValue: AnyPublisher<Value, Never>{
        subject.eraseToAnyPublisher()
    }
    
    init(wrappedValue: Value) {
        self.subject = CurrentValueSubject(wrappedValue)
    }
}
