//
//  Fraction.swift
//  prog2.1
//
//  Created by James Strathern on 7/18/18.
//  Copyright © 2018 James Strathern. All rights reserved.
//

import Foundation

class Fraction{
    
    // STORED PROPERTIES
    
    var num: Int    //Numerator
    var den: Int    //Denominator
    
    // COMPUTED PROPERTIES
    
    var decimal: Float{
        get {
            return Float(self.num)/Float(self.den)
        }
    }
    
    var description: String {
        return "\(self.num)/\(self.den)"
    }
    
    // INITIALIZERS
    
    /**
        Designated initializer
 
        Numerator and denominator values are passed in the arg
 
        - parameter num: Fraction's numerator
        - parameter den: Fraction's denominator
    */
    init(num : Int, den : Int) {
        assert(den != 0, "Denominator cannot be zero")
        
        self.num = num
        self.den = den
    }
    
    /**
        Convenience initialiser
     
        Numerator is set to some value, denominator
        is set to 1.
     
        - parameter num: Fraction's numerator
     */
    convenience init(num : Int) {
        self.init(num: num, den: 1);
    }
    
    /**
     Default initializer
     
     Numerator is set to 0 and denominator is set to 1
     */
    convenience init() {
        self.init(num: 0, den: 1)
    }
    
    // METHODS
    
    func add(_ f : Fraction) -> Fraction {
        return Fraction(num: self.num*f.den + self.den*f.num, den: self.den*f.den)
    }
    
    func subtract(_ f: Fraction) -> Fraction {
        return Fraction(num: self.num*f.den - self.den*f.num, den: self.den*f.den)
    }
    
    func multiply(_ f: Fraction) -> Fraction {
        return Fraction(num: self.num*f.num, den: self.den*f.den)
    }
    func divide(_ f: Fraction) -> Fraction {
        return Fraction(num: self.num*f.den, den: self.den*f.num)
    }
    
    /**
     Add a fraction to fraction.
     
     - parameter f1: Fraction to add to
     - parameter f2: Fraction to be added
     
     - returns: The result of f1 + f2.
     */
    static func add(_ f1: Fraction, to f2: Fraction) -> Fraction {
        return Fraction(num: f1.num*f2.den + f1.den*f2.num,
                        den: f1.den*f2.den)
    }
    
    /**
     Subtract a fraction from fraction.
     
     - parameter f1: Fraction to subtract
     - parameter f2: Fraction to subtract from
     
     - returns: The result of f2 - f1.
     */
    static func subtract(_ f1: Fraction, from f2: Fraction) -> Fraction {
        return f2.subtract(f1);
    }
    
    /**
     Multiply a fraction by fraction.
     
     - parameter f1: Fraction to multiply
     - parameter f2: Fraction to multiply by
     
     - returns: The result of f1*f2.
     */
    static func multiply(_ f1: Fraction, by f2: Fraction) -> Fraction {
        return f1.multiply(f2)
    }
    
    /**
     Divide a fraction by fraction.
     
     - parameter f1: Fraction to divide
     - parameter f2: Fraction to divide by
     
     - returns: The result of f1/f2.
     */
    static func divide(_ f1: Fraction, by f2: Fraction) -> Fraction {
        return f1.divide(f2)
    }
}
