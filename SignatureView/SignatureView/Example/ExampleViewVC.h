//
//  ExampleViewVC.h
//  SignatureView
//
//  Created by Michal Konturek on 05/05/2014.
//  Copyright (c) 2014 Michal Konturek. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SignatureView;

@interface ExampleViewVC : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *image;

@property (nonatomic, weak) IBOutlet SignatureView *signatureView;
- (IBAction)btnTouched:(id)sender;

@end
