//
//  SKScene+Unarchive.h
//  Space Cat
//
//  Created by Renato Camilio on 2/15/15.
//  Copyright (c) 2015 com.lighthouselabs. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface SKScene (Unarchive)

+ (instancetype)unarchiveFromFile:(NSString *)file;

@end
