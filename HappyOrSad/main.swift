//
//  main.swift
//  HappyOrSad
//
//  Created by Gordon, Russell on 2018-04-04.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation

// Get the user input
var rawInput = readLine()

// Print out the input provided
print("You said:")
print(rawInput)

// Make sure the input is not nil
// (unwrap the optional)
guard let input = rawInput else {
    // If we got here, input is nil, so quit program
    exit(9) // exit with error code 9
}

// Print the verified input
print(input)

// Loop over each character of the input string
var count = 0
for individualCharacter in input {
    
    // DEBUG: What character are we looking at now?
    print(individualCharacter)
    
    // Is the character happy, sav, or neither?
    if individualCharacter == "😃" || individualCharacter == "😄" || individualCharacter == "😊" || individualCharacter == "🙂" {
        count += 1
    } else if individualCharacter == "☹️" || individualCharacter == "🙁" || individualCharacter == "😕" || individualCharacter == "😔" {
        count -= 1
    }
    
}
if count == 0 {
    print("Unsure")
} else if count > 0 {
    print("Happy")
} else if count < 0 {
    print("Sad")
}
