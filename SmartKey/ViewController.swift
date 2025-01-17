//
//  ViewController.swift
//  SmartKey
//
//  Created by s99471379 on 2020/10/2.
//  Copyright © 2020 s99471379. All rights reserved.
//

import UIKit

var membername : String = ""
var member1acc = "member1"
var member1psw = "pwmember1"
var member2acc = "member2"
var member2psw = "pwmember2"

var adminacc = "admin"
var adminpsw = "admin"



class ViewController: UIViewController {

    
    @IBOutlet weak var txt_account: UITextField!
    @IBOutlet weak var txt_passwd: UITextField!
    @IBOutlet weak var swh_admin: UISwitch!
    @IBOutlet weak var lbl_stats: UILabel!
    @IBAction func btn_login(_ sender: UIButton)
    {
        let memberUI = storyboard?.instantiateViewController(identifier: "vc_member")  as! MemberViewController
        let AdminUI = storyboard?.instantiateViewController(identifier: "vc_admin")  as! AdminViewController
        if txt_account.text != "" || txt_passwd.text != ""
        {
            if swh_admin.isOn == false
            {
                if txt_account.text == member1acc && txt_passwd.text == member1psw
                {
                    membername = "爸爸"
                    present(memberUI, animated: true)
                }
                else if txt_account.text == member2acc && txt_passwd.text == member2psw
                {
                    membername = "妹妹"
                    present(memberUI, animated: true)
                }
                else
                {
                    lbl_stats.text = "帳號或密碼錯誤！"
                }
            }
            else if swh_admin.isOn == true
            {
                if txt_account.text == adminacc && txt_passwd.text == adminpsw
                {
                    present(AdminUI, animated: true)
                }
                else
                {
                    lbl_stats.text = "帳號或密碼錯誤！"
                }
            }
        }
        else
        {
            lbl_stats.text = "請輸入帳號及密碼！"
        }

    }
    


}

