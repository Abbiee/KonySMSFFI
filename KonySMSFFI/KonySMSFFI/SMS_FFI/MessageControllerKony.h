//
//  MessageControllerKony.h
//  SIMMessageController
//
//  Created by Abbie on 17/01/21.
//  Copyright © 2021 Abbie. All rights reserved.
//

#import <MessageUI/MessageUI.h>

NS_ASSUME_NONNULL_BEGIN

@interface MessageControllerKony : MFMessageComposeViewController
@property (strong, nonatomic) NSString *messageBody;
@property (strong, nonatomic) NSString *receivingNumber;

@end

NS_ASSUME_NONNULL_END
