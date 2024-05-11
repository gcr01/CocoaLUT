//
//  LUTFormatterImageBased.h
//  Pods
//
//  Created by Greg Cotten on 6/23/14.
//
//

#import "LUTFormatter.h"
#if defined(COCOAPODS_POD_AVAILABLE_oiiococoa)
#import "NSImage+OIIO.h"
#endif

@interface LUTFormatterImageBased : LUTFormatter

+ (UIImage *)imageFromLUT:(LUT *)lut
                 bitdepth:(NSUInteger)bitdepth;
+ (LUT *)LUTFromImage:(UIImage *)image;

@end
