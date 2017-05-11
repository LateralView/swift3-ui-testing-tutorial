//
//  UIDevice.swift
//  UITestExample
//
//  Created by Fernando Gonzalez on 2/24/17.
//  Copyright © 2017 LateralView. All rights reserved.
//

import UIKit

extension UIDevice
{
    
    enum ScreenType: String {
        case iPhone4
        case iPhone5
        case iPhone6or7
        case iPhonePlus
        case unknown
    }

    var isPhone: Bool {
        return UIDevice().userInterfaceIdiom == .phone
    }
    
    var screenType: ScreenType {
        guard isPhone else { return .unknown }
        switch UIScreen.main.nativeBounds.height {
        case 960:
            return .iPhone4
        case 1136:
            return .iPhone5
        case 1334:
            return .iPhone6or7
        case 2208:
            return .iPhonePlus
        default:
            return .unknown
        }
    }
    
}
