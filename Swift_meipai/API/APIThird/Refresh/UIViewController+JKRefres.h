//
//  UIViewController+JKRefres.h
//  MX
//
//  Created by Futao on 16/3/1.
//  Copyright © 2016年 JKSoft. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol JKHTTPPageRefresDelegate <NSObject>

@required
- (void)refresHeaderBeginRereshing;
- (void)refresFooterBeginRereshing;
@end

@interface UIViewController (JKHTTPPageRefres)

- (void)setUpRefresHeaderControllWithScrollView:(UIScrollView *)scrollView
                                 refresDelegate:(id<JKHTTPPageRefresDelegate>)delegate;

- (void)setUpRefresFooterControllWithScrollView:(UIScrollView *)scrollView
                                 refresDelegate:(id<JKHTTPPageRefresDelegate>)delegate;

- (void)setRefresControllHeaderHidden:(BOOL)headerHidden;
- (void)setRefresControllFooterHidden:(BOOL)footerHidden;

- (void)setRefresControllHeaderRefreshing:(BOOL)headerRefreshing;
- (void)setRefresControllFooterRefreshing:(BOOL)footerRefreshing;


- (void)setRefresControllHeaderBeginRefreshing:(BOOL)headerBeginRefreshing NS_DEPRECATED(2_0, 2_0, 2_0, 2_0, "setRefresControllHeaderRefreshing");
- (void)setRefresControllFooterBeginRefreshing:(BOOL)footerBeginRefreshing NS_DEPRECATED(2_0, 2_0, 2_0, 2_0, "setRefresControllHeaderRefreshing");

- (void)setRefresControllHeaderEndRefreshing:(BOOL)headerEndRefreshing NS_DEPRECATED(2_0, 2_0, 2_0, 2_0, "setRefresControllFooterRefreshing");
- (void)setRefresControllFooterEndRefreshing:(BOOL)footerEndRefreshing NS_DEPRECATED(2_0, 2_0, 2_0, 2_0, "setRefresControllFooterRefreshing");
@end
