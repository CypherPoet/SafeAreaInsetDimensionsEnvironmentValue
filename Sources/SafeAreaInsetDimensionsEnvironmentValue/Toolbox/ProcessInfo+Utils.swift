import Foundation


extension ProcessInfo {

    internal static var isRunningForXcodePreviews: Bool {
        ProcessInfo.processInfo.environment["XCODE_RUNNING_FOR_PREVIEWS"] != nil
    }
}
