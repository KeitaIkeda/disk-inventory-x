//
//  PrefsPanelController.m
//  Disk Inventory X
//
//  Created by Tjark Derlien on 28.11.04.
//
//  Copyright (C) 2004 Tjark Derlien.
//  
//  This program is free software; you can redistribute it and/or
//  modify it under the terms of the GNU General Public License
//  as published by the Free Software Foundation; either version 3
//  of the License, or any later version.

//

#import "PrefsPanelController.h"

static NSMutableArray *g_clientRecords = nil;

@implementation PrefsPanelController

+ (PrefsPanelController*) sharedPreferenceController
{
	static PrefsPanelController *sharedPreferenceController = nil;
	
	if (sharedPreferenceController == nil)
		sharedPreferenceController = [[self alloc] init];

	return sharedPreferenceController;
}

+ (void)registerItemName:(NSString *)itemName bundle:(NSBundle *)bundle description:(NSDictionary *)description
{
    if ( g_clientRecords == nil )
        g_clientRecords = [[NSMutableArray alloc] init];
    
    NSMutableDictionary *record = [NSMutableDictionary dictionaryWithDictionary: description];
    [record setObject: itemName forKey: @"itemName"];
    [g_clientRecords addObject: record];
}

+ (NSArray *) allClientRecords
{
    return g_clientRecords ? g_clientRecords : [NSArray array];
}

- (void) showPreferencesPanel
{
    // Minimal implementation - show preferences window
    // The original used OmniAppKit's preference panel system.
    // For now, this is a stub that can be expanded later.
}

@end
