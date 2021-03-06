//
//  Tree.m
//  ExampleEngine
//
//  Created by Ian Terrell on 8/18/11.
//  Copyright (c) 2011 Ian Terrell. All rights reserved.
//

#import "Tree.h"
#import "EETriangle.h"
#import "EERectangle.h"

@implementation Tree

-(id)init {
  self = [super init];
  if (self) {
    EETriangle *leaves = [[EETriangle alloc] init];
    leaves.vertices[0] = GLKVector2Make(-1, 0);
    leaves.vertices[1] = GLKVector2Make( 1, 0);
    leaves.vertices[2] = GLKVector2Make( 0, 3);
    leaves.position = GLKVector2Make(0,-1.2);
    leaves.color = GLKVector4Make(0, 0.5, 0, 1);
    
    EERectangle *trunk = [[EERectangle alloc] init];
    trunk.width = 0.4;
    trunk.height = 1;
    trunk.position = GLKVector2Make(0, -1.25);
    trunk.color = GLKVector4Make(0.4, 0.1, 0, 1);
    
    [self addChild:trunk];
    [self addChild:leaves];
  }
  return self;
}

@end
