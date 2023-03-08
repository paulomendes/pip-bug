/*
 See LICENSE folder for this sample’s licensing information.

 Abstract:
 `AppDelegate` is the AppDelegate for this sample.  The only additional work this
  class does is intiate the restoring process of `AssetPersistenceManager by calling
  AssetPersistenceManager.sharedManager.restorePersistenceManager().
 */

import UIKit
import AVFAudio

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool
    {
        // Restore the state of the application and any running downloads.
        AssetPersistenceManager.sharedManager.restorePersistenceManager()

        let audioSession = AVAudioSession.sharedInstance()
        do {
            try audioSession.setCategory(.playback)
        } catch {
            print("Setting category to AVAudioSessionCategoryPlayback failed.")
        }

        return true
    }
}
