//
//  UILabel+Inspectable.swift
//  xib-font size-Demo
//
//  Created by 胡忠诚 on 15/12/30.
//  Copyright © 2015年 biyu6. All rights reserved.
//

import UIKit


@IBDesignable

extension UILabel {
    //IBInspectable是Xcode7.0推出的新功能,可以给 xib/sb增加设置属性,并且是实时渲染的
    @IBInspectable var fontSize: CGFloat {
        get {
            return font.lineHeight
        }
        set {
            //根据不同的屏幕设备去修改字体的大小(iPhone3GS ->1; iPhone4-iPhone6 -> 2; iPhone6p-iPhone6ps-->3)
            var scale = UIScreen.mainScreen().scale
            
            scale = scale == 3.0 ? 1.2 : 1//如果scale是3.0,字体大小*1.2,否则就按原来的显示
            //设置文本字体
            font = UIFont.systemFontOfSize(newValue * scale)//
        }
    }
}




