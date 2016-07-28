//
//  XibBaseView.swift
//  XIBDemo
//
//  Created by YC on 16/7/28.
//  Copyright © 2016年 YC. All rights reserved.
//

import UIKit

class XibBaseView: UIView {

    @IBOutlet var contentView: UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        xibSetup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        xibSetup()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        xibSetup()
    }
    
    func xibSetup() {
        if self.contentView != nil {
            return
        }
        
        contentView = loadViewFromNib()
        contentView.frame = bounds
        contentView.autoresizingMask = [UIViewAutoresizing.FlexibleWidth, UIViewAutoresizing.FlexibleHeight]
        
        addSubview(contentView)
    }
    
    func loadViewFromNib() -> UIView {
        let xibName = "\(self.dynamicType)"
        let bundle = NSBundle(forClass: self.dynamicType)
        let nib = UINib(nibName: xibName, bundle: bundle)

        let view = nib.instantiateWithOwner(self, options: nil)[0] as! UIView
        
        return view
    }

}
