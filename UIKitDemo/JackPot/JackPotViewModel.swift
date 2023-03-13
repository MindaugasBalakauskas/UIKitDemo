//
//  JackPotViewModel.swift
//  UIKitDemo
//
//  Created by Mindaugas Balakauskas on 21/12/2022.
//

import Foundation

struct JackPotDetails {
    let date: String
    let numbers: String
    let numberOfWinners: Int?
    let winningJackpot: String
}

class JackPotViewModel {
    private let fileManager: FileManager
    private var jackPot: Jackpot?
    var jackPotDetails: [JackPotDetails] = []
    var refreshData : (()->())?
    
    let inputDateFormat = "yyyy-MM-dd'T'HH:mm:ss.sssZ"
    let outputDateFormat = "dd/MM/yyyy"
    init(fileManager: FileManager = FileManager()) {
        self.fileManager = fileManager
    }
    
    private var dateFormatter = DateFormatter()
    
    func getJackpot() {
        do {
            jackPot = try fileManager.get(fileName: "response")
            jackPotDetails = jackPot?.draws.map { draw in
                JackPotDetails(date: draw.date.formatDate(dateFormatter, inputFormate: inputDateFormat, outputFormate: outputDateFormat), numbers: draw.numbers.sort(), numberOfWinners: draw.numbersOfWinners, winningJackpot: draw.winningJackpot)
            } ?? []
            //self.refreshData?()
            
        } catch {
            print("need to handle error in UI")
        }
    }
}

extension String {
    func sort() -> String {
        return self
            .components(separatedBy: ",")
            .compactMap {Int($0)}
            .sorted()
            .map {String($0)}
            .joined(separator: ",")
    }
    func formatDate(_ dateFormatter: DateFormatter, inputFormate: String, outputFormate: String)-> String {
        dateFormatter.dateFormat = outputFormate
        guard let date = dateFormatter.date(from: self)
        else { return "" }
        dateFormatter.dateFormat = outputFormate
        let outputDateStr = dateFormatter.string(from: date)
        return outputDateStr
    }
}
