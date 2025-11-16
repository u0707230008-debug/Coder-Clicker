import SwiftUI

struct SessionVars {
    var fontScale: Double
    var Money: Double
    var RevClic: Double
    var IntervalTime: Double
    var EnterpriseName: String
    var LastClick: Date?
    var LastUpgrade: Date?
    var TotalClicks: Int
    var TotalMoney: Double
    var TotalUpgrades: Int
    var BourseActionPrice: Double
    var BourseActionCost: Double
    var BourseActionCount: Int
    var BourseActionLastUse: Date?
    var BourseActionUpgradeCost: Double
    var BourseActionUpgradeCount: Int
    var numberOfServers: Int
    var ServerStockageLevel: Int
}
var CodeClickerSession: SessionVars = SessionVars(fontScale: 200, Money: 0, RevClic: 200, IntervalTime: 1, EnterpriseName: "CodeClicker", LastClick: nil, LastUpgrade: nil, TotalClicks: 0, TotalMoney: 0, TotalUpgrades: 0, BourseActionPrice: 100, BourseActionCost: 10, BourseActionCount: 0, BourseActionLastUse: nil, BourseActionUpgradeCost: 1000, BourseActionUpgradeCount: 0, numberOfServers: 3, ServerStockageLevel: 3)
