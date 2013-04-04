//
//  customPDFViewerViewController.m
//  customPDFViewer
//
//  Created by Andrew Cefalo on 3/22/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "customPDFViewerViewController.h"

@implementation customPDFViewerViewController
@synthesize myPDFView;

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

-(void)viewDidLoad {
    CGRect frame = CGRectMake(0, 100, 768, 800);
    myPDFView = [[viewPDF alloc] initWithFrame:frame];
    [self.view addSlubview:myPDFView];
    [super viewDidLoad];
}

-(IBAction) previousPage {
    [myPDFView decreasePageNumber];
}

-(IBAction) nextPage {
    [myPDFView increasePageNumber];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return YES;
}

@end
