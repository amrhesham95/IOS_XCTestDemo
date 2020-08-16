//
//  PlayData.swift
//  XCTestDemo
//
//  Created by Amr Hesham on 8/15/20.
//  Copyright © 2020 Amr Hesham. All rights reserved.
//

import Foundation
class PlayData {
    var allWords = [String]()
    var wordCounts: NSCountedSet!
    private(set) var filteredWords = [String]()

    
    init() {
        if let path = Bundle.main.path(forResource: "plays", ofType: "txt") {
            if let plays = try? String(contentsOfFile: path) {
                //to convert a string into an array, but this time the method is different because we pass in a character set rather than string. This new method splits a string by any number of characters rather than a single string, which is important because we want to split on periods, question marks, exclamation marks, quote marks and more.
                allWords = plays.components(separatedBy: CharacterSet.alphanumerics.inverted)
                allWords = allWords.filter({
                    $0 != ""
                })
                wordCounts = NSCountedSet(array: allWords)
                let sorted = wordCounts.allObjects.sorted { wordCounts.count(for: $0) > wordCounts.count(for: $1) }
                allWords = sorted as! [String]
                applyUserFilter("swift")
    
        }
        
    }
    
    }
    
    func applyUserFilter(_ input: String) {
        if let userNumber = Int(input) {
            //we have got a number
            filteredWords = allWords.filter { self.wordCounts.count(for: $0) >= userNumber }
        } else {
            // we have got a string
            filteredWords = allWords.filter { $0.range(of: input, options: .caseInsensitive) != nil }
        }    }
    
    
    
}
