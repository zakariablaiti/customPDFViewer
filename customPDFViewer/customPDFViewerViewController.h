//
//  customPDFViewerViewController.h
//  customPDFViewer
//
//  Created by Andrew Cefalo on 3/22/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "viewPDF.h"

@interface customPDFViewerViewController : UIViewController {
    viewPDF *myPDFView;
}

@property (nonatomic, retain) viewPDF *myPDFView;

-(IBAction)previousPage;
-(IBAction)nextPage;

@end
