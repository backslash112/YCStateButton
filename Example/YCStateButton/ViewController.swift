//
//  ViewController.swift
//  YCStateButton
//
//  Created by backslash112 on 09/18/2015.
//  Copyright (c) 2015 backslash112. All rights reserved.
//

import UIKit
import YCStateButton

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.view.backgroundColor = UIColor.blackColor()
        
        let StateButton1 = YCStateButton(frame: CGRectMake(30, 30, 0, 0))
        StateButton1.selectedStateBackgroundImage = UIImage(named: "tag_selected_bg")!
        StateButton1.unSelectedStateBackgroundImage = UIImage(named: "tag_unselected_bg")!
        StateButton1.selectedStatusTitleColor = UIColor(red: 230/255, green: 255/255, blue: 246/255, alpha: 1.0)
        StateButton1.unselectedStatusTitleColor = UIColor.grayColor()
        StateButton1.fontSize = 15
        StateButton1.setTitle("Superman", forState: UIControlState.Normal)
        self.view.addSubview(StateButton1)
        
        let StateButton2 = YCStateButton(frame: CGRectMake(30, 100, 0, 0))
        StateButton2.selectedStateBackgroundImage = UIImage(named: "tag_selected_bg")!
        StateButton2.unSelectedStateBackgroundImage = UIImage(named: "tag_unselected_bg")!
        StateButton2.selectedStatusTitleColor = UIColor(red: 230/255, green: 255/255, blue: 246/255, alpha: 1.0)
        StateButton2.unselectedStatusTitleColor = UIColor.grayColor()
        StateButton2.fontSize = 15
        StateButton2.setTitle("Captain America", forState: UIControlState.Normal)
        self.view.addSubview(StateButton2)
        
        let StateButton3 = YCStateButton(frame: CGRectMake(30, 170, 0, 0))
        StateButton3.selectedStateBackgroundImage = UIImage(named: "tag_selected_bg")!
        StateButton3.unSelectedStateBackgroundImage = UIImage(named: "tag_unselected_bg")!
        StateButton3.selectedStatusTitleColor = UIColor(red: 230/255, green: 255/255, blue: 246/255, alpha: 1.0)
        StateButton3.unselectedStatusTitleColor = UIColor.grayColor()
        StateButton3.fontSize = 15
        StateButton3.setTitle("Superman and Captain America", forState: UIControlState.Normal)
        StateButton3.selectedState = .Selected
        self.view.addSubview(StateButton3)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

