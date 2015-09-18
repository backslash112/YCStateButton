//
//  YCStateButton.swift
//  YCStateButton
//
//  Created by Carl.Yang on 9/18/15.
//  Copyright © 2015 Yang Cun. All rights reserved.
//

import UIKit

public enum YCStateButtonState: Int {
    case Unknown, Selected, Unselected
}

public class YCStateButton: UIButton {
    

    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
    // Drawing code
    }
    */
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.addTarget(self, action: "clicked", forControlEvents: UIControlEvents.TouchUpInside)
    }
    
    func clicked() {
        self.switchSelectedState()
    }
    
    override public func setTitle(title: String?, forState state: UIControlState) {
        if _selectedStateBackgroundImage == nil || _unSelectedStateBackgroundImage == nil {
            fatalError("You must set the selectedStateBackgroundImage and unSelectedStateBackgroundImage before setting the title")
        }
        
        if _fontSize == 0 {
            fatalError("You must set the fontSize before setting the title")
        }
        
        super.setTitle(title, forState: state)
        self.titleLabel?.font = UIFont.systemFontOfSize(_fontSize)
        self.sizeToFit()
        let frame = self.frame
        let PADDING: CGFloat = 25
        let HEIGHT: CGFloat = UIImageView(image: _selectedStateBackgroundImage).frame.height
        self.frame = CGRectMake(frame.origin.x, frame.origin.y, frame.width + PADDING, HEIGHT)
        
        _state = .Unselected
        self.refresh()
    }
    
    var _fontSize: CGFloat = 0
    public var fontSize: CGFloat {
        get {
            fatalError("You can not read from this")
        }
        set {
            _fontSize = newValue
        }
    }
    var _state: YCStateButtonState = .Unknown
    public var selectedState: YCStateButtonState {
        get {
            return _state
        }
        set {
            _state = newValue
            self.refresh()
        }
    }
    
    var _selectedStateBackgroundImage: UIImage!
    public var selectedStateBackgroundImage: UIImage {
        get {
            return _selectedStateBackgroundImage
        }
        set {
            _selectedStateBackgroundImage = newValue
        }
    }
    
    var _unSelectedStateBackgroundImage: UIImage!
    public var unSelectedStateBackgroundImage: UIImage {
        get {
            return _unSelectedStateBackgroundImage
        }
        set {
            _unSelectedStateBackgroundImage = newValue
        }
    }
    
    var _selectedStateTitleColor: UIColor!
    public var selectedStatusTitleColor: UIColor {
        get {
            return _selectedStateTitleColor
        }
        set {
            _selectedStateTitleColor = newValue
        }
    }
    var _unselectedStateTitleColor: UIColor!
    public var unselectedStatusTitleColor: UIColor {
        get {
            return _unselectedStateTitleColor
        }
        set {
            _unselectedStateTitleColor = newValue
        }
    }
    
    func switchSelectedState() {
        _state = _state == .Selected ? .Unselected : .Selected
        self.refresh()
    }
    
    func refresh() {
        if _state == .Selected {
            self.setTitleColor(_selectedStateTitleColor, forState: UIControlState.Normal)
            self.setBackgroundImage(_selectedStateBackgroundImage, forState: UIControlState.Normal)
        } else {
            
            self.setTitleColor(_unselectedStateTitleColor, forState: UIControlState.Normal)
            self.setBackgroundImage(_unSelectedStateBackgroundImage, forState: UIControlState.Normal)
        }
    }
    
    
}
