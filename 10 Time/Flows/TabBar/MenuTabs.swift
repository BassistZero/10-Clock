//
//  MenuTabs.swift
//  Decimal Time
//
//  Created by Bassist_Zero on 2/26/22.
//

import UIKit

enum MenuTabs: Int {
    case worldClock
    case alarm
    case stopwatch
    case timer

    var title: String {
        switch self {
        case .worldClock:
            return L10n.TabBar.worldClock
        case .alarm:
            return L10n.TabBar.alarm
        case .stopwatch:
            return L10n.TabBar.stopwatch
        case .timer:
            return L10n.TabBar.timer
        }
    }

    var image: UIImage {
        switch self {
        case .worldClock:
            return Icons.TabBar.globe.image
        case .alarm:
            return Icons.TabBar.alarm.image
        case .stopwatch:
            return Icons.TabBar.stopwatch.image
        case .timer:
            return Icons.TabBar.timer.image
        }
    }

}
