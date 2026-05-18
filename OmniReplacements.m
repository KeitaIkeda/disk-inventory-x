//
//  OmniReplacements.m
//  Disk Inventory X
//
//  Replacement categories for OmniFoundation and OmniAppKit functionality.
//

#import "OmniReplacements.h"

#pragma mark - NSString (OFReplacements)

@implementation NSString (OFReplacements)

+ (BOOL) isEmptyString: (NSString *) string
{
    return string == nil || [string length] == 0;
}

+ (NSString *) horizontalEllipsisString
{
    return @"\u2026";
}

@end

#pragma mark - NSDictionary (OFReplacements)

@implementation NSDictionary (OFReplacements)

- (BOOL) boolForKey: (NSString *) key
{
    id value = [self objectForKey: key];
    if ( [value respondsToSelector: @selector(boolValue)] )
        return [value boolValue];
    return NO;
}

@end

#pragma mark - NSMutableDictionary (OFReplacements)

@implementation NSMutableDictionary (OFReplacements)

- (void) setBoolValue: (BOOL) value forKey: (NSString *) key
{
    [self setObject: [NSNumber numberWithBool: value] forKey: key];
}

@end

#pragma mark - NSMutableArray (OFReplacements)

@implementation NSMutableArray (OFReplacements)

- (void) insertObject: (id) anObject inArraySortedUsingSelector: (SEL) selector
{
    NSUInteger low = 0;
    NSUInteger high = [self count];

    while ( low < high )
    {
        NSUInteger mid = (low + high) / 2;
        id midObject = [self objectAtIndex: mid];

        // Call [midObject selector: anObject]
        NSComparisonResult result = (NSComparisonResult)(NSInteger)[midObject performSelector: selector withObject: anObject];

        if ( result == NSOrderedDescending )
            high = mid;
        else
            low = mid + 1;
    }

    [self insertObject: anObject atIndex: low];
}

@end

#pragma mark - NSTableView (OAReplacements)

@implementation NSTableView (OAReplacements)

- (void) setFont: (NSFont *) font
{
    for ( NSTableColumn *column in [self tableColumns] )
    {
        [[column dataCell] setFont: font];
    }

    NSLayoutManager *layoutManager = [[NSLayoutManager alloc] init];
    [self setRowHeight: [layoutManager defaultLineHeightForFont: font] + 2.0];
    [layoutManager release];

    [self setNeedsDisplay: YES];
}

@end
