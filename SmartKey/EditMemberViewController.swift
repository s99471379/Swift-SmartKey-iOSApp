//
//  EditMemberViewController.swift
//  SmartKey
//
//  Created by s99471379 on 2020/10/3.
//  Copyright © 2020 s99471379. All rights reserved.
//

import UIKit

var editmember = 1
class EditMemberViewController: UIViewController {
    @IBOutlet weak var lbl_currentedit: UILabel!
    @IBOutlet weak var txt_editpsw: UITextField!
    @IBOutlet weak var txt_editacc: UITextField!
    @IBOutlet weak var lbl_status: UILabel!
    @IBOutlet weak var txt_editpswsure: UITextField!
    @IBAction func btn_editmember1(_ sender: UIButton)
    {
        lbl_currentedit.text = "爸爸"
        editmember = 1
    }
    
    @IBAction func btn_editmember2(_ sender: UIButton)
    {
        lbl_currentedit.text = "妹妹"
        editmember = 2
    }
    
    @IBAction func btn_editfinish(_ sender: UIButton)
    {
        if txt_editacc.text != "" && txt_editpsw.text != ""
        {
            if editmember == 1
            {
                if txt_editpsw.text == txt_editpswsure.text
                {
                    member1acc = txt_editacc.text!
                    member1psw = txt_editpsw.text!
                    lbl_status.text = "已成功更改爸爸的登入資訊！"
                }
                else
                {
                    lbl_status.text = "密碼不合，請再次確認！"
                }
            }
            else if editmember == 2
            {
                if txt_editpsw.text == txt_editpswsure.text
                {
                    member2acc = txt_editacc.text!
                    member2psw = txt_editpsw.text!
                    lbl_status.text = "已成功更改妹妹的登入資訊！"
                }
                else
                {
                    lbl_status.text = "密碼不合，請再次確認！"
                }
            }
        }
        else
        {
            lbl_status.text = "請完整填寫欄位！"
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
