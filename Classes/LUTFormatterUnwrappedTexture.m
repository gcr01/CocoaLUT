//
//  LUTFormatterUnwrappedTexture.m
//  Pods
//
//  Created by Wil Gieseler on 3/30/14.
//
//

#import "LUTFormatterUnwrappedTexture.h"
#import "CocoaLUT.h"
#if defined(COCOAPODS_POD_AVAILABLE_oiiococoa)
#import "NSImage+OIIO.h"
#endif

@implementation LUTFormatterUnwrappedTexture

+ (void)load{
    [super load];
}

+ (NSString *)formatterName{
    return @"Unwrapped Cube Image 3D LUT";
}

+ (NSString *)formatterID{
    return @"unwrappedCube";
}

@end
