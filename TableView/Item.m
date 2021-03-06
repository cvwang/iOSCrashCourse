//
//  Item.m
//  TableView
//
//  Created by Janum Trivedi on 3/10/15.
//  Copyright (c) 2015 Janum Trivedi. All rights reserved.
//

#import "Item.h"

@implementation Item

NSString* const kItemTitleString = @"item_title";
NSString* const kDateCreated = @"date_created";

- (id)initWithCoder:(NSCoder *)coder
{
    if (self == [super init]) {
        self.itemTitle = [coder decodeObjectForKey:kItemTitleString];
        self.dateCreated = [coder decodeObjectForKey:kDateCreated];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)coder
{
    [coder encodeObject:self.itemTitle forKey:kItemTitleString];
    [coder encodeObject:self.dateCreated forKey:kDateCreated];
}

- (instancetype)initWithTitle:(NSString *)title dateCreated:(NSDate *)date
{
    // Call this class's "super" init method (i.e., NSObject's init)
    if (self == [super init]) {
        // If successful, assign properties, etc.
        
        self.itemTitle = title;
        self.dateCreated = date;
    }
    
    // Return self, the new Item instance.
    return self;
}

@end
