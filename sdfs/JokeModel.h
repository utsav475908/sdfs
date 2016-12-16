//
//  JokeModel.h
//  sdfs
//
//  Created by Apple on 15/12/16.
//  Copyright © 2016 Apple. All rights reserved.
//

#import "JSONModel.h"
//#import "TagModel.h"

@interface JokeModel : JSONModel

@property(nonatomic) int jokeid;
@property(strong,nonatomic)NSString *text;

//@property(strong,nonatomic) NSArray <TagModel,Optional> *tags;

@end
