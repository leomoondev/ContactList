//
//  ContactList.h
//  ContactList
//
//  Created by Hyung Jip Moon on 2017-02-10.
//  Copyright © 2017 leomoon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@interface ContactList : NSObject

@property NSMutableArray* storeContacts;

- (instancetype)init;
- (void)addContact:(Contact *)newContact;
- (void)printContactLists;


@end







