//
//  JackPot.swift
//  UIKitDemo
//
//  Created by Mindaugas Balakauskas on 21/12/2022.
//

import Foundation

struct Jackpot: Decodable {
    let gameName: String
    let draws: [Draw]
}

struct Draw: Decodable {
    let date: String
    let numbers: String
    let numbersOfWinners: Int?
    let winningJackpot: String
}
