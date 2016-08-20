//
//  ViewController.swift
//  LoginNew
//
//  Created by do duy hung on 20/08/2016.
//  Copyright © 2016 do duy hung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tf_users: UITextField!
    
    @IBOutlet weak var tf_pass: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var user = ["hung":"1","hung1":"2"]
    @IBAction func login_action(sender: AnyObject) {
        check()
    }
    
    @IBAction func List_action(sender: AnyObject) {
        ListUser()
    }
    
    @IBAction func xoa(sender: AnyObject) {
        if (check() == true){
            RemoveUser()
        }
        else{
            print ("Khong the xoa")
        }
    }
    
    @IBAction func them(sender: AnyObject) {
        CreateUser()
        print ("Them Thanh Cong")
    }
    
    func check ()->Bool{
        if let password = user[tf_users.text!]{
            if(password == tf_pass.text){
                print("thanh cong")
                return true;
            }
            else{
                print("sai")
                return false;
            }
        }
        else{
            print("khong ton tai")
            return false;
        }
    }
    func ListUser(){
        for i in user{
            print(i);
        }
    }
    func CreateUser()
    {
        let Name = tf_users.text
        let Pass = tf_pass.text
        user[Name!] = Pass!
    }
    func RemoveUser(){
        let Name = tf_users.text
        user.removeValueForKey(Name!)
    }



}

