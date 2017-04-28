//
//  UIViewController+JKRefres.m
//  MX
//
//  Created by Futao on 16/3/1.
//  Copyright © 2016年 JKSoft. All rights reserved.
//

#import "MJRefresh.h"
#import "UIViewController+JKRefres.h"
@implementation UIViewController (JKHTTPPageRefres)
static char refresControllHeaderTargetKey;
static char refresControllFooterTargetKey;

- (UIScrollView *)refresControllHeaderTarget {
    UIScrollView *obj = objc_getAssociatedObject(self, &refresControllHeaderTargetKey);
    ;
    return obj;
}
- (void)setRefresHeaderControllTarget:(UIScrollView *)refresHeaderControllTarget {
    objc_setAssociatedObject(self, &refresControllHeaderTargetKey, refresHeaderControllTarget, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
- (UIScrollView *)refresControllFooterTarget {
    UIScrollView *obj = objc_getAssociatedObject(self, &refresControllFooterTargetKey);
    ;
    return obj;
}
- (void)setRefresFooterControllTarget:(UIScrollView *)refresFooterControllTarget {
    objc_setAssociatedObject(self, &refresControllFooterTargetKey, refresFooterControllTarget, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
- (void)setUpRefresHeaderControllWithScrollView:(UIScrollView *)scrollView refresDelegate:(id<JKHTTPPageRefresDelegate>)delegate {
    __weak UIScrollView *weakHeaderScrollView = scrollView;

    MJRefreshNormalHeader *header = [MJRefreshNormalHeader headerWithRefreshingTarget:delegate refreshingAction:@selector(refresHeaderBeginRereshing)];
    header.automaticallyChangeAlpha = YES;
    header.lastUpdatedTimeLabel.hidden = YES;
    weakHeaderScrollView.mj_header = header;
    [self setRefresHeaderControllTarget:weakHeaderScrollView];
}
- (void)setUpRefresFooterControllWithScrollView:(UIScrollView *)scrollView refresDelegate:(id<JKHTTPPageRefresDelegate>)delegate {
    __weak UIScrollView *weakFooterScrollView = scrollView;
    MJRefreshAutoNormalFooter *footer = [MJRefreshAutoNormalFooter footerWithRefreshingTarget:delegate refreshingAction:@selector(refresFooterBeginRereshing)];
    footer.automaticallyRefresh = NO;
    weakFooterScrollView.mj_footer = footer;
    [self setRefresFooterControllTarget:weakFooterScrollView];
}
- (void)setRefresControllHeaderRefreshing:(BOOL)headerRefreshing {
    __weak UIScrollView *weakHeaderScrollView = [self refresControllHeaderTarget];
    if (headerRefreshing) {
        [weakHeaderScrollView.mj_header beginRefreshing];
    }else{
        [weakHeaderScrollView.mj_header endRefreshing];
    }
}
- (void)setRefresControllFooterRefreshing:(BOOL)footerRefreshing {
    __weak UIScrollView *weakFooterScrollView = [self refresControllFooterTarget];
    if (footerRefreshing) {
        [weakFooterScrollView.mj_footer beginRefreshing];
    }else{
        [weakFooterScrollView.mj_footer endRefreshing];
    }
}

- (void)setRefresControllHeaderHidden:(BOOL)headerHidden {
    __weak UIScrollView *weakHeaderScrollView = [self refresControllHeaderTarget];
    weakHeaderScrollView.mj_header.hidden = headerHidden;
}
- (void)setRefresControllFooterHidden:(BOOL)footerHidden {
    __weak UIScrollView *weakFooterScrollView = [self refresControllFooterTarget];
    weakFooterScrollView.mj_footer.hidden = footerHidden;
}

- (void)setRefresControllHeaderBeginRefreshing:(BOOL)headerBeginRefreshing {
    if (headerBeginRefreshing) {
        __weak UIScrollView *weakHeaderScrollView = [self refresControllHeaderTarget];
        [weakHeaderScrollView.mj_header beginRefreshing];
    }
}
- (void)setRefresControllFooterBeginRefreshing:(BOOL)footerBeginRefreshing {
    if (footerBeginRefreshing) {
        __weak UIScrollView *weakFooterScrollView = [self refresControllFooterTarget];
        [weakFooterScrollView.mj_footer beginRefreshing];
    }
}

- (void)setRefresControllHeaderEndRefreshing:(BOOL)headerEndRefreshing {
    if (headerEndRefreshing) {
        __weak UIScrollView *weakHeaderScrollView = [self refresControllHeaderTarget];
        [weakHeaderScrollView.mj_header endRefreshing];
    }
}
- (void)setRefresControllFooterEndRefreshing:(BOOL)footerEndRefreshing {
    if (footerEndRefreshing) {
        __weak UIScrollView *weakFooterScrollView = [self refresControllFooterTarget];
        [weakFooterScrollView.mj_footer endRefreshing];
    }
}

@end
