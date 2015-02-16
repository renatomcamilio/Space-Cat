//
//  GamePlayScene.m
//  Space Cat
//
//  Created by Renato Camilio on 2/15/15.
//  Copyright (c) 2015 com.lighthouselabs. All rights reserved.
//

#import "GamePlayScene.h"

@implementation GamePlayScene

- (id)initWithSize:(CGSize)size {
    if (self = [super initWithSize:size]) {
        // Background
        SKSpriteNode *backgroundSpriteNode = [SKSpriteNode spriteNodeWithImageNamed:@"background_1"];
        backgroundSpriteNode.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame));
        [self addChild:backgroundSpriteNode];
        
        // Machine
        MachineNode *machineSpriteNode = [MachineNode machineAtPosition:CGPointMake(CGRectGetMidX(self.frame)+3, 13)]; // pixel perfect! :)
        [self addChild:machineSpriteNode];
        
        // SpaceCat
        SpaceCatNode *spaceCatSpriteNode = [SpaceCatNode spaceCatAtPosition:CGPointMake(CGRectGetMidX(machineSpriteNode.frame), CGRectGetMinY(machineSpriteNode.frame)-2)];
        [self addChild:spaceCatSpriteNode];
    }
    return self;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    SpaceCatNode *spaceCatSpriteNode = (SpaceCatNode *)[self childNodeWithName:@"SpaceCat"];
    
    [spaceCatSpriteNode performTap];
}

@end
