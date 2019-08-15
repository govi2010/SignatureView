//
//  ExampleViewVC.m
//  SignatureView
//
//  Created by Michal Konturek on 05/05/2014.
//  Copyright (c) 2014 Michal Konturek. All rights reserved.
//

#import "ExampleViewVC.h"

#import "SignatureView.h"
@implementation ExampleViewVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.edgesForExtendedLayout = UIRectEdgeNone;
    
    self.title = @"Signature View";
 
    [self.signatureView setLineWidth:2.0];
    UIGraphicsBeginImageContext(self.signatureView.frame.size);
    [[UIImage imageNamed:@"image.png"] drawInRect:self.signatureView.bounds];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    [self.signatureView setBackgroundColor:[UIColor colorWithPatternImage:image]];
    self.signatureView.foregroundLineColor = [UIColor colorWithRed:0.204 green:0.596 blue:0.859 alpha:1.000];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)btnTouched:(id)sender {
        [self.image setImage:[self.signatureView signatureImage]];
}
@end
