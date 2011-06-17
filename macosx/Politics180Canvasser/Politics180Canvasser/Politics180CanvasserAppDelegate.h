//
//  Politics180CanvasserAppDelegate.h
//  Politics180Canvasser
//
//  Created by Van Simmons on 6/17/11.
//  Copyright 2011 White Ram Energy, LLC. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface Politics180CanvasserAppDelegate : NSObject <NSApplicationDelegate> {
    NSWindow *_window;
    NSPersistentStoreCoordinator *__persistentStoreCoordinator;
    NSManagedObjectModel *__managedObjectModel;
    NSManagedObjectContext *__managedObjectContext;
}

@property (strong) IBOutlet NSWindow *window;

@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;

- (IBAction)saveAction:(id)sender;

@end
