#if canImport(UIKit)
import UIKit
#else
import AppKit
#endif

/// Delegate for the TangerineDownloader
public protocol TangerineDownloaderDelegate: AnyObject {

    /// Requests the one time passcode the user received via text while the library is trying to log in
    /// - Returns:
    func getOTPCode() -> String

    #if canImport(UIKit)

    /// Requests a view to add the webview to
    /// - Returns: UIView
    func view() -> UIView?

    #else

    /// Requests a view to add the webview to
    /// - Returns: NSView
    func view() -> NSView?

    #endif
}
