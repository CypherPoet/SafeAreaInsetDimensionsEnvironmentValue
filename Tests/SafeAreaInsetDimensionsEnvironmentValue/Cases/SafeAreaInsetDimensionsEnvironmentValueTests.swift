import XCTest
import SafeAreaInsetDimensionsEnvironmentValue
import SwiftUI


final class SafeAreaInsetDimensionsEnvironmentValueTests: XCTestCase {
    
    private struct TestView: View {
        
        @Environment(\.safeAreaInsetDimensions)
        var safeAreaInsetDimensions
        
        
        var body: some View {
            EmptyView()
        }
    }
}
    

// MARK: -  Tests
extension SafeAreaInsetDimensionsEnvironmentValueTests {
    
    func test_EnvironmentValuesInitialization_DefaultValue_UsesTheDefaultSwiftUIEdgeInsets() throws {
        let sut = EnvironmentValues().safeAreaInsetDimensions
        
        XCTAssertEqual(sut, EdgeInsets())
    }
    
    
    func test_ViewInitialization_DefaultValue_UsesTheDefaultSwiftUIEdgeInsets() throws {
        let sut = TestView().safeAreaInsetDimensions
        
        XCTAssertEqual(sut, EdgeInsets())
    }
}
