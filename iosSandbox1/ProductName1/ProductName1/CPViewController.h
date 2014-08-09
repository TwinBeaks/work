//
//  CPViewController.h
//  ProductName1
//
//  Created by Aesis on 8/8/14.
//  Copyright (c) 2014 OrganizationName1. All rights reserved.
//
#pragma mark -
#pragma mark WebViewDelegates
#import <UIKit/UIKit.h>

@interface CPViewController : UIViewController<UIWebViewDelegate>

- (void)webViewDidStartLoad:(UIWebView *)webView;
- (void)webViewDidFinishLoad:(UIWebView *)webView;
- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error;

@property CGRect rect;

@end

UIWebView* contentWebView;
