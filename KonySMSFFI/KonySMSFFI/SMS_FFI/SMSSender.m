//
//  SMSSender.m
//  KonySMSFFI
//
//  Created by Abbie on 17/01/21.
//

#import "SMSSender.h"
#import "MessageControllerKony.h"

@interface SMSSender ()
@end

@implementation SMSSender

+ (void) sendMessage:(NSString*)sendingMessage receiverNumber:(NSString*)toPhoneNumber
{
    MessageControllerKony *messageController = [[MessageControllerKony alloc]init];
    UIWindow *window =  [[[UIApplication sharedApplication] windows] firstObject];
    UIViewController *vc = [window rootViewController];
//    UINavigationController *navController = (UINavigationController *)[[[UIApplication sharedApplication] keyWindow] rootViewController];
//    [navController pushViewController:webview animated:YES];
    messageController.body = sendingMessage;
    messageController.recipients = [NSMutableArray arrayWithObject: toPhoneNumber];
    NSLog(@"Message Body %@", messageController.body);
    [vc presentViewController:messageController animated:YES completion:nil];
}

@end
