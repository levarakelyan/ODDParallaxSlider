//
//  ODDParallaxSlider+PageControl.swift
//  AdaptiveSlider
//
//  Created by Levon Arakelyan on 12.11.23.
//

import SwiftUI

extension ODDParallaxSlider {
     func onPageChange(_ newPage: Int) {
        guard newPage < items.count && newPage >= 0 else { return }
        guard let index = newPage as? Items.Index else { return }
        guard let newScrollViewPosition = items[index].id as? UUID else { return }
         withAnimation(.smooth(duration: 0.5, extraBounce: 0.5)) {
             scrollViewPosition = newScrollViewPosition
         }
    }

    var currentPage: Int {
        guard let elementId = scrollViewPosition as? Items.Element.ID else { return 0 }
        guard let index = items.firstIndex(where: {$0.id == elementId}) as? Int else { return 0 }
        return index
    }
}
