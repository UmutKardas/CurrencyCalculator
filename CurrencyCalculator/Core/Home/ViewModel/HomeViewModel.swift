//
//  HomeViewModel.swift
//  CurrencyCalculator
//
//  Created by Hüseyin Umut Kardaş on 29.09.2024.
//

import SwiftUI

final class HomeViewModel: ObservableObject {
    init(currencyService: ICurrencyService) {
        self.currencyService = currencyService
        fetchCurrency()
    }

    @Published var currency: Currency?

    private var currencyService: ICurrencyService

    private func fetchCurrency() {
        currencyService.fetch(path: .euroRates) { completion in
            switch completion {
            case .success(let currency): DispatchQueue.main.async { self.currency = currency }
            case .failure(let error): print(error.localizedDescription)
            }
        }
    }
}
