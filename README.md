#** UIKKit

 -- Extending UIKit to make development easier



##** UIKKitHelper

  - setFloatingButton: Set the global floating button
  - floatShow: Show the floating button
  - floatHide: Hide the floating button

  - openSettingAlert: Open the system settings page
  - openShareAppActivities: Share file resources to external
  
  - openUrl: open url in safari
  - openReview: Store review popup
  - call: Make a call
  
  
  
##** DeviceIdHelper
 
  - shared
    - requestIDFA
    - getIDFA
    - getIDFV
  
  
  
##** CountdownHelper

eg: 
* var timer:CountdownHelper?
* timer = CountdownHelper(delegate: self)

  - startCountdown
  *\Enter the start time in seconds and start the countdown
  
  - stop: Active stop
  
  #### CountdownDelegate
  - countdownDidUpdate(hourSting: String, minuteSting: String, secondSting: String)
  - countdownDidUpdate(hourInt: Int, minuteInt: Int, secondInt: Int)
  - countdownDidFinish
  
  
  
##** KUIViewController

The custom UIViewController class contains the property navigationPopOpen: whether to enable right swipe back. default is true. 
You need to actively override the back() method to implement the method after swiping right. 
Alternatively, you can directly call backAction() under the back() method to implement dismiss or popViewController.

  - back

  - backAction

  - dealWebMessage(web: WKWebView, wkMessage: WKScriptMessage, dict: [String : Any], webScripList: [String]) 
  *\ Handling WKScriptMessage, custom events
  
  
  
##** KTextField

 - onDeleteBackward: Listening for delete actions
 
 - var placeHolderColor: Extended setting placeHolderColor
 - var isAutoCleanEnabled:Bool=true : Whether to enable text cleaning (remove leading and trailing spaces, merge consecutive spaces)
 

##** KToast

 - show
 
 - loading
 
 - hideLoading
 
 
 
##** KTableViewCell
 
 *\ Enable custom mailbox completion popup view
 
  - setEmailFiled: 
    - contentTextFiled: UITextField?
    - emailFootterArray:[String] = ["@gmail.com", "@icloud.com", "@yahoo.com", "@outlook.com"]
    - emailViewCorner:CGFloat = 4
    - cellEmailOffsetX:CGFloat = 72
    - emailButtonHeight:CGFloat = 48
    - emailButtonLeftMargin:CGFloat = 14
    - emailButtonAttrColor:UIColor?
    - emailButtonTextColor:UIColor = .black
    - emailButtonFirstColor:UIColor = .blue
    - emailButtonFont:UIFont = UIFont(name: "PingFangSC-Medium", size: 13)!
    - emailButtontitleLeft:CGFloat = 12
    - emailHasLine:Bool = true
    - emailLineColor:UIColor = UIColor(hex: "#EEF0F4")
    - didEndFill:(_ text:String) -> Void = {_  in}



##** KDatePickerView
 
  - init(dateString:String?=nil,titleTxt:String?=nil)
    - show
    
    - dateStr
    - titleText
    - titleColor
    - titleFont
    - grayBackgroundColor
    - birthdayH
    - dateTintColor
    - dateFormatter
    - maximumDate
    - minimumDate
    - confirmButtonBgColor
    - confirmButtonHeight
    - confirmButtonColors
    - confirmButtonText
    - confirmButtonTextColor
    - confirmButtonFont



##** KRSA

 *\ RSA encryption and decryption



##** KDatePickerView


    - dateStr: String?
    
    - titleText: String?
    - titleColor: UIColor = .black
    - titleFont: UIFont = UIFont(name: "PingFangSC-Medium", size: 15)!
    
    - grayBackgroundColor: UIColor = .black.withAlphaComponent(0.6)
    - birthdayH: CGFloat = 320
    - dateTintColor: UIColor = .blue
    
    - dateFormatter: String = "dd-MM-yyyy"
    - maximumDate: String = "31-12-2040"
    - minimumDate: String = "01-01-1960"
    
    - confirmButtonBgColor: UIColor = .blue
    - confirmButtonHeight: CGFloat = 50
    - confirmButtonColors: [UIColor] = []
    - confirmButtonText: String = "Confirm"
    - confirmButtonTextColor: UIColor = .white
    - confirmButtonFont: UIFont = UIFont(name: "PingFangSC-Medium", size: 20)!
    
    - show
