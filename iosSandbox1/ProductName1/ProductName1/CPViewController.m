//
//  CPViewController.m
//  ProductName1
//
//  Created by Aesis on 8/8/14.
//  Copyright (c) 2014 OrganizationName1. All rights reserved.
//

#import "CPViewController.h"

@implementation CPViewController

@synthesize rect;

- (id)init
{
    NSLog(@"CPViewController init");
    if (self = [super init]) {
        
    }
    return self;
}

/*
 
 - (void)loadView {
 }
 */


/*
  - (void)viewDidLoad {
 [super viewDidLoad];
 }
 */


// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
    NSLog(@"loadView - start");
 
    UIView *startView = self.view = [[UIView alloc] initWithFrame:[UIScreen mainScreen].applicationFrame];
    [startView setAutoresizingMask:UIViewAutoresizingFlexibleHeight|UIViewAutoresizingFlexibleWidth];
    [startView setBackgroundColor:[UIColor greenColor]];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button addTarget:self
            action:@selector(aMethod:)
            forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:@"Show View" forState:UIControlStateNormal];
    button.frame = CGRectMake(80.0, 210.0, 160.0, 40.0);

    [self addMyButton];
    
    [startView addSubview:button];
    
    //CGRect rect = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    
    contentWebView = [[UIWebView alloc] initWithFrame:rect];
    contentWebView.delegate = self;
    contentWebView.multipleTouchEnabled = YES;
    contentWebView.scalesPageToFit = NO;
    [self.view addSubview:contentWebView];
    
    NSLog(@"loadView - ended");
}

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    NSLog(@"viewDidLoad - before super");
    [super viewDidLoad];

    
    
    //[contentWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://m.porntube.com/"]]];
    [contentWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://img.youtube.com/vi/BOksW_NabEk/default.jpg"]]];
//    [contentWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://www.youtube.com/watch?v=BOksW_NabEk"]]];
    //[contentWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://m.youtube.com/results?q=boobs"]]];
    //[contentWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.apple.com/"]]];
    
    NSLog(@"viewDidLoad - after super");
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)addMyButton{    // Method for creating button, with background image and other properties
    
    UIButton *playButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    playButton.frame = CGRectMake(110.0, 360.0, 100.0, 30.0);
    [playButton setTitle:@"Play" forState:UIControlStateNormal];
    playButton.backgroundColor = [UIColor clearColor];
    [playButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal ];
    UIImage *buttonImageNormal = [UIImage imageNamed:@"blueButton.png"];
    UIImage *strechableButtonImageNormal = [buttonImageNormal stretchableImageWithLeftCapWidth:12 topCapHeight:0];
    [playButton setBackgroundImage:strechableButtonImageNormal forState:UIControlStateNormal];
    UIImage *buttonImagePressed = [UIImage imageNamed:@"whiteButton.png"];
    UIImage *strechableButtonImagePressed = [buttonImagePressed stretchableImageWithLeftCapWidth:12 topCapHeight:0];
    [playButton setBackgroundImage:strechableButtonImagePressed forState:UIControlStateHighlighted];
    [playButton addTarget:self action:@selector(aAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:playButton];
}

- (void)didReceiveMemoryWarning
{
    NSLog(@"Did receive memory warning - before super");
    [super didReceiveMemoryWarning];
    NSLog(@"Did receive memory warning - after super");
    // Dispose of any resources that can be recreated.
}

- (void)aAction: (NSObject*)input {
    NSLog(@"aACTION Input: %@", input);
}

- (void)aMethod: (NSObject*)input {
    NSLog(@"aMETHOD Input: %@", input);
}

- (void)webViewDidStartLoad:(UIWebView *)webView{
    NSLog(@"webViewDidStartLoad");
}

- (void)webViewDidFinishLoad:(UIWebView *)webView{
    NSLog(@"webViewDidFinishLoad");
    /*CGRect newBounds = webView.bounds;
    newBounds.size.height = webView.scrollView.contentSize.height/3;
    newBounds.size.width = webView.scrollView.contentSize.width/2;
    webView.bounds = newBounds;*/
}

- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error{
    NSLog(@"webView other");

}


- (void)dealloc {
    //[contentWebView release];
}

@end
