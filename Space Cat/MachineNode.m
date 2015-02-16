//
//  Machine.m
//  Space Cat
//
//  Created by Renato Camilio on 2/15/15.
//  Copyright (c) 2015 com.lighthouselabs. All rights reserved.
//

#import "MachineNode.h"

@implementation MachineNode

+ (instancetype)machineAtPosition:(CGPoint)position {
    MachineNode *machineSpriteNode = [self spriteNodeWithImageNamed:@"machine_1"];
    machineSpriteNode.position = position;
    machineSpriteNode.anchorPoint = CGPointMake(0.5, 0);
    machineSpriteNode.name = @"Machine";
    
    NSArray *textures = @[[SKTexture textureWithImageNamed:@"machine_1"],
                          [SKTexture textureWithImageNamed:@"machine_2"]];
    SKAction *machineAnimation = [SKAction animateWithTextures:textures timePerFrame:0.15];
    SKAction *repeatAnimation = [SKAction repeatActionForever:machineAnimation];
    
    [machineSpriteNode runAction:repeatAnimation];
    
    return machineSpriteNode;
}

@end
