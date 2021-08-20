@_private(sourceFile: "ContentView.swift") import AppEase_WatchKit_Extension
import SwiftUI
import SwiftUI

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/taehyo/Documents/GitHub/AppEase/AppEase/AppEase WatchKit Extension/ContentView.swift", line: 126)
        AnyView(ContentView())
    #sourceLocation()
    }
}

extension GameList {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/taehyo/Documents/GitHub/AppEase/AppEase/AppEase WatchKit Extension/ContentView.swift", line: 56)
        AnyView(List {
            NavigationLink(destination: FindAMatchView()){
                Text(__designTimeString("#3866.[3].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "Find A Match"))
                    .navigationBarBackButtonHidden(__designTimeBoolean("#3866.[3].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value", fallback: false))
            }
            
            NavigationLink(
                destination: MemoryGameView(),
                label: {Text(__designTimeString("#3866.[3].[4].property.[0].[0].arg[0].value.[1].arg[1].value.[0].arg[0].value", fallback: "Card Match"))}
            )
            
            NavigationLink(
                destination: SensorDataView(healthStore: healthStore),
                label: {Text(__designTimeString("#3866.[3].[4].property.[0].[0].arg[0].value.[2].arg[1].value.[0].arg[0].value", fallback: "Sensor Data"))}
            )
            
            Button(action: {
                musicManager.setupAudioPlayer(fileName: __designTimeString("#3866.[3].[4].property.[0].[0].arg[0].value.[3].arg[0].value.[0].modifier[0].arg[0].value", fallback: "example.mp3"))
                musicManager.activateAudioSession()
            }, label: {
                Text(__designTimeString("#3866.[3].[4].property.[0].[0].arg[0].value.[3].arg[1].value.[0].arg[0].value", fallback: "Play Music"))
            })
            
            Button(action: {
                musicManager.stopPlayingAudio()
            }, label: {
                Text(__designTimeString("#3866.[3].[4].property.[0].[0].arg[0].value.[4].arg[1].value.[0].arg[0].value", fallback: "Pause Music"))
            })
            
            Button(action: {
                UserDefaults.standard.set(__designTimeBoolean("#3866.[3].[4].property.[0].[0].arg[0].value.[5].arg[0].value.[0].modifier[0].arg[0].value", fallback: false), forKey: __designTimeString("#3866.[3].[4].property.[0].[0].arg[0].value.[5].arg[0].value.[0].modifier[0].arg[1].value", fallback: "ISUSERLOGGEDIN"))
                userStateManager.userLoggedOut()
            }, label: {
                Text(__designTimeString("#3866.[3].[4].property.[0].[0].arg[0].value.[5].arg[1].value.[0].arg[0].value", fallback: "Log out"))
            })
            
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
        })
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
        AnyView(VStack {
            Text(__designTimeString("#3866.[2].[1].property.[0].[0].arg[0].value.[0].arg[0].value", fallback: "Welcome! Please sign in using the app on your iPhone")).padding()
            Button(action: {
                if UserDefaults.standard.bool(forKey: "ISUSERLOGGEDIN") {
                    userStateManager.userLoggedIn()
                }
            }, label: {
                Text(__designTimeString("#3866.[2].[1].property.[0].[0].arg[0].value.[1].arg[1].value.[0].arg[0].value", fallback: "Signed in on the phone"))
            })
        })
    #sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/taehyo/Documents/GitHub/AppEase/AppEase/AppEase WatchKit Extension/ContentView.swift", line: 14)
        AnyView(ZStack {
            if userStateManager.isUserLoggedIn {
                GameList()
            } else {
                TempView()
            }
        })
    #sourceLocation()
    }
}

import struct AppEase_WatchKit_Extension.ContentView
import struct AppEase_WatchKit_Extension.TempView
import struct AppEase_WatchKit_Extension.GameList
import struct AppEase_WatchKit_Extension.ContentView_Previews