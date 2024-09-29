//
//  CurrencyService.swift
//  CurrencyCalculator
//
//  Created by Hüseyin Umut Kardaş on 29.09.2024.
//

import Alamofire
import Foundation

class CurrencyService: ICurrencyService {
    func fetch(path: Path, completion: @escaping (Result<Currency, any Error>) -> Void) {
        AF.request(path.rawValue)
            .validate()
            .responseDecodable(of: Currency.self) { result in
                if let error = result.error {
                    completion(.failure(error))
                } else {
                    completion(.success(result.value!))
                }
            }
    }
}
