//
//  ColorConstants.swift
//  ActivityDashboard
//
//  Created by ramil on 07.08.2020.
//

import SwiftUI

struct ColorConstants {
    
    public static let appBackgroundColor = Color.init(red: 251/255, green: 251/255, blue: 252/255)
    public static let appPrimaryColor = Color.init(red: 40/255, green: 11/255, blue: 151/255)
    public static let activityBackgroundColor = Color.init(red: 250/255, green: 143/255, blue: 44/255)
    public static let caloryBackgroundColor = Color.init(red: 227/255, green: 218/255, blue: 255/255)
    
    public static let sleepBarColor = Color.init(red: 134/255, green: 115/255, blue: 195/255)
    
    public static let orangeLinearGradient = LinearGradient.init(gradient: Gradient(colors: [activityBackgroundColor, Color.white]), startPoint: .top, endPoint: .bottom)
    
    public static let orangeInvertLinearGradient = LinearGradient.init(gradient: Gradient(colors: [Color.white, activityBackgroundColor]), startPoint: .top, endPoint: .bottom)

}
