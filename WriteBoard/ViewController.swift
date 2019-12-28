//
//  ViewController.swift
//  WriteBoard
//
//  Created by Geek on 2019/12/28.
//  Copyright © 2019 myself. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var writeviewHeight:CGFloat = 50
    let statusBarHeight:CGFloat = 44.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let startY = ScreenHEIGHT - (statusBarHeight + getNavigationBarHeight() + writeviewHeight)
        let writeBoard = AutoWriteBoard.init(frame: CGRect(x: 0, y: startY, width: ScreenWIDTH, height: writeviewHeight), targetView: self.view)
        writeBoard.backgroundColor = UIColor.cyan
        writeBoard.delegate = self
        view.addSubview(writeBoard)
    }
    
    
}

extension ViewController:SendMessageDelegate {
    func sendMessage(message: String?) {
        print(message!)
    }
}
