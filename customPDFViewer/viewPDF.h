//
//  viewPDF.h
//  customPDFViewer
//
//  Created by Andrew Cefalo on 3/22/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface viewPDF : UIView {
    CGPDFDocumentRef document;
    int currentPage;
}

-(void)increasePageNumber;
-(void)decreasePageNumber;

@end
