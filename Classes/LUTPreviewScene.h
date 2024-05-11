//
//  LUTPreviewSceneGenerator.h
//  Pods
//
//  Created by Wil Gieseler on 12/16/13.
//
//

#import <Foundation/Foundation.h>
#import <SceneKit/SceneKit.h>
#import "CocoaLUT.h"

@interface LUTPreviewScene : SCNScene

@property (strong, nonatomic) SCNNode *dotGroup;
@property (strong, nonatomic) SCNNode *cubeOutline;
@property (strong, nonatomic) SCNNode *axes;
@property (assign, nonatomic) double animationPercentage;
@property (strong) LUT3D *lut;

+ (instancetype)sceneForLUT:(LUT *)lut;
- (instancetype)sceneWithUpdatedLUT:(LUT *)lut;


@end
