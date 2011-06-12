//
//  FirstViewController.h
//  Politics180Canvasser
//
//  Created by Van Simmons on 6/10/11.
//  Copyright 2011 White Ram Energy, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RestKit.h"

@interface CanvasserController : UIViewController <RKRequestDelegate>
{
    RKClient* client;
}

- (IBAction)invokeWebService:(id)sender;

@end
