//
//  OmniReplacements.h
//  Disk Inventory X
//
//  Replacement categories for OmniFoundation and OmniAppKit functionality.
//  These provide the minimal subset of methods that were used from the Omni frameworks.
//

#import <Cocoa/Cocoa.h>

#pragma mark - NSString (OFReplacements)

@interface NSString (OFReplacements)

+ (BOOL) isEmptyString: (NSString *) string;
+ (NSString *) horizontalEllipsisString;

@end

#pragma mark - NSDictionary (OFReplacements)

@interface NSDictionary (OFReplacements)

- (BOOL) boolForKey: (NSString *) key;

@end

#pragma mark - NSMutableDictionary (OFReplacements)

@interface NSMutableDictionary (OFReplacements)

- (void) setBoolValue: (BOOL) value forKey: (NSString *) key;

@end

#pragma mark - NSMutableArray (OFReplacements)

@interface NSMutableArray (OFReplacements)

- (void) insertObject: (id) anObject inArraySortedUsingSelector: (SEL) selector;

@end

#pragma mark - NSTableView (OAReplacements)

@interface NSTableView (OAReplacements)

- (void) setFont: (NSFont *) font;

@end
