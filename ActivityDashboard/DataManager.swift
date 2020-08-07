//
//  DataManager.swift
//  ActivityDashboard
//
//  Created by ramil on 07.08.2020.
//

import Foundation
import SwiftUI

struct DataManager {
    
    public static let recommendedWaterIntake = 6
    public static let recommendedSleep = 8
    public static let recommendedCaloryIntake = 5000
    public static let dailyStepsGoal = 10000
    
    public static let currentWaterIntake = 4
    public static let todaysSleep = 6.75
    public static let todaysCaloryIntake = 2700
    public static let todaysAverageBPM = 120
    public static let todaysStepsCount = 3789
    
    public static let sleepData: [CGFloat] = [2, 4, 3, 5, 7, 6.75, 3.5, 5]
    
    public static func getSleepData() -> [CGFloat] {
        var data: [CGFloat] = []
        
        for sleep in sleepData {
            data.append(sleep/CGFloat(recommendedSleep))
        }
        return data
    }
    
    public static func getCaloryProgress() -> CGFloat {
        let progress: CGFloat = CGFloat(CGFloat(todaysCaloryIntake)/CGFloat(recommendedCaloryIntake))
        return progress
    }
}
