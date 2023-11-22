//
//  CardView.swift
//  Hike
//
//  Created by mohamed ramadan on 01/10/2023.
//

import SwiftUI

struct CardView: View {
    // MARK: - Properites
    @State private var imageNumber = 1
    @State private var randomNumber = 1
    @State private var isShowingSheet: Bool = false
    
    // MARK: - FUNCTIONS
    
    func randomImage() {
        repeat {
            randomNumber = Int.random(in: 1...5)
        } while randomNumber == imageNumber
        imageNumber = randomNumber
    }
    
    var body: some View {
        ZStack {
            CustomBackgroundView()
            VStack {
                
                // Marl: - Header
                VStack(alignment: .leading) {
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(
                                LinearGradient(colors: [.customGrayLight, .customGrayMedium],
                                               startPoint: .top, endPoint: .bottom)
                        )
                        Spacer()
                        Button {
                            // Action
                            isShowingSheet.toggle()
                        } label: {
                            CustomButtonView()
                        }.sheet(isPresented: $isShowingSheet) {
                            SettingsView()
                                .presentationDragIndicator(.visible)
                                .presentationDetents([.medium, .large])
                        }
                    }
                    
                    Text("Fun and enjouable oudoor activity for friends and families.")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.customGrayMedium)
                } // Header
                .padding(.horizontal, 30)
                
                ZStack {
                    CustomCircleView()
                    Image("image-\(imageNumber)")
                        .resizable()
                        .scaledToFit()
                        .animation(.default, value: imageNumber)
                }
                
                Button {
                    print("Explore More")
                    randomImage()
                } label: {
                    Text("Explore More")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(LinearGradient(colors: [.customGreenLight, .customGreenMedium], startPoint: .top, endPoint: .bottom))
                        .shadow(color: .black.opacity(0.25), radius: 0.25, x: 1, y: 2)
                }
                .buttonStyle(GradientButtonStyle())
            }
        }
        .frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
}
