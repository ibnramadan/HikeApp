//
//  CustomCircleView.swift
//  Hike
//
//  Created by mohamed ramadan on 02/10/2023.
//

import SwiftUI

struct CustomCircleView: View {
    @State private var isAnimatedGradient: Bool = false
    var body: some View {
        ZStack {
            Circle()
                .fill(LinearGradient(colors: [
                    .customIndigoMedium,
                    .customSalmonLight],
                
            startPoint: isAnimatedGradient ? .topLeading : .bottomLeading,
            endPoint: isAnimatedGradient ? .bottomTrailing : .topTrailing)
                )
                .onAppear {
                    withAnimation(.linear(duration: 3.0).repeatForever(autoreverses: true)) {
                        isAnimatedGradient.toggle()
                    }
            }
            MotionAnimationView()
        } //: ZStack
        .frame(width: 256, height: 256)
    }
}

#Preview {
    CustomCircleView()
}
