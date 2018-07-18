//
//  main.swift
//  prog2.1
//
//  Created by James Strathern on 7/18/18.
//  Copyright © 2018 James Strathern. All rights reserved.
//

import Foundation

var u: Fraction

u = Fraction(num: 2, den: 3)

print("u=\(u.description)")
print("decimal value of u=\(u.decimal)")

var x: Fraction = Fraction(num: -5)

print("x=\(x.description)")
print("decimal value of x=\(x.decimal)")

var v = Fraction(num: -7, den: 9)

print("v=\(v.description)")
print("decimal value of v=\(v.decimal)")

var f: Fraction

f = Fraction.add(u, to: v)
print("(" + u.description + ")+(" + v.description + ")=" + f.description)

f = Fraction.subtract(u, from: v)
print("(" + u.description + ")-(" + v.description + ")=" + f.description)

f = Fraction.multiply(u, by: v)
print("(" + u.description + ")*(" + v.description + ")=" + f.description)

f = Fraction.divide(u, by: v)
print("(" + u.description + ")/(" + v.description + ")=" + f.description)
