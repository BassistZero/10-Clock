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
            return "World Clock"
        case .alarm:
            return "Alarm"
        case .stopwatch:
            return "Stopwatch"
        case .timer:
            return "Timer"
        }
    }
    
    var image: UIImage {
        switch self {
        case .worldClock:
            return UIImage(systemName: "globe")!
        case .alarm:
            return UIImage(systemName: "alarm.fill")!
        case .stopwatch:
            return UIImage(systemName: "stopwatch.fill")!
        case .timer:
            return UIImage(systemName: "timer")!
        }
    }

}
