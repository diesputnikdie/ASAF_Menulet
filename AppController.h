//
//  AppController.h
//  ShowAllFiles Menulet
//
//  Created by Jake Brooks on 7/11/12.
//  Copyright (c) 2012 Jake Brooks All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppController : NSObject {
    /* Our outlets which allow us to access the interface */
    IBOutlet NSMenu *statusMenu;
    
    /* The other stuff ;p */
    NSStatusItem *statusItem;
    NSImage *statusImage;
    NSImage *statusHighlightImage;
}

/* Our IBAction which will call the *Script method when our connected Menu Item is pressed */
-(IBAction)showScript:(id)sender;
-(IBAction)hideScript:(id)sender;

@end
