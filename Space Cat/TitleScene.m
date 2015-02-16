//
//  TitleScene.m
//  Space Cat
//
//  Created by Renato Camilio on 2/15/15.
//  Copyright (c) 2015 com.lighthouselabs. All rights reserved.
//

#import "TitleScene.h"
#import "GamePlayScene.h"

@implementation TitleScene

- (id)initWithSize:(CGSize)size {
    if (self = [super initWithSize:size]) {
        SKSpriteNode *splashSpriteNode = [SKSpriteNode spriteNodeWithImageNamed:@"splash_1"];
        splashSpriteNode.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame));
        [self addChild:splashSpriteNode];
    }
    return self;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    GamePlayScene *gamePlayScene = [[GamePlayScene alloc] initWithSize:self.frame.size];
    SKTransition *skTransition = [SKTransition doorsOpenHorizontalWithDuration:0.6];
    [self.view presentScene:gamePlayScene transition:skTransition];
}

@end
