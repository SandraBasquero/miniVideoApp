//
//  ViewController.h
//  miniVideoApp
//
//  Created by Sandra Basquero on 11/10/16.
//  Copyright © 2016 SBS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <AVKit/AVKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *videoThumbsBtns;


- (IBAction)video1Action:(id)sender;
- (IBAction)video2Action:(id)sender;

@end

