//
//  KeychainItemWrapperProxy.h
//  keychain
//
//  Created by Paul Mietz Egli on 7/20/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "TiProxy.h"
#import "KeychainItemWrapper.h"

@interface ComObscureKeychainItemProxy : TiProxy {
    @private
    KeychainItemWrapper * keychainItem;
}
@property (nonatomic, retain) NSString * account;
@property (nonatomic, retain) NSString * valueData;

@end
