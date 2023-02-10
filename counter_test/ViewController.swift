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
        //print(number)
        label.text = String(number)
        
        //もしnumberが10になったら、、、
        if number == 10 {
            //Bの画面に遷移させるコード
            self.performSegue(withIdentifier: "toSecond", sender: nil)
        }
    }
    
    //    次の画面に値を渡すときに使う関数(メソッド)
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //次の画面(B画面)を取得(定義)
        let tsuginoViewController = segue.destination as! SecondViewController
        
        //実際に値をB画面の受け皿に渡すコード
        tsuginoViewController.passedNumber = number
    }
    
    @IBAction func minus(){
        number = number - 1
        label.text = String(number)
    }
    
    @IBAction func kakeru(){
        number = number * 2
        label.text = String(number)
    }
    
    @IBAction func waru(){
        number = number / 2
        label.text = String(number)
    }
    
    @IBAction func amari(){
        number = number % 3
        label.text = String(number)
    }
    
    @IBAction func clear(){
        number = 0
        label.text = String(number)
    }
}

