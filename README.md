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
 
 var placeHolderColor: Extended setting placeHolderColor
 

##** KToast

 - show
 
 - loading
 
 - hideLoading
 
 
 ##** KTableViewCell
 
 *\ Enable custom mailbox completion popup view
 
  - setEmailFiled: 
    - cellEmailOffsetX:CGFloat = 72
    - emailButtonHeight:CGFloat = 48
    - emailButtonLeftMargin:CGFloat = 14
    - emailButtonAttrColor:UIColor?
    - emailButtonTextColor:UIColor = .black
    - emailButtonFirstColor:UIColor = .blue
    - emailButtonFont:UIFont = UIFont(name: "PingFangSC-Medium", size: 13)!
    - emailButtontitleLeft:CGFloat = 12
    - emailFootterArray:[String] = ["@gmail.com", "@icloud.com", "@yahoo.com", "@outlook.com"]
    - emailHasLine:Bool = true
    - emailLineColor:UIColor = UIColor(hex: "#EEF0F4")
    - didEndFill:(_ text:String) -> Void = {_  in}
    
    
 ##** DeviceIdHelper
 
  - shared
    - requestIDFA
    - getIDFA
    - getIDFV


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




