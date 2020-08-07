//
//  UserInfoView.swift
//  ActivityDashboard
//
//  Created by ramil on 07.08.2020.
//

import SwiftUI

struct UserInfoView: View {
    var body: some View {
        VStack {
            HStack {
                Spacer()
                ZStack {
                    Capsule()
                        .fill(ColorConstants.appPrimaryColor)
                        .frame(width: 50, height: 100)
                        .offset(y: -20)
                        .clipShape(Rectangle())
                    Image(systemName: "person.crop.circle")
                        .font(.title)
                        .foregroundColor(.white)
                }.padding(.trailing, 20)
            }
            
            HStack {
                VStack(alignment: .leading) {
                    Text("Hi,")
                        .font(.largeTitle)
                        .bold()
                    Text("Alietta")
                        .font(.title)
                        .fontWeight(.light)
                }
                .foregroundColor(ColorConstants.appPrimaryColor)
                .padding(.leading, 20)
                Spacer()
            }
            
        }.padding(.top, 44)
    }
}

struct UserInfoView_Previews: PreviewProvider {
    static var previews: some View {
        UserInfoView()
    }
}
