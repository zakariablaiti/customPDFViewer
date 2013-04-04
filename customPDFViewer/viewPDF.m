//
//  viewPDF.m
//  customPDFViewer
//
//  Created by Andrew Cefalo on 3/22/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "viewPDF.h"


@implementation viewPDF

- (id)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:(CGRect)frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        NSString *pathToPdfDoc = [[NSBundle mainBundle] pathForResource:@"myPDF" ofType:@"pdf"];
        NSURL *pdfUrl = [NSURL fileURLWithPath:pathToPdfDoc];
        document = CGPDFDocumentCreateWithURL((CFURLRef)pdfUrl);
        currentPage = 1;
    }
    return self;
}

-(void)drawRect:(CGRect)inRect{                 
    if(document) {
        CGPDFPageRef page = CGPDFDocumentGetPage(document, currentPage);
        CGContextRef ctx = UIGraphicsGetCurrentContext();
        CGContextSaveGState(ctx);
        CGContextTranslateCTM(ctx, 0.0, [self bounds].size.height);
        CGContextScaleCTM(ctx, 1.0, -1.0);
        CGContextConcatCTM(ctx, CGPDFPageGetDrawingTransform(page, kCGPDFCropBox, [self bounds], 0, true));
        CGContextDrawPDFPage(ctx, page);    
        CGContextRestoreGState(ctx);
    }
}

-(void)increasePageNumber {
    size_t pageCount = CGPDFDocumentGetNumberOfPages(document);
    if (currentPage == pageCount) {
        // do nothing
    }
    else {
        currentPage++;
        [self setNeedsDisplay];
    }
}

-(void)decreasePageNumber {
    if (currentPage == 1) {
        // do nothing
    }
    else {
        currentPage--;
        [self setNeedsDisplay];
    }
}

- (void)dealloc{
    [super dealloc];
}

@end
