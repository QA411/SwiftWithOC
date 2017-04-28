//
//  JKHTTPSessionManager.h
//  YoCar
//
//  Created by Futao on 15/9/29.
//  Copyright © 2015年 YoCar. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <AFNetworking/AFHTTPSessionManager.h>
#import "JKHTTPSessionManagerSerializerProtocol.h"
#import "JKHTTPObject.h"

@interface JKHTTPSessionManager : NSObject <NSObject, NSSecureCoding, NSCopying>

- (instancetype)initWithBaseURL:(NSURL *)url
           sessionConfiguration:(NSURLSessionConfiguration *)configuration;


@property (nonatomic, strong, readonly) NSURL *baseURL;
@property (nonatomic, strong, readonly) NSURLSessionConfiguration *sessionConfiguration;
@property (nonatomic, strong, readonly) AFHTTPSessionManager *sessionManager;
@property (nonatomic, strong, readwrite) id<JKHTTPSessionManagerRequestSerialization> requestSerializer;
@property (nonatomic, strong, readwrite) id<JKHTTPSessionManagerResponseSerialization> responseSerializer;
@property (nonatomic, strong, readwrite) Class responseObjectClass; // Default [JKHTTPObject class]

///---------------------------
/// @name Making HTTP Requests
///---------------------------
/**
 Creates and runs an `NSURLSessionDataTask` with a `GET` request.
 
 @param URLString The URL string used to create the request URL.
 @param parameters The parameters to be encoded according to the client request serializer.
 @param progress A block object to be executed when the download progress is updated. Note this block is called on the session queue, not the main queue.
 @param completed A block object.
 
 @see -dataTaskWithRequest:uploadProgress:downloadProgress:completionHandler:
 */
- (NSURLSessionDataTask *)GET:(NSString *)URLString
                   parameters:(id)parameters
                     completed:(void (^)(__kindof JKHTTPObject *responseObject))completed;

- (NSURLSessionDataTask *)GET:(NSString *)URLString
                   parameters:(id)parameters
                     progress:(void (^)(NSProgress *downloadProgress))downloadProgress
                     completed:(void (^)(__kindof JKHTTPObject *responseObject))completed;

/**
 Creates and runs an `NSURLSessionDataTask` with a `HEAD` request.
 
 @param URLString The URL string used to create the request URL.
 @param parameters The parameters to be encoded according to the client request serializer.
 @param completed A block object.
 
 @see -dataTaskWithRequest:completionHandler:
 */
- (NSURLSessionDataTask *)HEAD:(NSString *)URLString
                    parameters:(id)parameters
                      completed:(void (^)(NSURLSessionDataTask *task,__kindof JKHTTPObject *responseObject))completed;

/**
 Creates and runs an `NSURLSessionDataTask` with a `POST` request.
 
 @param URLString The URL string used to create the request URL.
 @param parameters The parameters to be encoded according to the client request serializer.
 @param progress A block object to be executed when the upload progress is updated. Note this block is called on the session queue, not the main queue.
 @param completed A block object.
 
 @see -dataTaskWithRequest:uploadProgress:downloadProgress:completionHandler:
 */
- (NSURLSessionDataTask *)POST:(NSString *)URLString
                    parameters:(id)parameters
                      completed:(void (^)(__kindof JKHTTPObject *responseObject))completed;


- (NSURLSessionDataTask *)POST:(NSString *)URLString
                    parameters:(id)parameters
                      progress:(void (^)(NSProgress *))uploadProgress
                      completed:(void (^)(__kindof JKHTTPObject *responseObject))completed;


/**
 Creates and runs an `NSURLSessionDataTask` with a multipart `POST` request.
 
 @param URLString The URL string used to create the request URL.
 @param parameters The parameters to be encoded according to the client request serializer.
 @param block A block that takes a single argument and appends data to the HTTP body. The block argument is an object adopting the `AFMultipartFormData` protocol.
 @param progress A block object to be executed when the upload progress is updated. Note this block is called on the session queue, not the main queue.
 @param completed A block object.
 
 @see -dataTaskWithRequest:uploadProgress:downloadProgress:completionHandler:
 */
- (NSURLSessionDataTask *)POST:(NSString *)URLString
                    parameters:(id)parameters
     constructingBodyWithBlock:(void (^)(id<AFMultipartFormData> formData))block
                      progress:(void (^)(NSProgress *))uploadProgress
                      completed:(void (^)(__kindof JKHTTPObject *responseObject))completed;

/**
 Creates and runs an `NSURLSessionDataTask` with a `PUT` request.
 
 @param URLString The URL string used to create the request URL.
 @param parameters The parameters to be encoded according to the client request serializer.
 @param success A block object to be executed when the task finishes successfully. This block has no return value and takes two arguments: the data task, and the response object created by the client response serializer.
 @param failure A block object to be executed when the task finishes unsuccessfully, or that finishes successfully, but encountered an error while parsing the response data. This block has no return value and takes a two arguments: the data task and the error describing the network or parsing error that occurred.
 
 @see -dataTaskWithRequest:completionHandler:
 */
- (NSURLSessionDataTask *)PUT:(NSString *)URLString
                   parameters:(id)parameters
                     completed:(void (^)(__kindof JKHTTPObject *responseObject))completed;


/**
 Creates and runs an `NSURLSessionDataTask` with a `PATCH` request.
 
 @param URLString The URL string used to create the request URL.
 @param parameters The parameters to be encoded according to the client request serializer.
 @param completed A block object.
 
 @see -dataTaskWithRequest:completionHandler:
 */
- (NSURLSessionDataTask *)PATCH:(NSString *)URLString
                     parameters:(id)parameters
                       completed:(void (^)(__kindof JKHTTPObject *responseObject))completed;

/**
 Creates and runs an `NSURLSessionDataTask` with a `DELETE` request.
 
 @param URLString The URL string used to create the request URL.
 @param parameters The parameters to be encoded according to the client request serializer.
 @param completed A block object.
 
 @see -dataTaskWithRequest:completionHandler:
 */
- (NSURLSessionDataTask *)DELETE:(NSString *)URLString
                      parameters:(id)parameters
                        completed:(void (^)(__kindof JKHTTPObject *responseObject))completed;

- (void)invalidateAndCancelAllSession;
@end
