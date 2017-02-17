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
        
        if checkWin() > 0 {
            print("\(checkWin()) won!")
        }
    }
    
    func checkWin() -> Int{
        let screenHeight = UIScreen.main.bounds.height
        let numberOfTapsToWin = screenHeight/20
        
        let tapsDifferences = CGFloat(player1NumberOfTap - player2NumberOfTap)
        if tapsDifferences >= numberOfTapsToWin{
            return 1
        } else if tapsDifferences <= -numberOfTapsToWin{
            return 2
        }
        return 0
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

