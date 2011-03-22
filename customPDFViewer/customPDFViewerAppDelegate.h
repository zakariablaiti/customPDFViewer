//
//  customPDFViewerAppDelegate.h
//  customPDFViewer
//
//  Created by Andrew Cefalo on 3/22/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class customPDFViewerViewController;

@interface customPDFViewerAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet customPDFViewerViewController *viewController;

@end
