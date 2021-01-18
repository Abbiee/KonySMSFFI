//
//  MessageControllerKony.h
//  SIMMessageController
//
//  Created by Abbie on 17/01/21.
//  Copyright © 2021 Abbie. All rights reserved.
//

#import <MessageUI/MessageUI.h>

NS_ASSUME_NONNULL_BEGIN

@protocol SMSControllerDelegate
-(void) smsResult:(NSString*) smsInterfaceResult;
@end

@interface MessageControllerKony : MFMessageComposeViewController
@property (assign, nonatomic) id<SMSControllerDelegate> smsDelegate;

@end

NS_ASSUME_NONNULL_END
