//
//  myshoppingappApp.swift
//  myshoppingapp

import SwiftUI

@main
struct myshoppingappApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            DiscountsOffersView()
        }
    }
}
