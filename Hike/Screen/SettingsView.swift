//
//  SettingsView.swift
//  Hike
//
//  Created by mohamed ramadan on 22/11/2023.
//

import SwiftUI

struct SettingsView: View {
    
    private let alternateAppIcons: [String] = [
      "AppIcon-MagnifyingGlass",
      "AppIcon-Map",
      "AppIcon-Mushroom",
      "AppIcon-Camera",
      "AppIcon-Backpack",
      "AppIcon-Campfire"
    ]
    
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
            
            Section(header: Text("Alternate App Icon")) {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 12) {
                        ForEach(alternateAppIcons.indices, id: \.self) { item in
                            Button {
                                print("icon was pressed")
                                UIApplication.shared.setAlternateIconName(alternateAppIcons[item]) { error in
                                    if error != nil {
                                      print("Failed request to update the app's icon: \(String(describing: error?.localizedDescription))")
                                    } else {
                                      print("Success! You have changed the app's icon to \(alternateAppIcons[item])")
                                    }
                                }
                            } label: {
                                Image("\(alternateAppIcons[item])-Preview")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80, height: 80)
                                    .clipShape(RoundedRectangle(cornerSize: CGSize(width: 16, height: 16)))
                    
                        }.buttonStyle(.borderless)
                        }
                    }

                } //: Scroll view
                .padding(.top, 12)
                
                Text("Choose your favourite app icon from the collection above.")
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.secondary)
                    .font(.footnote)
                    .padding(.bottom, 12)
                
            } //: Icon Section
            .listSectionSeparator(.hidden)
            
            Section (header:
                        Text("About the App"),
                     footer: HStack {
                Spacer()
                Text("opyright © All Right reserved")
                Spacer()
            }.padding(.vertical, 8)
            ){
                CustomListRowView(rowLabel: "Application", rowIcon: "apps.iphone", rowContent: "HIKE", rowTintColor: .blue)
                
                CustomListRowView(rowLabel: "Compatibility", rowIcon: "info.circle", rowContent: "iOS, iPadOS", rowTintColor: .red)
                
                CustomListRowView(rowLabel: "Technology", rowIcon: "swift", rowContent: "Swift", rowTintColor: .orange)
                
                CustomListRowView(rowLabel: "Version", rowIcon: "gear", rowContent: "1.0", rowTintColor: .purple)
                
                CustomListRowView(rowLabel: "Developer", rowIcon: "ellipsis.curlybraces", rowContent: "John Doe", rowTintColor: .mint)
                
                CustomListRowView(rowLabel: "Designer", rowIcon: "paintpalette", rowContent: "Robert Petras", rowTintColor: .pink)
                
                CustomListRowView(rowLabel: "Website", rowIcon: "globe", rowTintColor: .indigo, rowlinkLabel: "Credo Acedemy", rowlinkDestination: "https://credo.academy")
            }
            
        } //: end of list
    }
}

#Preview {
    SettingsView()
}
