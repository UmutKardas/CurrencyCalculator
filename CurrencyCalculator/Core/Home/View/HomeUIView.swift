//
//  HomeUIView.swift
//  CurrencyCalculator
//
//  Created by Hüseyin Umut Kardaş on 29.09.2024.
//

import ActivityIndicatorView
import SwiftUI

struct HomeUIView: View {
    @StateObject var viewModel: HomeViewModel = .init(currencyService: CurrencyService())

    var body: some View {
        NavigationStack {
            if let currency = viewModel.currency {
                List {
                    ForEach(currency.rates.keys.sorted(), id: \.self) { key in
                        HStack {
                            Text(key)
                                .font(.title)
                                .fontWeight(.bold)

                            Text("\(currency.rates[key, default: 0.00])")
                                .font(.callout)
                        }
                    }
                }
                .listStyle(PlainListStyle())
                .navigationTitle("Today's Euro Rates")

            } else { LoadingUIView() }
        }
    }
}

#Preview {
    HomeUIView()
}
