#if canImport(UIKit)

import SwiftUI

internal extension UIEdgeInsets {
    
    var insets: EdgeInsets {
        EdgeInsets(
            top: top,
            leading: left,
            bottom: bottom,
            trailing: right
        )
    }
}

#endif

