//
//  ODDParallaxSliderExampleView.swift
//  ODDParallaxSlider
//
//  Created by Levon Arakelyan on 12.11.23.
//

import SwiftUI

struct ODDParallaxSliderExampleView: View {
    private let configuration = ODDParallaxSliderConfiguration.preview

    var body: some View {
        VStack(alignment: .center) {
            ODDParallaxSlider(items: ExampleParallaxSliderItem.introPreview,
                              configuration: configuration) { item in
                VStack(alignment: .center,
                       spacing: 5) {
                    Text(item.parallaxTitle)
                        .foregroundStyle(.white)
                        .font(.largeTitle.bold())
                        .multilineTextAlignment(.center)
                    item.parallaxImage
                        .font(.largeTitle.bold())
                        .imageScale(.large)
                        .foregroundStyle(.white)
                }.frame(maxHeight: 100)
                 .containerRelativeFrame(.horizontal)
                 .padding(.vertical)
                 .background(Color.orange)
                 .clipShape(RoundedRectangle(cornerRadius: 24))
            } sliderContent: { item in
                item.sliderImage
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            }.safeAreaPadding(.horizontal, configuration.sliderHorizontalEdgesVisibleSize)
        }
    }
}

#Preview {
    ODDParallaxSliderExampleView()
}
