//
//  TemplateViewController.swift
//  TemplatePattern
//
//  Created by Bomi on 2018/5/28.
//  Copyright © 2018年 Bomi. All rights reserved.
//

/*
 TemplatePattern
 
 using ViewController to demonstrate Template pattern
 
 for iOS using Swift
 
 */

import UIKit

protocol ControllerLifeCycleHook {
    func viewDidLoad()
    func viewWillAppear(_ animated:Bool)
    func viewWillDisappear(_ animated:Bool)
    func viewWillLayoutSubviews()
    func viewDidLayoutSubviews()
    func didReceiveMemoryWarning()
}

public class TemplateViewController : UIView, ControllerLifeCycleHook {
    
    private var isReceiveMemoryWarning : Bool = false
    
    // Template Method
    fileprivate func lifeCycle() {
        viewDidLoad()
        viewWillAppear(true)
        viewWillDisappear(true)
        viewWillLayoutSubviews()
        viewDidLayoutSubviews()
        if (isReceiveMemoryWarning) {
            didReceiveMemoryWarning()
        }
    }
    
    // Hooks for subclass to implement
    
    internal func viewDidLoad() {}
    
    internal func viewWillAppear(_ animated:Bool) {}
    
    internal func viewWillDisappear(_ animated:Bool) {}
    
    internal func viewWillLayoutSubviews() {}
    
    internal func viewDidLayoutSubviews() {}
    
    internal func didReceiveMemoryWarning() {}
    
    // Private method
    private func anotherOperation() {}
}
