//
//  main.m
//  ContactList
//
//  Created by Hyung Jip Moon on 2017-02-10.
//  Copyright © 2017 leomoon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    
    @autoreleasepool {

        InputCollector* inputCollector = [[InputCollector alloc] init];
        ContactList *contactList = [[ContactList alloc] init];
        
        while (1) {
            
            printf("--------WELCOME---------\n");
            printf("new - Create a new contact \n");
            printf("list - List all contacts \n");
            printf("quit - Exit Application \n");
            
            NSString *usernameInput = [inputCollector inputForPrompt:@"What would you like do next?\n"];

            if([usernameInput isEqualToString:@"quit"]) {
                
                NSLog(@"User quits");
                break;
            }
           
            else if([usernameInput isEqualToString:@"new"]) {
                
                Contact* aContact = [[Contact alloc] init];

                [aContact setName:[inputCollector inputForPrompt:@"\nEnter your full name: "]];
                [aContact setEmail:[inputCollector inputForPrompt:@"\nEnter your email: "]];
                [contactList addContact:aContact];
            }
            
            else if([usernameInput isEqualToString:@"list"]) {
                
                [contactList printContactLists];
            }
        }
    }
    return 0;
}
