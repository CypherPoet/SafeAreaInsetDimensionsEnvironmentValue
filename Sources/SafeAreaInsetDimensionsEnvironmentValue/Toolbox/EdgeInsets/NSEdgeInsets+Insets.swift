#if os(macOS)

import SwiftUI

internal extension NSEdgeInsets {
    
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

