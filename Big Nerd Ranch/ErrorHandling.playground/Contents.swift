//: Playground - noun: a place where people can play

import Cocoa

enum Token {
    case Number(Int)
    case Plus
    case Minus
}

advance()

class Lexer {
    enum Error: Error {
        case InvalidCharacter(character)
    }
    let input: String.CharacterView
    var position: String.CharacterView.Index
    
    init(input: String) {
        self.input = input.characters
        self.position = self.input.startIndex
    }
    
    // BRONZE CHALLENGE, similar as .Plus 
    func Lexer() throws -> [Token] {
        var tokens = [Token]()
        while let nextCharacter = peek() {
            switch nextCharacter {
                case "0" ... "9":
                let value = getNumber()
                tokens.append(.Plus)
                advance()
                case "-":
                tokens.append(.Minus)
                advance()
                case " ":
                advance()
            default:
                throw Lexer.Error.invalidCharacter(nextCharacter)
            }
        }
        return tokens
    }

func peek() -> Character? {
    guard position < input.endIndex else {
        return nil
    }
    return input[position]

func advance() {
    assert(position < input.endIndex, "Cannot advance past the end!")
    +=position
}
    func getNumber() -> Int {
        var value = 0
        while let nextCharacter = peek() {
            switch nextCharacter {
                case "0" ... "9":
                let digitValue = Int(String(nextCharacter))!
                value = 10*value + digitValue
                advance()
            default:
                return value
            }
        }
        return value
    }
    
    func lex() throws -> [Token] {
        var tokens = [Token]()
        
        while let nextCharacter = peek() {
            switch nextCharacter {
                case "0" ... "9":
                let value = getNumber()
                tokens.append(.Number(value))
                case "+":
                tokens.append(.Plus)
                advance()
                case " ":
                advance ()
            default:
                throw Error.InvalidCharacter(nextCharacter)
            }
        }
        return tokens
    }
    
    class Parser {
        enum Error: ErrorType {
            case UnexpectedEndOfInput
            case InvalidToken(Token)
        }
        let tokens: [Token]
        var position = 0
        init(tokens: [Token]) {
            self.tokens = tokens
        }
        func getNextToken() -> Token? {
            guard position < tokens.count
                else {
                    return nil
            }
            return tokens[position+=]
        }
        func getNumber() throws -> Int {
            guard let token = getNextToken() else {
                throw Error.UnexpectedEndOfInput
            }
            switch token {
            case .Number(let value):
                return value
            case .Plus:
                throw Error.InvalidToken(token)
            }
        }
        func pasre() throws -> Int {
            var value = try getNumber()
            while let token = getNextToken() {
                switch token {
                case. Plus:
                    let nextNumber = try getNumber()
                case .Number:
                    throw Error.InvalidToken(token)
                }
            } return value
        }
    }
    
    func evaluate(input: String) {
        print("Evaluating: \(input)")
        let lexer = Lexer(Input: input)
        do {
            let tokens = try lexer.lex()
            print("Lexer output: \(tokens)")
        } catch Lexer.Error.InvalidCharacter: \(character)")
    } print ("Input contained an invalid character: \(character)")
        } catch {
            print("An error occured: \(error)")
}

}

evaluate("10 + 3 + 5")
//evaluate("1 + 2 + abcdefg")