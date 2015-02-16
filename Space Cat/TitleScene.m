//
//  TitleScene.m
//  Space Cat
//
//  Created by Renato Camilio on 2/15/15.
//  Copyright (c) 2015 com.lighthouselabs. All rights reserved.
//

#import "TitleScene.h"

@implementation TitleScene

- (id)initWithSize:(CGSize)size {
    if (self = [super initWithSize:size]) {
        SKSpriteNode *background = [SKSpriteNode spriteNodeWithImageNamed:@"splash_1"];
        background.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame));
        [self addChild:background];
    }
    return self;
}

@end
