//
//  BWUserManager.m
//  bigWeiAPP
//
//  Created by 大有所为 on 2017/6/14.
//  Copyright © 2017年 大有所为. All rights reserved.
//

#import "BWUserManager.h"

@implementation BWUserManager
+ (BWUserManager *)sharedInstance{

    static dispatch_once_t once;
    static BWUserManager *sharedInstance;
    
    dispatch_once(&once, ^{
        
        sharedInstance = [[BWUserManager alloc]init];
     
    });
    
    return sharedInstance;
}

- (void)setLoginStatus:(BOOL)loginStatus {
    if (loginStatus) {
        [[NSNotificationCenter defaultCenter]postNotificationName:kUserDidLoginNotification object:nil];
    }else {
        
        [[NSNotificationCenter defaultCenter]postNotificationName:kUserDidLogoutNotification object:nil];
    }
}
@end
