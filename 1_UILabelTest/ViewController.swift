//
//  ViewController.swift
//  1_UILabelTest
//
//  Created by 李维强 on 2018/9/6.
//  Copyright © 2018 李维强. All rights reserved.
//

import UIKit

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let label = UILabel(frame: CGRect(x: 100, y: 100, width: 200, height: 80))
        //设置label的背景颜色
        label.backgroundColor = UIColor.red
        //设置文字
        label.text = "我是一个UILabel控件我是一个UILabel控件我是一个UILabel控件我是一个UILabel控件我是一个UILabel控件"
        //设置文字的对齐方式
        label.textAlignment = NSTextAlignment.center
        //设置文字颜色
        label.textColor = UIColor.blue
        //设置文字阴影
        label.shadowColor = UIColor.green
        label.shadowOffset = CGSize(width: 2, height: 2)
        //设置字体
        label.font = UIFont.systemFont(ofSize: 17)
        label.numberOfLines = 0
        //添加到当前视图
        self.view.addSubview(label)
        
        
        
        let label2 = UILabel(frame: CGRect(x: 0, y: 220, width: 200, height: 30))
        label2.isUserInteractionEnabled = true
        let attri = NSMutableAttributedString(string: "我是自定义的字符串")
        attri.addAttributes([NSForegroundColorAttributeName:UIColor.red], range: NSRange(location: 0, length: 2))
        attri.addAttributes([NSFontAttributeName:UIFont.boldSystemFont(ofSize: 22)], range:NSRange(location: 2, length: 3))
        attri.addAttributes([NSLinkAttributeName:NSURL(string: "http://www.baidu.com")!], range: NSRange(location: 5, length: 1))
        attri.addAttributes([NSUnderlineColorAttributeName:UIColor.purple,NSUnderlineStyleAttributeName:2], range: NSRange(location: 6, length: 3))
        label2.attributedText = attri
        self.view.addSubview(label2)
    }
}

