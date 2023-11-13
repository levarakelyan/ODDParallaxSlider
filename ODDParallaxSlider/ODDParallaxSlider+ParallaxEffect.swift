//
//  ODDParallaxSlider+ParallaxEffect.swift
//  AdaptiveSlider
//
//  Created by Levon Arakelyan on 12.11.23.
//

import SwiftUI

extension ODDParallaxSlider {
    func scrollOffset(_ proxy: GeometryProxy) -> CGFloat {
        let minX = proxy.bounds(of: .scrollView)?.minX ?? 0
        return -minX * min(configuration.parallaxSpeed, 1.0)
    }
    
    @Sendable func paralexEffect(_ effect: EmptyVisualEffect,
                                 geometryProxy: GeometryProxy) -> some VisualEffect {
       return effect.offset(x: scrollOffset(geometryProxy))
    }
}
