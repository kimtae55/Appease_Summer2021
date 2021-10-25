//
//  TestWCWatch.swift
//  TestWCWatch
//
//  Created by Taehyo Kim on 2021-10-01.
//
import Foundation
import WatchConnectivity

class TestWCWatch : NSObject,  WCSessionDelegate, ObservableObject{

	var session: WCSession
	@Published var messageText = "False"
	init(session: WCSession = .default){
		self.session = session
		super.init()
		self.session.delegate = self
		session.activate()
		//session.sendMessage(["msg": messageText], replyHandler:nil)
	}
	
	func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {
		
	}
	
	func session(_ session: WCSession, didReceiveMessage message: [String : Any]) {
		DispatchQueue.main.async {
			self.messageText = message["message"] as? String ?? "Unknown"
			print(self.messageText)
		}
	}

	func session(_ session: WCSession, didReceiveMessage message: [String : Any], replyHandler: @escaping ([String : Any]) -> Void) {
		DispatchQueue.main.async {
			self.messageText = message["message"] as? String ?? self.messageText
			WatchConnectivityManager.sharedManager.UserToken = message["token"] as? String ?? WatchConnectivityManager.sharedManager.UserToken
			print(self.messageText)
			print(WatchConnectivityManager.sharedManager.UserToken)
		}
	}
}
