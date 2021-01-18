//
//  MessageControllerKony.m
//  SIMMessageController
//
//  Created by Abbie on 17/01/21.
//  Copyright © 2021 Abbie. All rights reserved.
//

#import "MessageControllerKony.h"

@interface MessageControllerKony ()<UINavigationControllerDelegate,MFMessageComposeViewControllerDelegate>
@property (strong, nonatomic) NSString *insideMessage;
@end

@implementation MessageControllerKony

- (void)viewDidLoad {
    [super viewDidLoad];
    self.messageComposeDelegate = self;
}
// -------------------------------------------------------------------------------
//    messageComposeViewController:didFinishWithResult:
//  Dismisses the message composition interface when users tap Cancel or Send.
//  Proceeds to update the feedback message field with the result of the
//  operation.
// -------------------------------------------------------------------------------


- (void)messageComposeViewController:(MFMessageComposeViewController *)controller didFinishWithResult:(MessageComposeResult)result{
    //test result
    switch (result) {
        //MessageComposeResultCancelled: User canceled the composition.
        case MessageComposeResultCancelled:
            NSLog(@"Result: SMS sending canceled") ;
            [self sendResult:@"Cancelled"];
            break;
        //MessageComposeResultSent: User successfully sent/queued the message.
        case MessageComposeResultSent:
            NSLog(@"Result: SMS sent");
            [self sendResult:@"SMSSent"];
            break;
        //MessageComposeResultFailed: User's attempt to save or send was unsuccessful.
        case MessageComposeResultFailed:
            NSLog(@"Result: SMS sending failed");
            break;
        default:
            break;
    }

    //dismiss view
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void) sendResult:(NSString*) result
{
    [_smsDelegate smsResult:result];
}
@end
