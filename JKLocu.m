//
//  JKLocu.m
//
//  Created by Jeremy Klein Sr on 2/15/14.
//

#import "JKLocu.h"

@interface JKLocu()
@property(nonatomic,copy,readwrite) NSString *api_key;
@end

@implementation JKLocu

- (id)init {
    return [self initWithApiKey:nil];
}

- (id)initWithApiKey:(NSString *)key
{
    NSParameterAssert(key != nil);
    self = [super init];
    if (self) {
        self.api_key = key;
    }
    return self;
}

- (JKLocuRequest *)requestWithPath:(NSString *)path HTTPMethod:(NSString *)HTTPMethod parameters:(NSDictionary *)parameters delegate:(id<JKLocuRequestDelegate>)delegate
{
    NSMutableDictionary *paramDict = [[NSMutableDictionary alloc] initWithDictionary:parameters];
    paramDict[@"api_key"] = _api_key;
    return [[JKLocuRequest alloc] initWithPath:path HTTPMethod:HTTPMethod parameters:paramDict delegate:delegate];
}
@end
