//
//  ViewController.swift
//  tennis
//
//  Created by Life is Tech on 2018/08/09.
//  Copyright © 2018年 Life is Tech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let savedata: UserDefaults = UserDefaults.standard
    var winnerName: String = ""
    var num: Int = 0
    
    // number1,2,3 -> player1 point, gamge, set
    // number4,5,6 -> player2 point, gamge, set
    var number1: Int = 0            //ポイント
    @IBOutlet var label1: UILabel!
    
    var number2: Int = 0   // game
    @IBOutlet var label2: UILabel!

    var number3: Int = 0            //set
    @IBOutlet var label3: UILabel!
    
    var number4: Int = 0 // point
    @IBOutlet var label4: UILabel!
    
    var number5: Int = 0            //game
    @IBOutlet var label5: UILabel!
    
    var number6: Int = 0    // set
    @IBOutlet var label6: UILabel!
    
    
    @IBOutlet var label9: UILabel!
    
    @IBOutlet var label10: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label9.text = savedata.object(forKey: "text1") as! String
        label10.text = savedata.object(forKey: "text2") as! String
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // player1
    @IBAction func plus1(){
        number1 = number1 + 1
        
        // point関係
        if number1 == 1{
            label1.text = String(15)
        }else if number1 == 2{
            label1.text = String(30)
        }else if number1 >= 3{
           if number4 <= 2{
              label1.text = String(40)
           }
            if number1 == 4 && number4 <= 2 {
                number2 = number2 + 1
                label2.text = String(number2)
                number1 = 0
                number4 = 0
                label1.text = String(number1)
                label4.text = String(number4)
           } else if number1 == number4 {
                label1.text = "D"
                label4.text = "D"
            } else if number1 - number4 == 1{
                label1.text = "A"
            } else if number1 - number4 == 2{
                // label1.text = "Win"
                number2 = number2 + 1
                label2.text = String(number2)
                number1 = 0
                number4 = 0
                label1.text = String(number1)
                label4.text = String(number4)
            }
        }
        
        // game関係
        if number2 == 6 {
            number3 += 1
            label3.text = String(number3)
            number2 = 0
            number5 = 0
            label2.text = String(number2)
            label5.text = String(number5)
        }
        // set関係
        if number3 == 2 {
            winnerName = label9.text!
            // 画面遷移して、勝者の名前を表示するのを書く
            performSegueToResult()
        }
    }
    
    //player2
    @IBAction func plus2(){
        number4 = number4 + 1
        
        // point関係
        if number4 == 1{
            label4.text = String(15)
        }else if number4 == 2{
            label4.text = String(30)
        }else if number4 >= 3{
            if number1 <= 2{
                label4.text = String(40)
            }
            if number4 == 4 && number1 <= 2 {
                number5 = number5 + 1
                label5.text = String(number5)
                number1 = 0
                number4 = 0
                label1.text = String(number1)
                label4.text = String(number4)
            } else if number1 == number4 {
                label1.text = "D"
                label4.text = "D"
            } else if number4 - number1 == 1{
                label4.text = "A"
            } else if number4 - number1 == 2{
                // label4.text = "Win"
                number5 = number5 + 1
                label5.text = String(number5)
                number1 = 0
                number4 = 0
                label1.text = String(number1)
                label4.text = String(number4)
            }
        }
        
        // game関係
        if number5 == 6 {
            number6 += 1
            label6.text = String(number6)
            number2 = 0
            number5 = 0
            label2.text = String(number2)
            label5.text = String(number5)
        }
        // set関係
        if number6 == 2 {
            winnerName = label10.text!
            // 画面遷移して、勝者の名前を表示するのを書く
            performSegueToResult()
        }
    }
    
    // segue関係
    func performSegueToResult() {
        performSegue(withIdentifier: "winner", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "winner") {
            
            let resultView = segue.destination as! winner
            resultView.winnerName = self.winnerName
        }
    }

    @IBAction func clear(){
        number1 = 0
        label1.text = String(number1)
        number2 = 0
        label2.text = String(number2)
        number3 = 0
        label3.text = String(number3)
        number4 = 0
        label4.text = String(number4)
        number5 = 0
        label5.text = String(number5)
        number6 = 0
        label6.text = String(number6)
    }

}

