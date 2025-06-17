//
//   UIKitManager.swift
//   UIKitManager
//
//   Created by Apple on 2025/6/9
//   
//
   

import Foundation
import UIKit
import StoreKit

public class UIKKitHelper{
    
    public static let shared = UIKKitHelper()

    /// customer floating  button init
    /// If it already exists, the image will be refreshed
    public func setCustom(with imageView:UIImageView,didClick:@escaping(()->Void)){
        CustomerHelper.shared.loadsCustom(with: imageView, didClick: didClick)
    }
    
    /// show customer floating  button
    public func customShow(){
        CustomerHelper.shared.customerView?.show()
    }
    
    /// hide customer floating  button
    public func customHide(){
        CustomerHelper.shared.customerView?.hide()
    }
    
    /// getImage form picker
    public func getImage(from viewController: UIViewController, albumText:String = "Open Album",cameraText:String = "Open Camera", cancelText:String = "Cancel", completion: @escaping (UIImage) -> Void){
        PhotoPickerHelper.present(from: viewController,albumText: albumText, cameraText:cameraText, cancelText:cancelText) { image in
            completion(image)
        }
    }
    
    /// getContactinfo fullName phoneNumber
    public func getContact(inViewController vc:UIViewController,result:@escaping((_ fullName: String?, _ phoneNumber: String?, _ emailAddresses: String?, _ postalAddresses: String?)->Void)){
        ContactHelper.present(from: vc) { fullName, phoneNumber, emailAddresses, postalAddresses   in
            result(fullName, phoneNumber, emailAddresses, postalAddresses)
        }
    }
    
    /// open  system setting page
    public func openSettingAlert(title:String,message:String="",buttonText:String="OK"){
        AlertHelper.openSetting(title: title,message: message,buttonText: buttonText)
    }
    
    /// share source with applicationActivities
    public func openShareAppActivities(vc:UIViewController,sourceView:UIView,file: Any) {
        AlertHelper.shareWithAppActivities(vc: vc, sourceView: sourceView, file: file)
    }
    
    /// open url in safari
    public func openUrl(urlString:String) {
        if let url = URL(string: urlString) {
            UIApplication.shared.open(url)
        }
    }
    
    /// Store review popup
    public func openReview(){
        if #available(iOS 14.0, *){
            if  let window = UIWindow.top?.windowScene {
                SKStoreReviewController.requestReview(in: window)
            }
        }else{
            SKStoreReviewController.requestReview()
        }
    }
    
    /// Make a call
    public func call(number:String){
        openUrl(urlString: "tel:\(number)")
    }
    
    /// check Camera authorizationStatus
    public func checkCamera(title:String="",message:String="Please enable camera access in Settings",buttonText:String="OK",authorizedBlock:@escaping(()->Void)){
        PrivacyHelper.shared.checkCamera(title: title, message: message, buttonText: buttonText, authorizedBlock: authorizedBlock)
    }
    
    /// check Location authorizationStatus
    public func checkLocation(title:String="",message:String="Allow location access to help verify your details and protect your account.",buttonText:String="OK",authorizedBlock:@escaping(()->Void)){
        PrivacyHelper.shared.checkLocation(title: title, message: message, buttonText: buttonText, authorizedBlock: authorizedBlock)
    }

    /// check Contact authorizationStatus
    public func checkContact(title:String="",message:String="If you want to set contacts, you can allow the app to use this permission.",buttonText:String="OK",authorizedBlock:@escaping(()->Void)){
        PrivacyHelper.shared.checkContact(title: title, message: message, buttonText: buttonText, authorizedBlock: authorizedBlock)
    }
    
    
    
    
}

