//
//  AdminViewController.swift
//  SmartKey
//
//  Created by s99471379 on 2020/10/3.
//  Copyright © 2020 s99471379. All rights reserved.
//

import UIKit

class AdminViewController: UIViewController {

    @IBAction func btn_newmember(_ sender: UIButton)
    {
        let NewMemberUI = storyboard?.instantiateViewController(identifier: "vc_newmember")  as! NewMemberViewController
        present(NewMemberUI, animated: true)
    }
    
    @IBAction func btn_editmember(_ sender: UIButton)
    {
        let EditMemberUI = storyboard?.instantiateViewController(identifier: "vc_editmember")  as! EditMemberViewController
        present(EditMemberUI, animated: true)
    }
    
    @IBAction func btn_adminedit(_ sender: UIButton)
    {
        let AdminEditUI = storyboard?.instantiateViewController(identifier: "vc_adminedit")  as! AdminEditViewController
        present(AdminEditUI, animated: true)
    }
    
    @IBAction func btn_logout(_ sender: UIButton)
    {
        let MainUI = storyboard?.instantiateViewController(identifier: "vc_main")  as! ViewController
        present(MainUI, animated: true)
    }

}
