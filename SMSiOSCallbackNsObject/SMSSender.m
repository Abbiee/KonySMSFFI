//
//  SMSSender.m
//  KonySMSFFI
//
//  Created by Abbie on 17/01/21.
//

#import "SMSSender.h"
#import "MessageControllerKony.h"
#import "KonyUIContext.h"

@interface SMSSender ()<SMSControllerDelegate>
@end

@implementation SMSSender


+ (id)sharedManager {
    static SMSSender *sharedMyManager = nil;
        sharedMyManager = [[self alloc] init];
    return sharedMyManager;
}
// -------------------------------------------------------------------------------
//  Native Messages App
//  Displays Native SMS composition interface inside the application.
// -------------------------------------------------------------------------------

- (void) withCallBack:(CallBack*)callBack sendMessage:(NSString*)sendingMessage receiverNumber:(NSString*)toPhoneNumber {
    if([MessageControllerKony canSendText]) {
    MessageControllerKony *messageController = [[MessageControllerKony alloc]init];
    self.callbackObj = callBack;
    UIWindow *window =  [[[UIApplication sharedApplication] windows] firstObject];
    UIViewController *vc = [window rootViewController];
//    UINavigationController *navController = (UINavigationController *)[[[UIApplication sharedApplication] keyWindow] rootViewController];
//    [navController pushViewController:webview animated:YES];
    messageController.body = sendingMessage;
    messageController.recipients = [NSMutableArray arrayWithObject: toPhoneNumber];
    messageController.smsDelegate = self;
    NSLog(@"Message Body %@", messageController.body);
    dispatch_async(dispatch_get_main_queue(), ^{
      //  [vc presentViewController:messageController animated:YES completion:nil];
        [KonyUIContext onCurrentFormControllerPresentModalViewController:messageController animated:YES];
            }
            );
        } else {
            NSLog(@"Simulator not supported");
        }
}

-(void) smsResult:(NSString*) smsInterfaceResult
{
  NSArray * result = [[NSArray alloc] initWithObjects:smsInterfaceResult, nil];
  executeClosure(self.callbackObj, result, NO);
}
@end
