//
//  JsApiTest.m
//  dspider
//
//  Created by 杜文 on 16/12/30.
//  Copyright © 2016年 杜文. All rights reserved.
//

#import "JsApiTest.h"

@implementation JsApiTest

- (NSString *) testSyn:(NSDictionary *) args
{
    return [(NSString *)[args valueForKey:@"msg"] stringByAppendingString:@"[ syn call]"];
}

- (NSString *) testAsyn:(NSDictionary *) args :(void (^)(NSString * _Nullable result))completionHandler
{
    completionHandler([(NSString *)[args valueForKey:@"msg"] stringByAppendingString:@"[ asyn call]"]);
    return nil;
}

- (NSString *)testNoArgSyn:(NSDictionary *) args
{
    return  @"testNoArgSyn called [ syn call]";
}

- (NSString *)testNoArgAsyn:(NSDictionary *) args :(void (^)(NSString * _Nullable result))completionHandler
{
    completionHandler(@"testNoArgAsyn called [ asyn call]");
    return  nil;
}

@end
