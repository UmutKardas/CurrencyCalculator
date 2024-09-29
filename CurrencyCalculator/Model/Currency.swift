//
//  Currency.swift
//  CurrencyCalculator
//
//  Created by Hüseyin Umut Kardaş on 29.09.2024.
//
import Foundation

struct Currency: Codable {
    let success: Bool
    let timestamp: Int
    let base, date: String
    let rates: [String: Double]
}
