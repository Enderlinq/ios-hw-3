//
//  ViewController.swift
//  XO-P2
//
//  Created by Wahj Al-duwaisan on 9/27/20.
//  Copyright © 2020 Wahj Al-Duwaisan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var TurnLabel: UILabel!
    @IBOutlet weak var b1: UIButton!
    @IBOutlet weak var b2: UIButton!
    @IBOutlet weak var b3: UIButton!
    @IBOutlet weak var b4: UIButton!
    @IBOutlet weak var b5: UIButton!
    @IBOutlet weak var b6: UIButton!
    @IBOutlet weak var b7: UIButton!
    @IBOutlet weak var b8: UIButton!
    @IBOutlet weak var b9: UIButton!
    
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        buttons = [b1, b2, b3, b4, b5, b6, b7, b8, b9]
        
    }
    var buttons: [UIButton] = []
    
    @IBAction func Click(_ sender: UIButton) {
        if counter % 2 == 0 {
            sender.setTitle("X", for: .normal)
            TurnLabel.text! = "O's Turn"
            self.TurnLabel.textColor = UIColor.systemIndigo
            CheckWinner("X")
        }
        else {
            sender.setTitle("O", for: .normal)
            TurnLabel.text! = "X's Turn"
            self.self.TurnLabel.textColor = UIColor.systemGray
            CheckWinner("O")
        }
        sender.isEnabled = false
        counter += 1
        print(counter)
        
    }
    
    func CheckWinner(_ p: String){
        let bTitles = buttons.map{$0.titleLabel!.text ?? ""}
        let r1 = (bTitles[0], bTitles[1], bTitles[2]) == (p, p, p)
        let r2 = (bTitles[3], bTitles[4], bTitles[5]) == (p, p, p)
        let r3 = (bTitles[6], bTitles[7], bTitles[8]) == (p, p, p)
        let c1 = (bTitles[0], bTitles[3], bTitles[6]) == (p, p, p)
        let c2 = (bTitles[1], bTitles[4], bTitles[7]) == (p, p, p)
        let c3 = (bTitles[2], bTitles[5], bTitles[8]) == (p, p, p)
        let d1 = (bTitles[0], bTitles[4], bTitles[8]) == (p, p, p)
        let d2 = (bTitles[2], bTitles[4], bTitles[6]) == (p, p, p)
        if r1 || r2 || r3 || c1 || c2 || c3 || d1 || d2 {
            //print("\(p) wins!")
            //AlertWinner(winner: p)
            print("\(p) wins!")
            let AlertController = UIAlertController(title: "\(p) wins!", message: "Would you like to restart the game?", preferredStyle: .alert)
            let RestartAction = UIAlertAction(title: "Restart", style: .cancel, handler: { (alert) in
                self.Restart()})
            AlertController.addAction(RestartAction)
                self.present(AlertController, animated: true, completion: nil)
            }
            
        }
    
        func Restart(){
            counter = 0
            //sender.isEnabled = true
            buttons.forEach { button in
                button.setTitle("", for: .normal)
                button.titleLabel!.text = ""
                
            }
            
        }
        
        /*func AlertWinner(winner: String){
         let AlertController = UIAlertController(title: "\(winner) wins!", message: "Would you like to restart the game?", preferredStyle: .alert)
         AlertController.addAction(UIAlertAction(title: "Restart", style: .cancel, handler: { action in
         self.present(AlertController, animated: true, completion: nil)
         self.Restart()
         
         }))*/
        
        
        
        
    }
    
    





