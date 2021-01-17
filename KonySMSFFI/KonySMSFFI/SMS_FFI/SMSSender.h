//
//  SMSSender.h
//  KonySMSFFI
//
//  Created by Abbie on 17/01/21.
//

//#import <UIKit/UIKit.h>
//#import "SMSController.h"

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SMSSender : NSObject

+ (void) sendMessage:(NSString*)sendingMessage receiverNumber:(NSString*)toPhoneNumber;

@end

NS_ASSUME_NONNULL_END
