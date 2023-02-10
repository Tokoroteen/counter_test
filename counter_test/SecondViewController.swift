//
//  SecondViewController.swift
//  counter_test
//  
//  Created by Tokoroteen on 2023/02/09
//  
//

import UIKit

class SecondViewController: UIViewController {
    //    受け皿を定義
    var passedNumber : Int = 0
    
    @IBOutlet var numberLabel : UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //画面上のラベルに表示させる
        print("passedNumber=", passedNumber)
        numberLabel.text = String(passedNumber)
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func back() {
//        戻るコード
        self.dismiss(animated: true, completion: nil)
    }

}
