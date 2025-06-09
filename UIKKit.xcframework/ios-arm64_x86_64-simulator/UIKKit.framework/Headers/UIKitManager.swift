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
    public func getImage(inViewController vc:UIViewController,result:@escaping((_ image:UIImage)->Void)){
        PhotoPickerHelper.present(from: vc) { image in
            result(image)
        }
    }
    
    /// getContactinfo fullName phoneNumber
    public func getContact(inViewController vc:UIViewController,result:@escaping((_ fullName:String?,_ phoneNumber:String?)->Void)){
        ContactHelper.present(from: vc) { fullName, phoneNumber in
            result(fullName,phoneNumber)
        }
    }
    
    /// open  system setting page
    public func setSettingAlert(inViewController vc:UIViewController,title:String,message:String="",buttonText:String="OK"){
        AlertHelper.openSetting(vc: vc, title: title,message: message,buttonText: buttonText)
    }
    
    /// share source with applicationActivities
    public func setShareAppActivities(vc:UIViewController,sourceView:UIView,file: Any) {
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
    
    public func call(number:String){
        openUrl(urlString: "tel:\(number)")
    }

    
}

