//
//  DashboardView.swift
//  ActivityDashboard
//
//  Created by ramil on 07.08.2020.
//

import SwiftUI

struct DashboardView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            HStack {
                VStack {
                    StepsActivityView()
                        .frame(height: 300)
                    
                    SleepActivityView()
                        .frame(height: 200)
                }
                VStack {
                    WaterIntakeActivityView()
                        .frame(height: 150)
                    
                    CaloryIntakeView()
                    
                    HeartRateView()
                        .frame(height: 150)
                }
                
            }.padding(.all, 20)
            
            Spacer()
        }
    }
}

struct ActivityTitleView: View {
    let title: String
    let imageName: String
    
    var body: some View {
        HStack {
            Text(title)
                .font(.title)
                .bold()
            Spacer()
            Image(systemName: imageName)
        }
        .padding(.top, 10)
        .padding(.leading, 16)
        .padding(.trailing, 16)
    }
}

struct ActivityInfoView: View {
    let title: String
    let description: String
    
    var body: some View {
        VStack {
            Text(title)
                .font(.title2)
                .bold()
            Text(description)
                .fontWeight(.light)
        }
    }
}
    

struct StepsActivityView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(ColorConstants.activityBackgroundColor)
            
            VStack {
                ActivityTitleView(title: "Activity", imageName: "figure.walk")
                Spacer()
                ActivityInfoView(title: "\(DataManager.todaysStepsCount)", description: "Steps")
                Spacer()
                
                Text("To reach your goal you need \(DataManager.dailyStepsGoal - DataManager.todaysStepsCount) Steps more")
                    .font(.caption2)
                    .fontWeight(.light)
                    .padding(.all)
                Spacer()
            }
        }.foregroundColor(.white)
    }
}

struct SleepActivityView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(ColorConstants.appPrimaryColor)
            
            VStack {
                ActivityTitleView(title: "Sleep", imageName: "cloud.moon.fill")
                Spacer()
                
                Text("6h 45min") //TODO: need to change from data manager
                    .font(.title2)
                    .bold()
                
                Text("To feel good \(DataManager.recommendedSleep)h recommended for you")
                    .font(.caption2)
                    .fontWeight(.light)
                    .padding(.all)
                Spacer()
            }
        }.foregroundColor(.white)
    }
}

struct WaterIntakeActivityView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.white)
            
            VStack {
                ActivityTitleView(title: "Water", imageName: "drop.fill")
                Spacer()
                
                Text("\(DataManager.currentWaterIntake) cups")
                    .font(.title2)
                    .bold()
                
                Text("To reach your goal you need \(DataManager.recommendedWaterIntake - DataManager.currentWaterIntake) cups more")
                    .font(.caption2)
                    .fontWeight(.light)
                    .padding(.all)
                Spacer()
            }
        }.foregroundColor(ColorConstants.appPrimaryColor)
    }
}

struct CaloryIntakeView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(ColorConstants.caloryBackgroundColor)
            
            VStack {
                ActivityTitleView(title: "Calories", imageName: "flame.fill")
                Spacer()
                ActivityInfoView(title: "\(DataManager.todaysCaloryIntake)", description: "Calories")
                Spacer()
            }
        }.foregroundColor(ColorConstants.appPrimaryColor)
    }
}

struct HeartRateView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.white)
            
            VStack {
                ActivityTitleView(title: "Heart", imageName: "suit.heart.fill")
                Spacer()
                ActivityInfoView(title: "\(DataManager.todaysAverageBPM)", description: "bpm")
                Spacer()
            }
        }.foregroundColor(ColorConstants.appPrimaryColor)
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}