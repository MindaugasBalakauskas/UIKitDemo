//
//  JackPotTableViewCell.swift
//  UIKitDemo
//
//  Created by Mindaugas Balakauskas on 21/12/2022.
//

import UIKit

class JackPotTableViewCell: UITableViewCell {
    
    @IBOutlet weak var winningJackPotLbl: UILabel!
    
    @IBOutlet weak var numbersLbl: UILabel!
    
    @IBOutlet weak var numberOfWinnersLbl: UILabel!
    
    @IBOutlet weak var dateLbl: UILabel!

    func updateData(_ jackPotDetails: JackPotDetails) {
        winningJackPotLbl.text = jackPotDetails.winningJackpot
        numbersLbl.text = jackPotDetails.numbers
        numbersLbl.text = "\(jackPotDetails.numberOfWinners ?? -1)"
        dateLbl.text = jackPotDetails.date
    }
}
