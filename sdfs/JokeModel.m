//
//  JokeModel.m
//  sdfs
//
//  Created by Apple on 15/12/16.
//  Copyright © 2016 Apple. All rights reserved.
//

#import "JokeModel.h"

@implementation JokeModel

+(JSONKeyMapper*)keyMapper{
    return [[JSONKeyMapper alloc]initWithModelToJSONDictionary:@{@"jokeid":@"jokeid", @"text":@"text"}];
    
}

@end
