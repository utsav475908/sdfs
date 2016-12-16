//
//  ViewController.m
//  sdfs
//
//  Created by Apple on 15/12/16.
//  Copyright © 2016 Apple. All rights reserved.
//

#import "ViewController.h"
#import "JokeModel.h"
#import "JsonToDictionary.h"

@interface ViewController ()
@property(strong,nonatomic)NSData *someData;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.label = [[UILabel alloc]initWithFrame:self.view.bounds];
    self.label.numberOfLines = 0;
    self.label.textAlignment = NSTextAlignmentCenter;
    self.label.alpha = 0;
    [self.view addSubview:self.label];
    [self fetchJokes];
    
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)fetchJokes {
    // jokesurl
    NSString *filePath = [[NSBundle mainBundle]pathForResource:@"Why" ofType:@"json"];
    NSData *jsonData = [[NSData alloc]initWithContentsOfFile:filePath];
    NSError *error = nil;
    NSDictionary *jsonDict = [NSJSONSerialization JSONObjectWithData:jsonData options:0 error:&error];
    NSString *something = [JsonToDictionary jsonStringFromDictionary:jsonDict];
    self.jokes = [JokeModel arrayOfModelsFromData:jsonData error:nil];
    NSLog(@"THE VALUE IS %@",self.jokes);
   // dispatch_async(dispatch_get_main_queue(), ^{
    //    [self showNextJoke];
  //  });
    
}

- (void)showNextJoke {/*
    JokeModel* model = self.jokes[arc4random() % self.jokes.count];
    
    NSString* tags = model.tags?[model.tags componentsJoinedByString:@","]:@"no tags";
    self.label.text = [NSString stringWithFormat:@"%i. %@\n\n%@", model.id, model.text, tags];
    
    [UIView animateWithDuration:1.0 animations:^{
        self.label.alpha = 1.0;
    } completion:^(BOOL finished) {
        [self performSelector:@selector(hideJoke) withObject:nil afterDelay:5.0];
    }];
                       */
}

- (void)hideJoke {
    [UIView animateWithDuration:1.0 animations:^{
        self.label.alpha = 0.0;
    } completion:^(BOOL finished) {
        [self showNextJoke];
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
