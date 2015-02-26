//
//  InterfaceController.h
//  Communication WatchKit Extension
//
//  Created by Samrat on 2/26/15.
//  Copyright (c) 2015 footyapps27. All rights reserved.
//

#import <WatchKit/WatchKit.h>
#import <Foundation/Foundation.h>

@interface InterfaceController : WKInterfaceController
@property (weak, nonatomic) IBOutlet WKInterfaceLabel *lblData;
- (IBAction)btnDataRequested;

@end
