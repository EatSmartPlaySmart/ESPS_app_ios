//
//  EmailHelper.swift
//  ESPS
//
//  Created by Ramshad Basheer on 16/02/2021.
//

import Foundation
import MessageUI

extension UIViewController {

  func showAlert(title: String, message: String) {
    let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
    alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))

     self.present(alert, animated: true, completion: nil)
   }

   //add additional functions here if necessary
   //like a function showing alert with cancel
}

class EmailHelper: NSObject, MFMailComposeViewControllerDelegate {
    public static let shared = EmailHelper()
    private override init() {
        //
    }
    
    public func alertUser(strTitle: String, strMessage: String) {
        let myAlert = UIAlertController(title: strTitle, message: strMessage, preferredStyle: UIAlertController.Style.alert)
        let okAction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil)
        myAlert.addAction(okAction)
        UIApplication.shared.delegate?.window??.rootViewController?.present(myAlert, animated: true, completion: nil)
    }
    
    

    
    func sendEmail(subject:String, body:String, to:String, vc: UIViewController){
        print(subject)
        print(body)
        print(to)
        if !MFMailComposeViewController.canSendMail() {
            print("No mail account found")
//            Alert(title: Text("Error!"), message: Text("No Email App Found!"), dismissButton: .default(Text("Got it!")))
            
            vc.showAlert(title: "Error!", message: "Cannot find an email app!")

            // Todo: Add a way to show banner to user about no mail app found or configured
            // Utilities.showErrorBanner(title: "No mail account found", subtitle: "Please setup a mail account")
            return //EXIT
        }
        
        let picker = MFMailComposeViewController()
        
        picker.setSubject(subject)
        picker.setMessageBody(body, isHTML: true)
        picker.setToRecipients([to])
        picker.mailComposeDelegate = self
        
        EmailHelper.getRootViewController()?.present(picker, animated: true, completion: nil)
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        EmailHelper.getRootViewController()?.dismiss(animated: true, completion: nil)
    }
    
    static func getRootViewController() -> UIViewController? {
//        (UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate)?.window?.rootViewController
//
        // OR If you use SwiftUI 2.0 based WindowGroup try this one
         UIApplication.shared.windows.first?.rootViewController
    }
}
