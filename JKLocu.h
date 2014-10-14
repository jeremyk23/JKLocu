//
//  JKLocu.h
//
//  Created by Jeremy Klein Sr on 2/15/14.
//

#import <Foundation/Foundation.h>
#import "JKLocuRequest.h"

@interface JKLocu : NSObject

@property(nonatomic, copy, readonly) NSString *api_key;
//@property(nonatomic, assign) id<JKLocuSessionDelegate> sessionDelegate;

- (id)initWithApiKey:(NSString *)key;

- (JKLocuRequest *)requestWithPath:(NSString *)path HTTPMethod:(NSString *)HTTPMethod parameters:(NSDictionary *)parameters delegate:(id<JKLocuRequestDelegate>)delegate;
@end
