//
//  SafeAreaInsetsKey.swift
//

import SwiftUI


public struct SafeAreaInsetsKey: EnvironmentKey {
    
    #if os(macOS)
    
    public static var safeAreaInsets: NSEdgeInsets {
        .init()
    }
    
    #elseif os(watchOS)
    
    public static var safeAreaInsets: UIEdgeInsets {
        WKExtension
            .shared()
            .visibleInterfaceController?
            .contentSafeAreaInsets
        ?? .zero
    }
    
    #else
    
    public static var safeAreaInsets: UIEdgeInsets {
        let keyWindow: UIWindow?

        if ProcessInfo.isRunningForXcodePreviews {
            keyWindow = UIApplication.shared.keyWindow
        } else {
            keyWindow = UIApplication
                .shared
                .connectedScenes
                .filter { $0.activationState == .foregroundActive }
                .compactMap { $0 as? UIWindowScene }
                .first?
                .windows
                .filter(\.isKeyWindow)
                .first
        }
        
        return keyWindow?.safeAreaInsets ?? .zero
    }
    
    #endif
    
    
    public static var defaultValue: EdgeInsets {
        Self.safeAreaInsets.insets
    }
}
