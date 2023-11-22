//
//  SettingsView.swift
//  Hike
//
//  Created by mohamed ramadan on 22/11/2023.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        List {
            Section {
                HStack {
                    Spacer()
                    Image(systemName: "laurel.leading")
                        .font(.system(size: 80, weight: .black))
                    VStack {
                        Text("Hike")
                            .font(.system(size: 66, weight: .black))
                        Text("Editor's choice")
                            .fontWeight(.medium)
                    }
                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 80, weight: .black))
                    Spacer()
                }
                .foregroundStyle(.linearGradient(colors: [.customGreenLight, .customGreenMedium, .customGreenDark], startPoint: .top, endPoint: .bottom))
                .padding(.top, 8)
                
                VStack(spacing: 8) {
                    Text("where can yo find \nperfect tracks?")
                        .font(.title2)
                        .fontWeight(.heavy)
                    
                    Text("The hike, which looks gorgeous in photos but is even better once you are actually there.The hike that you hope to do again someday.\nFind the best day hikes in the app.")
                        .font(.footnote)
                        .italic()
                    
                    Text("Dust off he boots! it's time for walk")
                        .fontWeight(.heavy)
                        .foregroundStyle(.colorGreenMedium)
                    
                }.multilineTextAlignment(.center)
                 .padding(.bottom, 16)
                 .frame(maxWidth: .infinity)
                
            } //: End of header section
            .listRowSeparator(.hidden)
            
            
        } //: end of list
    }
}

#Preview {
    SettingsView()
}
