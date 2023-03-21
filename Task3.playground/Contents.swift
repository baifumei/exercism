import Foundation
"""
Instructions
Determine if a word or phrase is an isogram.

An isogram (also known as a "non-pattern word") is a word or phrase without a repeating letter, however spaces and hyphens are allowed to appear multiple times.

Examples of isograms:

lumberjacks
background
downstream
six-year-old
The word isograms, however, is not an isogram, because the s repeats.
"""

func isIsogram(_ word: String) -> Bool {
    guard word.count > 0 else { return true }
    
    var testedWord: [Character] = []
    
    for character in word.lowercased() {
        if character == " " || character == "-" {
            continue
        } else {
            testedWord.append(character)
        }
    }
    
    testedWord = testedWord.sorted()
    
    
    var prevletter = testedWord[0]
    testedWord.remove(at: 0)
    let answer = true
    
    for letter in testedWord {
        if letter == prevletter {
            return !answer
        }
        prevletter = letter
    }
    return answer
}
