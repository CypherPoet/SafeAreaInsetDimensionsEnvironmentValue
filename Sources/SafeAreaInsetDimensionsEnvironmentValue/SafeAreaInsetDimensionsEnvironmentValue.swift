import SwiftUI


extension EnvironmentValues {
    
    public var safeAreaInsetDimensions: EdgeInsets {
        self[SafeAreaInsetsKey.self]
    }
}



struct SafeAreaInsetDimensionsEnvironmentValue_Previews: PreviewProvider {
    
    struct SafeAreaInsetViewer: View {
        
        @Environment(\.safeAreaInsetDimensions)
        private var safeAreaInsetDimensions
        
        
        var body: some View {
            ZStack {
                Color.pink
                
                VStack(spacing: 14.0) {
                    Text("Top: \(safeAreaInsetDimensions.top)")
                    Text("Trailing: \(safeAreaInsetDimensions.trailing)")
                    Text("Bottom: \(safeAreaInsetDimensions.bottom)")
                    Text("Leading: \(safeAreaInsetDimensions.leading)")
                }
                .font(.title)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
        }
    }
    
    
    static var previews: some View {
        Group {
            SafeAreaInsetViewer()
            
            if #available(iOS 15, macOS 12, tvOS 15.0, watchOS 8.0, *) {
                SafeAreaInsetViewer()
                    .previewInterfaceOrientation(.landscapeLeft)
            }
        }
    }
}
