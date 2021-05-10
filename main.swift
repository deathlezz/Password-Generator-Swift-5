//
//  Password Generator
//
//  Created by deathlezz on 10/05/2021.
//


print("* Welcome to Password Generator *")

while true {
    
    print()
    print("Press ENTER to start: ")
    
    let input = readLine()          // User input
    
    if input == "" {
                
        let smallLetters = "abcdefghijklmnopqrstuvwxyz"          // small letters array
        
        let capitalLetters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"          // capital letters array
        
        let numbers = "1234567890"          // numbers array
        
        let symbols = "!@#$%^&*"          // symbols array
        
        let randomSmallLetters = (0...1).compactMap{ _ in smallLetters.randomElement()}          // finding 2 random small letters
        
        let randomCapitalLetters = (0...1).compactMap{ _ in capitalLetters.randomElement()}          // finding 2 random capital letters
        
        let randomNumbers = (0...1).compactMap{ _ in numbers.randomElement()}          // finding 2 random numbers
        
        let randomSymbols = (0...1).compactMap{ _ in symbols.randomElement()}          // finding 2 random symbols
        
        let mergedCharacters = (randomSmallLetters + randomCapitalLetters + randomNumbers + randomSymbols).shuffled()           // merging and shuffling all characters
        
        let password = String(mergedCharacters)          // without "String" output will be like this: ["j", "M", "3", "5", "i", "@", "!", "X"]
        
        print("Password: \(password)")          // final output

    } else {
        print()
        print("* Wrong key *")          // avoiding wrong keys
        
    }
    
}
