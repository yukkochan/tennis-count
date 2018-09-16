//
//  winner.swift
//  tennis
//
//  Created by Life is Tech on 2018/08/10.
//  Copyright © 2018年 Life is Tech. All rights reserved.
//

import UIKit

class winner: UIViewController {
    
    
    @IBOutlet var winnerlabel: UILabel!
    var num1: Int = 0
//    var num2: Int = 0
    var winnerName : String = ""

    let savedata: UserDefaults = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()
        
        winnerlabel.text = winnerName

       // num1 = savedata.object(forKey: "num1") as! Int
        //label9 == winner1
        if num1 == 1 {
//            winner.text = savedata.object(forKey: "winner1") as! String
        } else if num1 == 2 {
//            winner.text = savedata.object(forKey: "winner2") as! String
    }
//        num1 = savedata.object(forKey: "number5") as! Int
//         num2 = savedata.object(forKey: "number6") as! Int
        
 
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
