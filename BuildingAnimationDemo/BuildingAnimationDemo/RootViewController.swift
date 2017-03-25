//
//  RootViewController.swift
//  FunctionalAnimate
//
//  Created by 李修冶 on 2017/3/24.
//  Copyright © 2017年 李修冶. All rights reserved.
//

import UIKit


class RootViewController: UITableViewController {
    
    var titles = ["ViewController" ,"Demo1ViewController" ,"MoveByViewController","ScaleByViewController","RotateByViewController","TranslateByViewController","CornerViewController","BackColorViewController"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titles.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.numLabel.text = titles[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        switch indexPath.row {
        case 0:
            let story = UIStoryboard.init(name: "Main", bundle: nil)
            let ctrl = story.instantiateViewController(withIdentifier: "ViewController")
            show(ctrl, sender: nil)
        case 1:
            let ctrl = Demo1ViewController(nibName: "Demo1ViewController", bundle: nil)
            show(ctrl, sender: nil)
        case 2:
            let ctrl = ScaleByViewController(nibName: "ScaleByViewController", bundle: nil)
            show(ctrl, sender: nil)
        case 3:
            let ctrl = RotateByViewController(nibName: "RotateByViewController", bundle: nil)
            show(ctrl, sender: nil)
        case 4:
            let ctrl = TranslateByViewController(nibName: "TranslateByViewController", bundle: nil)
            show(ctrl, sender: nil)
        case 5:
            let ctrl = CornerViewController(nibName: "CornerViewController", bundle: nil)
            show(ctrl, sender: nil)
        case 6:
            let ctrl = BackColorViewController(nibName: "BackColorViewController", bundle: nil)
            show(ctrl, sender: nil)
        case 7:
            let ctrl = MoveByViewController(nibName: "MoveByViewController", bundle: nil)
            show(ctrl, sender: nil)
        default:
            break
        }
        
    }

}

