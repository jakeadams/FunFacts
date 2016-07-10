import Foundation

extension Int {
  static func random(upperBound: Int) -> Int {
    return Int(arc4random_uniform(UInt32(upperBound)))
  }
}
