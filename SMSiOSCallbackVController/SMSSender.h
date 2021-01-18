//
//  SMSSender.h
//  KonySMSFFI
//
//  Created by Abbie on 17/01/21.
//

//#import <UIKit/UIKit.h>
//#import "SMSController.h"

#import <Foundation/Foundation.h>
#import "MessageControllerKony.h"
#import "lglobals.h"


@interface SMSSender : UIViewController <SMSControllerDelegate>
@property (nonatomic, retain) CallBack *callbackObj;

+(id)init;
- (void) withCallBack:(CallBack*)callBack sendMessage:(NSString*)sendingMessage receiverNumber:(NSString*)toPhoneNumber;

@end

