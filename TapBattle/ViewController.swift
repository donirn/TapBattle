//
//  ViewController.swift
//  TapBattle
//
//  Created by Doni Ramadhan on 2016-12-12.
//  Copyright © 2016 Ramacode. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightConstraint: NSLayoutConstraint!
    
    var player1NumberOfTap = 1
    var player2NumberOfTap = 1
    
    @IBAction func player1DidTap(_ sender: Any) {
        player1NumberOfTap += 1
        updateHeight()
    }
    
    @IBAction func player2DidTap(_ sender: Any) {
        player2NumberOfTap += 1
        updateHeight()
    }
    
    func updateHeight(){
        let height =  CGFloat(player1NumberOfTap - player2NumberOfTap)*10
        heightConstraint.constant = height
        view.layoutIfNeeded()
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

