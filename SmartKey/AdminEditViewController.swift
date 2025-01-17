//
//  AdminEditViewController.swift
//  SmartKey
//
//  Created by s99471379 on 2020/10/3.
//  Copyright © 2020 s99471379. All rights reserved.
//

import UIKit

class AdminEditViewController: UIViewController {
    @IBOutlet weak var txt_adminpsw: UITextField!
    @IBOutlet weak var txt_adminacc: UITextField!
    @IBOutlet weak var lbl_status: UILabel!
    @IBOutlet weak var txt_adminpswsure: UITextField!
    
    @IBAction func btt_finish(_ sender: UIButton)
    {
        if txt_adminacc.text != "" && txt_adminpsw.text != ""
        {
            if txt_adminpsw.text == txt_adminpswsure.text
            {
                adminacc = txt_adminacc.text!
                adminpsw = txt_adminpsw.text!
                lbl_status.text = "已成功更改戶長資訊！"
            }
            else
            {
                lbl_status.text = "密碼不合，請再次確認！"
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
