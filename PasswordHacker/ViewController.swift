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
    @IBOutlet var resultLabel5: UILabel!
    @IBOutlet var resultLabel6: UILabel!
    @IBOutlet var resultLabel7: UILabel!
    @IBOutlet var resultLabel8: UILabel!
    
    @IBOutlet var countLabel: UILabel!
    
    var password = Int.random(in: 00000...99999999)
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(password)
    }
   
    
    
    @IBAction func start() {
        for i in 0...99999999 {
            
            //RunLoop.main.run(until: Date(timeIntervalSinceNow: 0.00005))
            print(i)
            //countLabel.text = String(i)
            countLabel.text = "解析完了"
            if i == password {
                var digits = [Int]()
                for _ in 0...7 {
                    digits.append(password % 10 )
                    password = password / 10
                    
                }
                resultLabel1.text = String(digits[0])
                resultLabel2.text = String(digits[1])
                resultLabel3.text = String(digits[2])
                resultLabel4.text = String(digits[3])
                resultLabel5.text = String(digits[4])
                resultLabel6.text = String(digits[5])
                resultLabel7.text = String(digits[6])
                resultLabel8.text = String(digits[7])
                
                
                
                
                
            }
            
        }
        let alert: UIAlertController = UIAlertController(title: "解析完了", message: "パスワードの解析が完了しました",preferredStyle: .alert)
        
        alert.addAction(
            UIAlertAction(title: "OK",
                          style: .default,
                          handler: { action in
                              self.navigationController?.popViewController(animated: true)
                              
                          })
            )
            present(alert,animated: true,completion: nil)
        
        
        
       
            
        
    }
    @IBAction func reset() {
        password = Int.random(in: 00000000...99999999)
        countLabel.text = "「Start」ボタンを押して解析開始"
        resultLabel1.text = "0"
        resultLabel2.text = "0"
        resultLabel3.text = "0"
        resultLabel4.text = "0"
        resultLabel5.text = "0"
        resultLabel6.text = "0"
        resultLabel7.text = "0"
        resultLabel8.text = "0"
        print(password)
        
    }


}

