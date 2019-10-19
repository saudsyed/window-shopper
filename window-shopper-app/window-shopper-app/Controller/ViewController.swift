//
//  ViewController.swift
//  window-shopper-app
//
//  Created by Syed Saud on 15/10/2019.
//  Copyright © 2019 Syed Saud. All rights reserved.
//

import UIKit

class ViewController : UIViewController {

    @IBOutlet weak var wageTxt: CurrencyTextField!
    @IBOutlet weak var priceTxt: CurrencyTextField!
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 1, green: 0.580126236, blue: 0.01286631583, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(ViewController.Calculate), for: .touchUpInside)
        
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
        
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
    }
    
    @objc func Calculate() {
        if let wageTxt = wageTxt.text , let priceTxt = priceTxt.text {
            if let wage = Double(wageTxt) , let price = Double(priceTxt) {
                view.endEditing(true)
                resultLbl.isHidden = false
                hoursLbl.isHidden = false
                resultLbl.text = "\(Wage.getHours(ForWage: wage, AndPrice: price))"
            }
        }
    }
    
    @IBAction func clearCalculatorPressed(_ sender: Any) {
        wageTxt.text = ""
        priceTxt.text = ""
        resultLbl.isHidden = true 
        hoursLbl.isHidden = true
    }
    
}
    


