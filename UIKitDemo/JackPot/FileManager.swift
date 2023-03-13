//
//  FileManager.swift
//  UIKitDemo
//
//  Created by Mindaugas Balakauskas on 21/12/2022.
//

import Foundation

enum FileManagerError: Error {
    case fileNotFound
    case dataNotFoundOrParsingFailed
}

class FileManager {
    func get(fileName: String)throws -> Jackpot {
    guard let url
     = Bundle.main.url(forResource: fileName, withExtension: ".json") else {
        throw FileManagerError.fileNotFound
        
    }
    do {
        let data = try Data(contentsOf: url)
        let jackpot = try
            JSONDecoder().decode(Jackpot.self, from: data)
        return jackpot
    } catch (let error){
        print(error)
        throw
        FileManagerError.dataNotFoundOrParsingFailed
    }
    }
}
