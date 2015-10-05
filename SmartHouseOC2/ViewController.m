//
//  ViewController.m
//  SmartHouseOC2
//
//  Created by Joseph Hardy on 10/4/15.
//  Copyright © 2015 Joseph Hardy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.TextView.text = @"Ready";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)StereoOff:(UIButton *)sender {
    // 1
    NSString *dataUrl = @"http://10.0.0.20/arduino/outletOff";
    NSURL *url = [NSURL URLWithString:dataUrl];
    
    // 2
    NSURLSessionDataTask *downloadTask = [[NSURLSession sharedSession]
                                          dataTaskWithURL:url completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
                                              // 4: Handle response here
                                          }];
    self.TextView.text = @"Stereo Off";
    
    // 3
    [downloadTask resume];
}

- (IBAction)StereoOn:(UIButton *)sender {
    // 1
    NSString *dataUrl = @"http://10.0.0.20/arduino/outletOn";
    NSURL *url = [NSURL URLWithString:dataUrl];
    
    // 2
    NSURLSessionDataTask *downloadTask = [[NSURLSession sharedSession]
                                          dataTaskWithURL:url completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
                                              // 4: Handle response here
                                          }];
    self.TextView.text = @"Stereo On";

    
    // 3
    [downloadTask resume];
}

//let url = NSURL(string: "http://10.0.0.20/arduino/outletOff")
//var dataString:String = ""
//let task = NSURLSession.sharedSession().dataTaskWithURL(url!) {(data, response, error) in
    //dataString = String(NSString(data: data, encoding: NSUTF8StringEncoding)!)
    
   // dispatch_async(dispatch_get_main_queue()) {
        // Update the UI on the main thread.
    //    self.textLabel.text = dataString
  //  } //dispatch_async
//} //NSURLSession
//task.resume()

@end
