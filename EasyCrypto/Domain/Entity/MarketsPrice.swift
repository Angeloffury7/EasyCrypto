//
//  MarketsPrice.swift
//  EasyCrypto
//
//  Created by Mehran on 11/15/1401 AP.
//

import Foundation

struct MarketsPrice: Decodable, Identifiable {
    let id, symbol, name: String?
    let image: String?
    let currentPrice: Double?
    let marketCap, marketCapRank: Int?
    let totalVolume, high24H, low24H, priceChange24H: Double?
    let priceChangePercentage24H, marketCapChange24H, marketCapChangePercentage24H, circulatingSupply: Double?
    let totalSupply, maxSupply: Double?


    enum CodingKeys: String, CodingKey {
        case id = "id"
        case symbol = "symbol"
        case name = "name"
        case image = "image"
        case currentPrice = "current_price"
        case marketCap = "market_cap"
        case marketCapRank = "market_cap_rank"
        case totalVolume = "total_volume"
        case high24H = "high_24h"
        case low24H = "low_24h"
        case priceChange24H = "price_change_24h"
        case priceChangePercentage24H = "price_change_percentage_24h"
        case marketCapChange24H = "market_cap_change_24h"
        case marketCapChangePercentage24H = "market_cap_change_percentage_24h"
        case circulatingSupply = "circulating_supply"
        case totalSupply = "total_supply"
        case maxSupply = "max_supply"
    }
}

extension MarketsPrice {
    // make image url safe
    func safeImageURL() -> String {
        guard let url = self.image else {return ""}
        let safeURL = url.trimmingString()
        return safeURL
    }
}

extension MarketsPrice {
    static let mock  = MarketsPrice.init(id: "bitcoin", symbol: "btc", name: "Bitcoin", image: "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579", currentPrice: 21747, marketCap: 419320825566, marketCapRank: 1, totalVolume: 50153133497, high24H: 22615, low24H: 21596, priceChange24H: -868.336685288763, priceChangePercentage24H: -3.83958, marketCapChange24H: -15645722770.546387, marketCapChangePercentage24H: -3.59699, circulatingSupply: 19286950, totalSupply: 21000000, maxSupply: 21000000)
}
