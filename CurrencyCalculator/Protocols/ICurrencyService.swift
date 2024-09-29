//
//  ICurrencyService.swift
//  CurrencyCalculator
//
//  Created by Hüseyin Umut Kardaş on 29.09.2024.
//

import Foundation

protocol ICurrencyService {
    func fetch(path: Path, completion: @escaping (Result<Currency, Error>) -> Void)
}
