//
//  SMSSender.h
//  KonySMSFFI
//
//  Created by Abbie on 17/01/21.
//

//#import <UIKit/UIKit.h>
//#import "SMSController.h"

#import <Foundation/Foundation.h>
#import "lglobals.h"

NS_ASSUME_NONNULL_BEGIN

@interface SMSSender : NSObject<SMSControllerDelegate>
+ (id)sharedManager;
@property (nonatomic, retain) CallBack *callbackObj;


//+ (void) sendMessage:(NSString*)sendingMessage receiverNumber:(NSString*)toPhoneNumber;

- (void) withCallBack:(CallBack*)callBack sendMessage:(NSString*)sendingMessage receiverNumber:(NSString*)toPhoneNumber;

@end

NS_ASSUME_NONNULL_END
