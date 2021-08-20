@_private(sourceFile: "ContentView.swift") import AppEase_WatchKit_Extension
import SwiftUI
import SwiftUI

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/taehyo/Documents/GitHub/AppEase/AppEase/AppEase WatchKit Extension/ContentView.swift", line: 126)
        AnyView(__designTimeSelection(ContentView(), "#3866.[4].[0].property.[0].[0]"))
    #sourceLocation()
    }
}

extension GameList {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/taehyo/Documents/GitHub/AppEase/AppEase/AppEase WatchKit Extension/ContentView.swift", line: 56)
        AnyView(__designTimeSelection(List {
            __designTimeSelection(NavigationLink(destination: __designTimeSelection(FindAMatchView(), "#3866.[3].[4].property.[0].[0].arg[0].value.[0].arg[0].value")){
                __designTimeSelection(Text(__designTimeString("#3866.[3].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "Find A Match"))
                    .navigationBarBackButtonHidden(__designTimeBoolean("#3866.[3].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value", fallback: false)), "#3866.[3].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[0]")
            }, "#3866.[3].[4].property.[0].[0].arg[0].value.[0]")
            
            __designTimeSelection(NavigationLink(
                destination: __designTimeSelection(MemoryGameView(), "#3866.[3].[4].property.[0].[0].arg[0].value.[1].arg[0].value"),
                label: {__designTimeSelection(Text(__designTimeString("#3866.[3].[4].property.[0].[0].arg[0].value.[1].arg[1].value.[0].arg[0].value", fallback: "Card Match")), "#3866.[3].[4].property.[0].[0].arg[0].value.[1].arg[1].value.[0]")}
            ), "#3866.[3].[4].property.[0].[0].arg[0].value.[1]")
            
            __designTimeSelection(NavigationLink(
                destination: __designTimeSelection(SensorDataView(healthStore: __designTimeSelection(healthStore, "#3866.[3].[4].property.[0].[0].arg[0].value.[2].arg[0].value.arg[0].value")), "#3866.[3].[4].property.[0].[0].arg[0].value.[2].arg[0].value"),
                label: {__designTimeSelection(Text(__designTimeString("#3866.[3].[4].property.[0].[0].arg[0].value.[2].arg[1].value.[0].arg[0].value", fallback: "Sensor Data")), "#3866.[3].[4].property.[0].[0].arg[0].value.[2].arg[1].value.[0]")}
            ), "#3866.[3].[4].property.[0].[0].arg[0].value.[2]")
            
            __designTimeSelection(Button(action: {
                __designTimeSelection(musicManager.setupAudioPlayer(fileName: __designTimeString("#3866.[3].[4].property.[0].[0].arg[0].value.[3].arg[0].value.[0].modifier[0].arg[0].value", fallback: "example.mp3")), "#3866.[3].[4].property.[0].[0].arg[0].value.[3].arg[0].value.[0]")
                __designTimeSelection(musicManager.activateAudioSession(), "#3866.[3].[4].property.[0].[0].arg[0].value.[3].arg[0].value.[1]")
            }, label: {
                __designTimeSelection(Text(__designTimeString("#3866.[3].[4].property.[0].[0].arg[0].value.[3].arg[1].value.[0].arg[0].value", fallback: "Play Music")), "#3866.[3].[4].property.[0].[0].arg[0].value.[3].arg[1].value.[0]")
            }), "#3866.[3].[4].property.[0].[0].arg[0].value.[3]")
            
            __designTimeSelection(Button(action: {
                __designTimeSelection(musicManager.stopPlayingAudio(), "#3866.[3].[4].property.[0].[0].arg[0].value.[4].arg[0].value.[0]")
            }, label: {
                __designTimeSelection(Text(__designTimeString("#3866.[3].[4].property.[0].[0].arg[0].value.[4].arg[1].value.[0].arg[0].value", fallback: "Pause Music")), "#3866.[3].[4].property.[0].[0].arg[0].value.[4].arg[1].value.[0]")
            }), "#3866.[3].[4].property.[0].[0].arg[0].value.[4]")
            
            __designTimeSelection(Button(action: {
                __designTimeSelection(UserDefaults.standard.set(__designTimeBoolean("#3866.[3].[4].property.[0].[0].arg[0].value.[5].arg[0].value.[0].modifier[0].arg[0].value", fallback: false), forKey: __designTimeString("#3866.[3].[4].property.[0].[0].arg[0].value.[5].arg[0].value.[0].modifier[0].arg[1].value", fallback: "ISUSERLOGGEDIN")), "#3866.[3].[4].property.[0].[0].arg[0].value.[5].arg[0].value.[0]")
                __designTimeSelection(userStateManager.userLoggedOut(), "#3866.[3].[4].property.[0].[0].arg[0].value.[5].arg[0].value.[1]")
            }, label: {
                __designTimeSelection(Text(__designTimeString("#3866.[3].[4].property.[0].[0].arg[0].value.[5].arg[1].value.[0].arg[0].value", fallback: "Log out")), "#3866.[3].[4].property.[0].[0].arg[0].value.[5].arg[1].value.[0]")
            }), "#3866.[3].[4].property.[0].[0].arg[0].value.[5]")
            
            //            Text("Reachable: \(reachable)")
            //
            //            Button(action: {
            //                if WatchConnectivityManager.sharedManager.isReachable() {
            //                    self.reachable = "Yes"
            //                } else {
            //                    self.reachable = "No"
            //                }
            //            }, label: {
            //                Text("Update reachability")
            //            })
            //
            //            Button(action: {
            //                _ = WatchConnectivityManager.sharedManager.transferFile(file: tempURL.fullURL, metadata: fileMetaData)
            //            }, label: {
            //                Text("File send to phone")
            //            })
            //
            //            TextField("Please enter message to send", text: $messageData)
            //
            //            Button(action: {
            //                WatchConnectivityManager.sharedManager.sendMessage(message: ["data": messageData], replyHandler: nil) { (error) in
            //                    print("Error \(error.localizedDescription)")
            //                }
            //            }, label: {
            //                Text("Send Data")
            //            })
        }, "#3866.[3].[4].property.[0].[0]"))
    #sourceLocation()
    }
}

extension GameList {
    @_dynamicReplacement(for: fileMetaData) private var __preview__fileMetaData: [String: Any] {
        #sourceLocation(file: "/Users/taehyo/Documents/GitHub/AppEase/AppEase/AppEase WatchKit Extension/ContentView.swift", line: 52)
        return [__designTimeString("#3866.[3].[3].property.[0].[0].[0].key", fallback: "file"):"transferred" as Any]
    #sourceLocation()
    }
}

extension TempView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/taehyo/Documents/GitHub/AppEase/AppEase/AppEase WatchKit Extension/ContentView.swift", line: 28)
        AnyView(__designTimeSelection(VStack {
            __designTimeSelection(Text(__designTimeString("#3866.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value", fallback: "Welcome! Please sign in using the app on your iPhone")).padding(), "#3866.[2].[1].property.[0].[0].arg[0].value.[0]")
            __designTimeSelection(Button(action: {
                if UserDefaults.standard.bool(forKey: "ISUSERLOGGEDIN") {
                    __designTimeSelection(userStateManager.userLoggedIn(), "#3866.[2].[1].property.[0].[0].arg[0].value.[1].arg[0].value.[0].[0].[0]")
                }
            }, label: {
                __designTimeSelection(Text(__designTimeString("#3866.[2].[1].property.[0].[0].arg[0].value.[1].arg[1].value.[0].arg[0].value", fallback: "Signed in on the phone")), "#3866.[2].[1].property.[0].[0].arg[0].value.[1].arg[1].value.[0]")
            }), "#3866.[2].[1].property.[0].[0].arg[0].value.[1]")
        }, "#3866.[2].[1].property.[0].[0]"))
    #sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/taehyo/Documents/GitHub/AppEase/AppEase/AppEase WatchKit Extension/ContentView.swift", line: 14)
        AnyView(__designTimeSelection(ZStack {
            if userStateManager.isUserLoggedIn {
                __designTimeSelection(GameList(), "#3866.[1].[1].property.[0].[0].arg[0].value.[0].[0].[0]")
            } else {
                __designTimeSelection(TempView(), "#3866.[1].[1].property.[0].[0].arg[0].value.[0].[1].[0]")
            }
        }, "#3866.[1].[1].property.[0].[0]"))
    #sourceLocation()
    }
}

import struct AppEase_WatchKit_Extension.ContentView
import struct AppEase_WatchKit_Extension.TempView
import struct AppEase_WatchKit_Extension.GameList
import struct AppEase_WatchKit_Extension.ContentView_Previews