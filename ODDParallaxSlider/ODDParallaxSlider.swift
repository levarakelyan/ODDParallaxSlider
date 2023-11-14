//
//  ODDParallaxSlider.swift
//  AdaptiveSlider
//
//  Created by Levon Arakelyan on 12.11.23.
//

import SwiftUI

struct ODDParallaxSlider<SliderContent: View,
                         ParallaxContent: View,
                         Items: RandomAccessCollection>: View where Items: MutableCollection,
                                                                    Items.Element: Identifiable {
    let items: Items
    let configuration: ODDParallaxSliderConfiguration
    @ViewBuilder var parallaxContent: (Items.Element) -> ParallaxContent
    @ViewBuilder var sliderContent: (Items.Element) -> SliderContent
    @State var scrollViewPosition: UUID?

    private var isPageControlVisible: Bool {
        configuration.pageControlTopSpacing != nil
    }
    
    var body: some View {
        VStack(spacing: configuration.pageControlTopSpacing) {
            ScrollView(.horizontal) {
                HStack(spacing: configuration.sliderInteritemSpacing) {
                    ForEach(items, id: \.id) { item in
                        VStack(spacing: configuration.parallaxAndSliderVerticalSpacing) {
                            parallaxContent(item)
                                .visualEffect(paralexEffect)
                            if configuration.sliderHasParallaxEffect {
                                sliderContent(item)
                                    .containerRelativeFrame(.horizontal)
                                    .visualEffect(paralexEffect)
                                    .clipShape(configuration.sliderClipShape)
                                    .shadow(color: .black.opacity(0.2), radius: 5)
                            } else {
                                sliderContent(item)
                                    .containerRelativeFrame(.horizontal)
                                    .clipShape(configuration.sliderClipShape)
                            }
                        }.containerRelativeFrame(.horizontal)
                    }
                }.scrollTargetLayout()
            }.scrollIndicators(configuration.scrollIndicatorVisibility)
             .scrollTargetBehavior(.viewAligned)
             .scrollPosition(id: $scrollViewPosition)
            if isPageControlVisible {
                ODDPageControl(pagesCount: items.count,
                               currentPage: currentPage,
                               onPageChange: onPageChange(_:))
            }
        }
    }
}

#Preview {
    ODDParallaxSlider(items: ODDParallaxSliderItem.preview,
                      configuration: ODDParallaxSliderConfiguration.preview) { item in
        VStack(alignment: .center,
               spacing: 10) {
            Text(item.id.uuidString)
        }
    } sliderContent: { item in
        Text(item.id.uuidString)
    }.safeAreaPadding([.horizontal], 35)
}

