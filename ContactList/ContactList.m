//
//  ContactList.m
//  ContactList
//
//  Created by Hyung Jip Moon on 2017-02-10.
//  Copyright © 2017 leomoon. All rights reserved.
//

#import "ContactList.h"
#import "Contact.h"

@implementation ContactList
- (instancetype)init {
    if (self = [super init]) {
        _storeContacts = [NSMutableArray array];
    }
    return self;
}

- (void)addContact:(Contact *)newContact {
    [_storeContacts addObject:newContact];
}

- (void)printContactLists {
    for (int i = 0; i < _storeContacts.count; ++i) {
        Contact *aContact = [[Contact alloc] init];
        aContact = [_storeContacts objectAtIndex:i];
        NSLog(@"%d<%@>(%@)", i, aContact.name, aContact.email);
    }
}
@end
