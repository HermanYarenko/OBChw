//
//  Loader.m
//  Seminar05
//
//  Created by Daniil Rassadin on 12/1/24.
//

#import "Loader.h"

@implementation Loader

- (NSURLSession *)session {
    if (!_session) {
        NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
        _session = [NSURLSession sessionWithConfiguration:configuration];
    }
    return _session;
}

- (void)performPostRequestFromURL:(nonnull NSString *)stringURL arguments:(nonnull NSDictionary *)arguments block:(nonnull void (^)(NSDictionary * _Nonnull __strong, NSError * _Nonnull __strong))block {
}

- (void)performGetRequestFromURL:(nonnull NSString *)stringURL arguments:(nonnull NSDictionary *)arguments block:(nonnull void (^)(NSDictionary * _Nonnull __strong, NSError * _Nonnull __strong))block {
}

@end

