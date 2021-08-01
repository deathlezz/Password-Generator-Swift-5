//
//  Password Generator formula
//
//  Created by deathlezz on 1/08/2021.
//

// lowercase letters
let lowercase = "abcdefghijklmnopqrstuvwxyz"
// uppercase letters
let uppercase = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
// numbers
let numbers = "1234567890"
// symbols
let symbols = "!@#$%^&*"

// find 2 random lowercase letters
let randomLower = (0...1).compactMap { _ in lowercase.randomElement() }
// find 2 random uppercase letter
let randomUpper = (0...1).compactMap { _ in uppercase.randomElement() }
// find 2 random numbers
let randomNumber = (0...1).compactMap { _ in numbers.randomElement() }
// find 2 random symbols
let randomSymbol = (0...1).compactMap {_ in symbols.randomElement() }

// merge and shuffle all found characters
let merge = (randomLower + randomUpper + randomNumber + randomSymbol).shuffled()
// convert string array into string
let string = String(merge)
// output
print(string)
