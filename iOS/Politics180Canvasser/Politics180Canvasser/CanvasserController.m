//
//  FirstViewController.m
//  Politics180Canvasser
//
//  Created by Van Simmons on 6/10/11.
//  Copyright 2011 White Ram Energy, LLC. All rights reserved.
//

#import "CanvasserController.h"
#import "RKJSONSerialization.h"

@implementation CanvasserController


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return YES;
}

- (IBAction)invokeWebService:(id)sender 
{
    client = [RKClient clientWithBaseURL:@"http://localhost:8080"];
    RKJSONSerialization* rs = [[RKJSONSerialization alloc] init:@""]; 
    [client post:@"/ping" params:rs delegate:self];    
}

- (void)request:(RKRequest*)request didLoadResponse:(RKResponse*)response 
{  
    if ([request isGET]) 
    {  
        // Handling GET /foo.xml  
        
        if ([response isOK]) 
        {  
            // Success! Let's take a look at the data  
            NSLog(@"Retrieved XML: %@", [response bodyAsString]);  
        }  
        
    } 
    else if ([request isPOST]) 
    {  
        
        // Handling POST /other.json  
        if ([response isJSON]) 
        {  
            NSLog(@"Got a JSON response back from our POST!");  
        }  
        
    } 
    else if ([request isDELETE]) 
    {  
        
        // Handling DELETE /missing_resource.txt  
        if ([response isNotFound]) {  
            NSLog(@"The resource path '%@' was not found.", [request resourcePath]);  
        }  
    }  
}  

@end
