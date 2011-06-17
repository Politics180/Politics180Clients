//
//  Politics180CanvasserTests.m
//  Politics180CanvasserTests
//
//  Created by Van Simmons on 6/10/11.
//  Copyright 2011 White Ram Energy, LLC. All rights reserved.
//

#import "Politics180CanvasserTests.h"

@implementation Politics180CanvasserTests

- (void)setUp
{
    [super setUp];
    controller = [[CanvasserController alloc] init];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testExample
{
    [controller invokeWebService:self];
}

@end
