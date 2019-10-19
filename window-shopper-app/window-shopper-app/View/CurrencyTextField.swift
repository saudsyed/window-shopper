//
//  CurrencyTextField.swift
//  window-shopper-app
//
//  Created by Syed Saud on 15/10/2019.
//  Copyright © 2019 Syed Saud. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTextField: UITextField {
    
    override func draw(_ rect: CGRect) {
        let size : CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size / 2, width: size + 20, height: size))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.7563322518, green: 0.818897457, blue: 0.909789159, alpha: 0.8)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = Locale.current
        formatter.currencySymbol = "PKR"
        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl)
    }

    override func prepareForInterfaceBuilder() {
            customizedView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizedView()
        
        }
    
        func customizedView() {
            
                backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2)
                    layer.cornerRadius = 5.0
                    textAlignment = .center
                    clipsToBounds = true
                   
                    if placeholder == nil {
                       placeholder = " "
                    }
                   
                    if let p = placeholder {
                        let place = NSAttributedString(string: p, attributes: [NSAttributedString.Key.foregroundColor : #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
                        attributedPlaceholder = place
                    textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            
        }
        
    }

}
