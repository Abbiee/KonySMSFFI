//
//  ViewController.m
//  KonySMSFFI
//
//  Created by Abbie on 17/01/21.
//

#import "ViewController.h"
#import "SMSSender.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)openSMS:(id)sender {
    [SMSSender sendMessage:@ "Did you received Message?" receiverNumber:@"+919446484637"];
}

@end
