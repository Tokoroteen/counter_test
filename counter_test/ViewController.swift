//
//  ViewController.swift
//  counter_test
//
//  Created by Tokoroteen on 2023/02/08.
//

import UIKit

class ViewController: UIViewController {
    
    var number: Double = 0.0
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
        print(number)
        label.text = String(number)
        
        //もしnumberが10になったら、、、
        if number == 10 {
            //Bの画面に遷移させるコード
            self.performSegue(withIdentifier: "toSecond", sender: nil)
        }
    }
    
    @IBAction func minus(){
        number = number - 0.1
        label.text = String(number)
    }
    
    @IBAction func kakeru(){
        number = number * 2.0
        label.text = String(number)
    }
    
    @IBAction func waru(){
        number = number / 2.0
        label.text = String(number)
    }
    
    @IBAction func amari(){
//        number = number % 3
//        label.text = String(number)
    }
    
    @IBAction func clear(){
        number = 0
        label.text = String(number)
    }
}

