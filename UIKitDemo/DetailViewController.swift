//
//  DetailViewController.swift
//  UIKitDemo
//
//  Created by Mindaugas Balakauskas on 20/12/2022.
//

import UIKit

class DetailViewController: UIViewController {

    var screenTitle: String = ""
    
    @IBOutlet var screenTitleLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        screenTitleLabel.text = screenTitle
        // Do any additional setup after loading the view.
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
