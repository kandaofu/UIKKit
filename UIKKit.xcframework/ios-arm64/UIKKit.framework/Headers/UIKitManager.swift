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
    public func setFloatingButton(with imageView:UIImageView,didClick:@escaping(()->Void)){
        FloatingButtonHelper.shared.loadsCustom(with: imageView, didClick: didClick)
    }
    
    /// show customer floating  button
    public func floatShow(){
        FloatingButtonHelper.shared.floatingButton?.show()
    }
    
    /// hide customer floating  button
    public func floatHide(){
        FloatingButtonHelper.shared.floatingButton?.hide()
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
            if  let window = UIWindow.topWindow?.windowScene {
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
    
    
}


public func printLog(_ items: Any..., separator: String = " ", terminator: String = "\n") {
    let output = items.map { "\($0)" }.joined(separator: separator)
    print("k_log: \(output)",separator:separator,terminator: terminator)
}

public func randomColor() ->UIColor{
    let red = CGFloat(arc4random()%256)/255.0
    let green = CGFloat(arc4random()%256)/255.0
    let blue = CGFloat(arc4random()%256)/255.0
    return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
}

public func rgba(_ r:CGFloat,_ g:CGFloat,_ b:CGFloat,_ a:CGFloat=1.0) -> UIColor {
    return UIColor(red: r/255.0, green: g/255.0, blue: b/255.0, alpha: a)
}

