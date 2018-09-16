//
//  input.swift
//  tennis
//
//  Created by Life is Tech on 2018/08/10.
//  Copyright © 2018年 Life is Tech. All rights reserved.
//

import UIKit

class input: UIViewController, UITextFieldDelegate{
    @IBOutlet var textfield1: UITextField!
    
    @IBOutlet var textfield2: UITextField!
    
    let savedata: UserDefaults = UserDefaults.standard
    
//    @IBOutlet var label1:  UILabel!
//
//    @IBOutlet var label2:  UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        textfield1.delegate = self
        
        textfield2.delegate = self

        // Do any additional setup after loading the view.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Next(){
        savedata.set(textfield1.text, forKey: "text1")
        
                savedata.set(textfield2.text, forKey: "text2")
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
