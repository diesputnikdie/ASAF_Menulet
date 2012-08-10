//
//  AppController.m
//  ShowAllFiles Menulet
//
//  Created by Jake Brooks on 7/11/12.
//  Copyright (c) 2012 Jake Brooks All rights reserved.
//

#import "AppController.h"


@implementation AppController

- (void) awakeFromNib{
    
    //Create the NSStatusBar and set its length
    statusItem = [[NSStatusBar systemStatusBar] statusItemWithLength:NSSquareStatusItemLength];
    
    //Used to detect where our files are
    NSBundle *bundle = [NSBundle mainBundle];
    
    //Allocates and loads the images into the application which will be used for our NSStatusItem
    statusImage = [[NSImage alloc] initWithContentsOfFile:[bundle pathForResource:@"menuletOff" ofType:@"png"]];
    statusHighlightImage = [[NSImage alloc] initWithContentsOfFile:[bundle pathForResource:@"menuletOn" ofType:@"png"]];
    
    //Sets the images in our NSStatusItem
    [statusItem setImage:statusImage];
    [statusItem setAlternateImage:statusHighlightImage];
    
    //Tells the NSStatusItem what menu to load
    [statusItem setMenu:statusMenu];
    //Sets the tooptip for our item
    [statusItem setToolTip:@"Revealer"];
    //Enables highlighting
    [statusItem setHighlightMode:YES];
}

-(IBAction)showScript:(id)sender{
    NSString* path = [[NSBundle mainBundle] pathForResource:@"showScript" ofType:@"scpt"];
    NSURL* url = [NSURL fileURLWithPath:path];NSDictionary* errors = [NSDictionary dictionary];
    NSAppleScript* appleScript = [[NSAppleScript alloc] initWithContentsOfURL:url error:&errors];
    [appleScript executeAndReturnError:nil];
}

-(IBAction)hideScript:(id)sender{
    NSString* path = [[NSBundle mainBundle] pathForResource:@"hideScript" ofType:@"scpt"];
    NSURL* url = [NSURL fileURLWithPath:path];NSDictionary* errors = [NSDictionary dictionary];
    NSAppleScript* appleScript = [[NSAppleScript alloc] initWithContentsOfURL:url error:&errors];
    [appleScript executeAndReturnError:nil];
}
@end
