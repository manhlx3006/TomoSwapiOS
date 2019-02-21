// Copyright SIX DAY LLC. All rights reserved.

import BigInt

extension BigInt {

  func string(units: EthereumUnit, minFractionDigits: Int, maxFractionDigits: Int) -> String {
    let formatter = EtherNumberFormatter.full
    formatter.maximumFractionDigits = maxFractionDigits
    formatter.minimumFractionDigits = minFractionDigits
    return formatter.string(from: self, units: units)
  }

  func string(decimals: Int, minFractionDigits: Int, maxFractionDigits: Int) -> String {
    let formatter = EtherNumberFormatter.full
    formatter.maximumFractionDigits = maxFractionDigits
    formatter.minimumFractionDigits = minFractionDigits
    return formatter.string(from: self, decimals: decimals)
  }

  func shortString(units: EthereumUnit, maxFractionDigits: Int = 5) -> String {
    let formatter = EtherNumberFormatter.short
    formatter.maximumFractionDigits = maxFractionDigits
    return formatter.string(from: self, units: units)
  }

  func shortString(decimals: Int, maxFractionDigits: Int = 5) -> String {
    let formatter = EtherNumberFormatter.short
    formatter.maximumFractionDigits = maxFractionDigits
    return formatter.string(from: self, decimals: decimals)
  }

  func fullString(units: EthereumUnit) -> String {
    return EtherNumberFormatter.full.string(from: self, units: units)
  }

  func fullString(decimals: Int) -> String {
    return self.string(decimals: decimals, minFractionDigits: 0, maxFractionDigits: decimals)
  }

  func displayRate(decimals: Int) -> String {
    return KNRateHelper.displayRate(from: self, decimals: decimals)
  }
}
