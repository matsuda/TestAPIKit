//
//  ViewController.swift
//  TestAPIKit
//
//  Created by kosuke.matsuda on 2017/06/19.
//  Copyright © 2017年 Galapagos. All rights reserved.
//

import UIKit
import APIKit

class ViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        textView.isEditable = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tapButton(_ sender: Any) {
        sendRequest()
    }
    
    func sendRequest() {
        let request = UserRequest()
        Session.send(request) { [unowned self] (result) in
            switch result {
            case .success(let response):
                self.textView.text = "\(response)"
            case .failure(let error):
                print("error >>>", error)
            }
        }
    }
}
