//
//  ViewController.swift
//  PasswordHacker
//
//  Created by 鈴木廉太郎 on 2024/11/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var resultLabel1: UILabel!
    @IBOutlet var resultLabel2: UILabel!
    @IBOutlet var resultLabel3: UILabel!
    @IBOutlet var resultLabel4: UILabel!
    
    @IBOutlet var countLabel: UILabel!
    
    var password = Int.random(in: 0000...1200)
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(password)
    }
   
    
    
    @IBAction func start() {
        for i in 0...9999 {
            
            //RunLoop.main.run(until: Date(timeIntervalSinceNow: 0.0005))
            print(i)
            //countLabel.text = String(i)
            countLabel.text = "レンだよ"
            if i == password {
                var digits = [Int]()
                for _ in 0...3 {
                    digits.append(password % 10 )
                    password = password / 10
                    
                }
                resultLabel1.text = String(digits[0])
                resultLabel2.text = String(digits[1])
                resultLabel3.text = String(digits[2])
                resultLabel4.text = String(digits[3])
            
                
                
            }
        }
        
    }
    @IBAction func reset() {
        password = Int.random(in: 0000...1200)
        countLabel.text = "「Start」ボタンを押して解析開始"
        resultLabel1.text = "0"
        resultLabel2.text = "0"
        resultLabel3.text = "0"
        resultLabel4.text = "0"
        print(password)
        
    }


}

