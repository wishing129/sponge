//
//  SIKHttpResponse.h
//  SIKHttpRequestDemo
//
//  Created by Salman Iftikhar on 11/26/12.
//  Copyright (c) 2012 Salman Iftikhar. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SIKHttpResponse: NSObject{
    
}

@property(strong, nonatomic) NSData *responseData;
@property(strong, nonatomic) NSString *responseString;
@property(strong, nonatomic) id responseUrl;

- (SIKHttpResponse *)initWith:(NSData *)_responseData withUrlResponse:(NSHTTPURLResponse *)_responseUrl;

@end
