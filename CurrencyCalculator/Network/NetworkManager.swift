//
//  NetworkManager.swift
//  CurrencyCalculator
//
//  Created by Hüseyin Umut Kardaş on 29.09.2024.
//

import Alamofire

class NetworkManager {
    private let url = "http://data.fixer.io/api/latest?access_key=84d8f43043f15c499fd8f14cf893aba0&format=1"

    func fetch(completion: @escaping (Result<Currency, NetworkError>) -> Void) {
        AF.request(url)
            .validate()
            .responseDecodable(of: Currency.self) { result in
                if let error = result.error {
                    completion(.failure(NetworkError.serverError(error.localizedDescription)))
                }
                else { completion(.success(result.value!)) }
            }
    }
}
