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
    
    public static let heartRateData: [Int] = [127, 105, 97, 126, 103, 95, 117, 118, 80, 102]
    
    public static let stepsCountData: [Int] = [420, 404, 323, 105, 297, 126, 203, 195, 401, 158, 180, 102]
    public static let stepsCountDataTime: [String] = ["09:00", "11:00", "13:00", "15:00", "17:00"]
    
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
    
    public static func getAverateHartRate() -> Int {
        var total: Int = 0
        for item in heartRateData {
            total = total + Int(item)
        }
        let average: Int = total / heartRateData.count
        return average
    }
    
    public static func getHeartRateData() -> [CGFloat] {
        var data: [CGFloat] = []
        let highest = heartRateData.max()!
        for rate in heartRateData {
            data.append(CGFloat(rate)/CGFloat(highest))
        }
        return data
    }
    
    public static func getStepCountData() -> [CGFloat] {
        var data: [CGFloat] = []
        let highest = stepsCountData.max()!
        for step in stepsCountData {
            data.append(CGFloat(step)/CGFloat(highest))
        }
        return data
    }
}
