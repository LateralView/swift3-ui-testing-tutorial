//
//  UIImage.swift
//  BaseProject
//
//  Created by Fernando Gonzalez on 3/14/17.
//  Copyright © 2017 LateralView. All rights reserved.
//

import UIKit

extension UIImage {
    
    func resize(toWidth width: CGFloat) -> UIImage?
    {
        let scale = width / self.size.width
        let newHeight = self.size.height * scale
        UIGraphicsBeginImageContext(CGSize(width: width, height: newHeight))
        self.draw(in: CGRect(x: 0, y: 0, width: width, height: newHeight))
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return newImage
    }
    
    func imageWithColor(_ color: UIColor) -> UIImage?
    {
        let rect = CGRect(x: 0, y: 0, width: 1, height: 1)
        UIGraphicsBeginImageContextWithOptions(rect.size, false, 0.0)
        color.setFill()
        UIRectFill(rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        guard let cgImage = image?.cgImage else { return nil }
        return UIImage(cgImage: cgImage)
    }
}

