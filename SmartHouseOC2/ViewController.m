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
    NSString *dataUrl = @"http://10.0.0.17/arduino/outletOff";
    NSURL *url = [NSURL URLWithString:dataUrl];
    
    // 2
    NSURLSessionDataTask *downloadTask = [[NSURLSession sharedSession]
                                          dataTaskWithURL:url completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
                                              // 4: Handle response here
                                              if(error == nil)
                                              {
                                                  NSString * text = [[NSString alloc] initWithData: data encoding: NSUTF8StringEncoding];
                                                  NSLog(@"Data = %@",text);
                                                  dispatch_async(dispatch_get_main_queue(), ^{
                                                      self.TextView.text = text;
                                                      });
                                              }
                                              else{
                                                  dispatch_async(dispatch_get_main_queue(), ^{
                                                      self.TextView.text = @"error";
                                                      });
                                              }

                                          }];
    
    // 3
    self.TextView.text = @"Stereo Off";
    [downloadTask resume];
}

- (IBAction)StereoOn:(UIButton *)sender {
    // 1
    NSString *dataUrl = @"http://10.0.0.17/arduino/outletOn";
    NSURL *url = [NSURL URLWithString:dataUrl];
    
    // 2
    NSURLSessionDataTask *downloadTask = [[NSURLSession sharedSession]
                                          dataTaskWithURL:url completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
                                              // 4: Handle response here
                                              if(error == nil)
                                              {
                                                  NSString * text = [[NSString alloc] initWithData: data encoding: NSUTF8StringEncoding];
                                                  NSLog(@"Data = %@",text);
                                                  dispatch_async(dispatch_get_main_queue(), ^{
                                                      self.TextView.text = text;
                                                  });
                                              }
                                              else{
                                                  dispatch_async(dispatch_get_main_queue(), ^{
                                                      self.TextView.text = @"error";
                                                  });
                                              }
                                             }];
    
    // 3
    self.TextView.text = @"Stereo On";
    [downloadTask resume];
}

- (IBAction)HeaterOn:(UIButton *)sender {
    // 1
    NSString *dataUrl = @"http://10.0.0.20/arduino/on3";
    NSURL *url = [NSURL URLWithString:dataUrl];
    
    // 2
    NSURLSessionDataTask *downloadTask = [[NSURLSession sharedSession]
                                          dataTaskWithURL:url completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
                                              // 4: Handle response here
                                              if(error == nil)
                                              {
                                                  NSString * text = [[NSString alloc] initWithData: data encoding: NSUTF8StringEncoding];
                                                  NSLog(@"Data = %@",text);
                                                  dispatch_async(dispatch_get_main_queue(), ^{
                                                      self.TextView.text = text;
                                                  });
                                              }
                                              else{
                                                  dispatch_async(dispatch_get_main_queue(), ^{
                                                      self.TextView.text = @"error";
                                                  });
                                              }
                                          }];
    
    // 3
    self.TextView.text = @"Heater On";
    [downloadTask resume];
}

- (IBAction)HeaterOff:(UIButton *)sender {
    // 1
    NSString *dataUrl = @"http://10.0.0.20/arduino/off";
    NSURL *url = [NSURL URLWithString:dataUrl];
    
    // 2
    NSURLSessionDataTask *downloadTask = [[NSURLSession sharedSession]
                                          dataTaskWithURL:url completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
                                              // 4: Handle response here
                                              if(error == nil)
                                              {
                                                  NSString * text = [[NSString alloc] initWithData: data encoding: NSUTF8StringEncoding];
                                                  NSLog(@"Data = %@",text);
                                                  dispatch_async(dispatch_get_main_queue(), ^{
                                                      self.TextView.text = text;
                                                  });
                                              }
                                              else{
                                                  dispatch_async(dispatch_get_main_queue(), ^{
                                                      self.TextView.text = @"error";
                                                  });
                                              }
                                          }];
    
    // 3
    self.TextView.text = @"Heater Off";
    [downloadTask resume];
}

- (IBAction)GarageDoor:(UIButton *)sender {
    // 1
    NSString *dataUrl = @"http://10.0.0.17/arduino/press";
    NSURL *url = [NSURL URLWithString:dataUrl];
    
    // 2
    NSURLSessionDataTask *downloadTask = [[NSURLSession sharedSession]
                                          dataTaskWithURL:url completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
                                              // 4: Handle response here
                                              if(error == nil)
                                              {
                                                  NSString * text = [[NSString alloc] initWithData: data encoding: NSUTF8StringEncoding];
                                                  NSLog(@"Data = %@",text);
                                                  dispatch_async(dispatch_get_main_queue(), ^{
                                                      self.TextView.text = text;
                                                  });
                                              }
                                              else{
                                                  dispatch_async(dispatch_get_main_queue(), ^{
                                                      self.TextView.text = @"error";
                                                  });
                                              }
                                          }];
    
    // 3
    self.TextView.text = @"Garage Door\nPress\n";
    [downloadTask resume];
}

- (IBAction)Spotify:(UIButton *)sender {
    [[UIApplication sharedApplication] openURL:
     [NSURL URLWithString:
      @"spotify://http://open.spotify.com/"]];
}

- (IBAction)Archiveorg:(UIButton *)sender {
    [[UIApplication sharedApplication] openURL:
     [NSURL URLWithString:
      @"googlechrome://www.archive.org/details/GratefulDead"]];
}

- (IBAction)GetWeather:(UIButton *)sender {
    //1
    NSString *dataUrl = @"http://api.wunderground.com/api/ffd1b93b6a497308/conditions/forecast/q/CA/El_Cerrito.json";
    NSURL *url = [NSURL URLWithString:dataUrl];
    
    // 2
    NSURLSessionDataTask *downloadTask = [[NSURLSession sharedSession]
                                          dataTaskWithURL:url completionHandler:^(NSData *data,
                                                                                  NSURLResponse *response,
                                                                                  NSError *error) {
                                              // 4: Handle response here
                                              if(error == nil)
                                              {
                                                  NSString *text = [[NSString alloc] initWithData:data
                                                                                         encoding:NSUTF8StringEncoding];
                                                  
                                                  NSData *jData = [text dataUsingEncoding:NSUTF8StringEncoding];
                                                  NSDictionary *json = [NSJSONSerialization JSONObjectWithData:jData options:0 error:nil];
                                                  
                                                  NSDictionary *currentObservation = [json objectForKey:@"current_observation"];
                                                  NSString *currentTempF = [[currentObservation objectForKey:@"temp_f"]stringValue];
                                                  
                                                  //NSString *printTemp = [currentTempF objectAtIndex:0];
                                                  //NSArray *currentTempF = [[currentObservation objectForKey:@"temp_f"] objectAtIndex:0];
                                                  NSLog(@"%@",currentTempF);
                                                  
                                                  //NSLog(@"Data = %@",json);
                                                  dispatch_async(dispatch_get_main_queue(), ^{
                                                      self.TextView.text = currentTempF;
                                                  });
                                              }
                                              else{
                                                  dispatch_async(dispatch_get_main_queue(), ^{
                                                      self.TextView.text = @"error";
                                                  });
                                              }
                                          }];
    
    // 3
    self.TextView.text = @"Get Weather\n";
    [downloadTask resume];

}


//+ (id)JSONObjectWithData:(NSData *)data
//                 options:(NSJSONReadingOptions)opt
//                   error:(NSError * _Nullable *)error

//http://api.openweathermap.org/data/2.5/forecast/hourly?/lat=37.92&lon=-122.3&APPID=e8848eb1f42cbe246efdcd5f57f918bd


//http://api.wunderground.com/api/ffd1b93b6a497308/conditions/forecast/q/CA/El_Cerrito.json
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

// NSError *jsonError;
// NSData *objectData = [@"{\"2\":\"3\"}" dataUsingEncoding:NSUTF8StringEncoding];
// NSDictionary *json = [NSJSONSerialization JSONObjectWithData:objectData
//                                                     options:NSJSONReadingMutableContainers
//                                                     error:&jsonError];

@end
