//
//  ContentView.swift
//  ActivityDashboard
//
//  Created by ramil on 07.08.2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            UserInfoView()
            DashboardView()
        }
        .edgesIgnoringSafeArea(.all)
        .background(ColorConstants.appBackgroundColor)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
