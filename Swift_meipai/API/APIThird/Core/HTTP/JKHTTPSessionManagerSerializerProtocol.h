//
//  JKHTTPSessionManagerSerializerProtocol.h
//  Pods
//
//  Created by Futao on 16/3/31.
//
//

#ifndef JKHTTPSessionManagerSerializerProtocol_h
#define JKHTTPSessionManagerSerializerProtocol_h

@class AFHTTPRequestSerializer;

@protocol JKHTTPSessionManagerRequestSerialization <NSObject, NSSecureCoding, NSCopying>

@required
- (NSDictionary *)encodeParametersByDecodedParameters:(NSDictionary *)parameters
                                                error:(NSError **)error;
@end

@protocol JKHTTPSessionManagerResponseSerialization <NSObject, NSSecureCoding, NSCopying>

@required
- (NSDictionary *)decodeParametersByEncodedParameters:(NSDictionary *)parameters
                                                error:(NSError **)error;
@end

#endif /* JKHTTPSessionManagerSerializerProtocol_h */
