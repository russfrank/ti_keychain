//
//  KeychainItemWrapperProxy.m
//  keychain
//
//  Created by Paul Mietz Egli on 7/20/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ComObscureKeychainItemProxy.h"

@implementation ComObscureKeychainItemProxy


-(void)_initWithProperties:(NSDictionary*)properties 
{
    [super _initWithProperties:properties];
    
    NSString *identifier = [properties objectForKey:@"identifier"];
    if (identifier == nil) 
    {        
        NSLog(@"[ERROR] KeychainItem created without an identifier");
        @throw [NSException exceptionWithName:@"com.obscure.keychain" 
                                       reason:[NSString stringWithFormat:@"KeychainItem created without an identifier"] 
                                     userInfo:nil];
    }
    NSString *accessGroup = [properties objectForKey:@"accessGroup"];
    keychainItem = [[KeychainItemWrapper alloc] initWithIdentifier:identifier accessGroup:accessGroup];
}

-(void) dealloc {
    [keychainItem release];
    [super dealloc];
}

- (NSString *)account {
    return [keychainItem objectForKey:(id)kSecAttrAccount];
}

- (void)setAccount:(NSString *)value {
    [keychainItem setObject:value forKey:(id)kSecAttrAccount];
}

- (NSString *)valueData {
    return [keychainItem objectForKey:(id)kSecValueData];
}

- (void)setValueData:(NSString *)value {
    [keychainItem setObject:value forKey:(id)kSecValueData];
}

- (NSString *)description {
    return [keychainItem objectForKey:(id)kSecAttrDescription];
}

- (void)setDescription:(NSString *)value {
    [keychainItem setObject:value forKey:(id)kSecAttrDescription];
}

- (NSString *)comment {
    return [keychainItem objectForKey:(id)kSecAttrComment];
}

- (void)setComment:(NSString *)value {
    [keychainItem setObject:value forKey:(id)kSecAttrComment];
}


- (void)reset:(id)args {
    [keychainItem resetKeychainItem];
}

@end
