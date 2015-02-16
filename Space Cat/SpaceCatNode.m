//
//  SpaceCatNode.m
//  Space Cat
//
//  Created by Renato Camilio on 2/16/15.
//  Copyright (c) 2015 com.lighthouselabs. All rights reserved.
//

#import "SpaceCatNode.h"

@interface SpaceCatNode ()
@property (nonatomic, strong) SKAction *tapAction;
@end

@implementation SpaceCatNode

+ (instancetype)spaceCatAtPosition:(CGPoint)position {
    SpaceCatNode *spaceCatSpriteNode = [self spriteNodeWithImageNamed:@"spacecat_1"];
    spaceCatSpriteNode.position = position;
    spaceCatSpriteNode.anchorPoint = CGPointMake(0.5, 0);
    spaceCatSpriteNode.name = @"SpaceCat";
    
    return spaceCatSpriteNode;
}

- (SKAction *)tapAction {
    if (_tapAction != nil) {
        return _tapAction;
    }
    
    NSArray *textures = @[[SKTexture textureWithImageNamed:@"spacecat_2"],
                          [SKTexture textureWithImageNamed:@"spacecat_1"]];
    _tapAction = [SKAction animateWithTextures:textures timePerFrame:0.15];
    
    return _tapAction;
}

- (void)performTap {
    [self runAction:self.tapAction];
}

@end
