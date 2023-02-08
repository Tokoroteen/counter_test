//
//  ViewController.swift
//  counter_test
//
//  Created by Tokoroteen on 2023/02/08.
//

import UIKit

class ViewController: UIViewController {
    
    var number: Int = 0
    //var 変数名: データの型 = 初期値
    @IBOutlet var label: UILabel!
    //@IBOutlet var 変数名: データの型!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //数値の足し算処理
    @IBAction func plus(){
            number = number + 1
            label.text = String(number)
        }


}

