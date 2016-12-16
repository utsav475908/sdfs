//
//  TagModel.h
//  sdfs
//
//  Created by Apple on 15/12/16.
//  Copyright © 2016 Apple. All rights reserved.
//

@protocol TagModel

@end

#import "JSONModel.h"

@interface TagModel : JSONModel

@property(strong,nonatomic)NSString *id;
@property(strong,nonatomic)NSString *tag;


@end
