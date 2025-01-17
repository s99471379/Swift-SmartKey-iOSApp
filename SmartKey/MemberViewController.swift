//
//  MemberViewController.swift
//  SmartKey
//
//  Created by s99471379 on 2020/10/3.
//  Copyright © 2020 s99471379. All rights reserved.
//

import UIKit

class MemberViewController: UIViewController {

    @IBOutlet weak var lbl_memberlogininfo: UILabel!

    @IBOutlet weak var img_qrcode: UIImageView!
    @IBAction func btn_logout(_ sender: UIButton)
    {
        let MainUI = storyboard?.instantiateViewController(identifier: "vc_main")  as! ViewController
        present(MainUI, animated: true)
    }
    
    override func viewDidLoad() {
        if membername == "爸爸"
        {
            img_qrcode.image  = UIImage(named: "qr1")
        }
        else if membername == "妹妹"
        {
            img_qrcode.image  = UIImage(named: "qr2")
        }
        lbl_memberlogininfo.text = membername + "，掃描解鎖～"
        super.viewDidLoad()

    }
    

}
