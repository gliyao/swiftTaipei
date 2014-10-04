//
//  SMAuthor.swift
//  SimpleReader
//
//  Created by Liyao on 2014/10/3.
//  Copyright (c) 2014年 HaveFun. All rights reserved.
//

import Foundation


// In object-oriented programming (OOP), 
// a class is an extensible program-code-template for creating objects, 
// providing initial values for state (member variables) and implementations of behavior (member functions, methods)
class SMAuthor
{
    // MARK: Member varibles
    let firstName: String
    let lastName: String
    
    // MARK: Initilization
    init(firstName: String, lastName: String){
        self.firstName = firstName
        self.lastName = lastName
    }
    
    // MARK: Member functions
    func fullName() -> String
    {
        return "\(firstName) \(lastName)"
    }
}