//
//  NewMemberViewController.swift
//  SmartKey
//
//  Created by s99471379 on 2020/10/3.
//  Copyright © 2020 s99471379. All rights reserved.
//

import UIKit

class NewMemberViewController: UIViewController {
    
    @IBOutlet weak var txt_membername: UITextField!
    @IBOutlet weak var txt_memberacc: UITextField!
    @IBOutlet weak var txt_memberpsw: UITextField!
    
    @IBOutlet weak var lbl_stats: UILabel!
    
    @IBAction func btn_newmember(_ sender: UIButton)
    {
        if txt_membername.text != "" && txt_memberacc.text != "" && txt_memberpsw.text != ""
        {
            lbl_stats.text = "創建成功！"
        }
        else
        {
            lbl_stats.text = "請完整輸入欄位！"
        }
    }
}
