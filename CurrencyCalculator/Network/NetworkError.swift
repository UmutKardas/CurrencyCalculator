//
//  NetworkError.swift
//  CurrencyCalculator
//
//  Created by Hüseyin Umut Kardaş on 29.09.2024.
//

enum NetworkError: Error {
    case invalidURL
    case serverError(String)
}
