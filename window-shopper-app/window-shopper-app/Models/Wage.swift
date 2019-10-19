//
//  Wage.swift
//  window-shopper-app
//
//  Created by Syed Saud on 17/10/2019.
//  Copyright © 2019 Syed Saud. All rights reserved.
//

import Foundation
class Wage {
    class func getHours(ForWage Wage: Double, AndPrice Price: Double) -> Int {
        return Int(ceil(Price / Wage))
    }
}
