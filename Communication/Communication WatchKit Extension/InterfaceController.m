//
//  InterfaceController.m
//  Communication WatchKit Extension
//
//  Created by Samrat on 2/26/15.
//  Copyright (c) 2015 footyapps27. All rights reserved.
//

#import "InterfaceController.h"


@interface InterfaceController()

@end


@implementation InterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];

    // Configure interface objects here.
    [self.lblData setHidden:YES];
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

/* Request the data from the parent application. */
- (IBAction)btnDataRequested
{
    [WKInterfaceController openParentApplication:[NSDictionary dictionary] reply:^(NSDictionary *replyInfo, NSError *error) {

        NSString *strData = replyInfo[@"key"];
        [self.lblData setText:strData];
        [self.lblData setHidden:NO];
    }];
}
@end



