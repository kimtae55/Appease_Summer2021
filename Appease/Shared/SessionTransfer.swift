/*
See LICENSE folder for this sample’s licensing information.

Abstract:
SessionTransfer protocol defines the session transfer interface.
 Its extension implements the cancel method to cancel the transfer and notify UI.
 Used on both iOS and watchOS.
*/

import Foundation
import WatchConnectivity

// Provide a unified interface for transfers. UI uses this interface to manage transfers.
//
protocol SessionTransfer {
    //var timedColor: TimedColor { get }
    var isTransferring: Bool { get }
    func cancel()
    func cancel(notifying command: Command)
}

// Implement the cancel method to cancel the transfer and notify UI.
//
extension SessionTransfer {
    func cancel(notifying command: Command) {
        var commandStatus = CommandStatus(command: command, phrase: .canceled)
        //commandStatus.timedColor = timedColor
        
        cancel()
        
        let dateFormatter = DateFormatter()
        dateFormatter.timeStyle = .medium
        //commandStatus.timedColor?.timeStamp = dateFormatter.string(from: Date())
        
        DispatchQueue.main.async {
            NotificationCenter.default.post(name: .dataDidFlow, object: commandStatus)
        }
    }
}

// Comform to SessionTransfer, provide the timed color.
//
extension WCSessionUserInfoTransfer: SessionTransfer {
    //var timedColor: TimedColor { return TimedColor(userInfo) }
}

// Comform to SessionTransfer, provide the timed color.
//
extension WCSessionFileTransfer: SessionTransfer {
    //var timedColor: TimedColor { return TimedColor(file.metadata!) }
}
