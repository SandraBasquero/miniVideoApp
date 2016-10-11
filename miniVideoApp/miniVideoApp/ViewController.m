//
//  ViewController.m
//  miniVideoApp
//
//  Created by Sandra Basquero on 11/10/16.
//  Copyright © 2016 SBS. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, retain) AVPlayerViewController *playerVideo;
@property NSMutableArray* videoNamesArray;
@property NSMutableArray* videoPlayersArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Set video names
    self.videoNamesArray = [NSMutableArray new];
    self.videoPlayersArray = [NSMutableArray new];
    
    [self.videoNamesArray addObject: @"video1.mp4"];
    [self.videoNamesArray addObject: @"video2.mp4"];
    
    //Set, load and autoplay the video thumbs
    for (int i = 0; i < self.videoNamesArray.count; i++) {
        NSString *stringVideoPath = [[NSBundle mainBundle] pathForResource:[self.videoNamesArray objectAtIndex:i] ofType:nil];
        NSURL *urlVideoFile = [NSURL fileURLWithPath:stringVideoPath];
        self.playerVideo = [[AVPlayerViewController alloc] init];
        self.playerVideo.player = [AVPlayer playerWithURL:urlVideoFile];
        self.playerVideo.view.frame = [[self.videoThumbsBtns objectAtIndex:0]bounds];
        self.playerVideo.showsPlaybackControls = YES; //NO
        [self.playerVideo.player play];
        self.playerVideo.view.userInteractionEnabled = YES; //NO
        [self.videoPlayersArray addObject:self.playerVideo]; //Add to videos array
        [[self.videoThumbsBtns objectAtIndex:i] addSubview:self.playerVideo.view];
    }

}

- (IBAction)video1Action:(id)sender {
    NSLog(@"Video 1");
    /*AVPlayerViewController *video = [self.videoPlayersArray objectAtIndex:0];
    video.showsPlaybackControls = YES;
    video.view.userInteractionEnabled = YES;
    video.modalPresentationStyle = UIModalPresentationOverFullScreen;
    [self presentViewController:video animated:YES completion:nil];*/
}

- (IBAction)video2Action:(id)sender {
    NSLog(@"Video 2");
    /*AVPlayerViewController *video = [self.videoPlayersArray objectAtIndex:1];
    video.showsPlaybackControls = YES;
    video.view.userInteractionEnabled = YES;
    video.modalPresentationStyle = UIModalPresentationOverFullScreen;
    [self presentViewController:video animated:YES completion:nil];*/
}


@end


