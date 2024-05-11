//
//  LUTFormatterImageBased.m
//  Pods
//
//  Created by Greg Cotten on 6/23/14.
//
//

#import "LUTFormatterImageBased.h"
#import "M13OrderedDictionary.h"

@implementation LUTFormatterImageBased

+ (NSData *)dataFromLUT:(LUT *)lut withOptions:(NSDictionary *)options {
    NSException *exception = [NSException exceptionWithName:@"Unsupported Platform"
                                                     reason:@"LUTFormatterCMSTestPattern doesn't currently support iOS." userInfo:nil];
    @throw exception;
    return nil;
}

+ (UIImage *)imageFromLUT:(LUT *)lut
                 bitdepth:(NSUInteger)bitdepth {
    NSException *exception = [NSException exceptionWithName:@"Unsupported Platform"
                                                     reason:@"LUTFormatterCMSTestPattern doesn't currently support iOS." userInfo:nil];
    @throw exception;
    return nil;
}
+ (LUT *)LUTFromImage:(UIImage *)image {
    NSException *exception = [NSException exceptionWithName:@"Unsupported Platform"
                                                     reason:@"LUTFormatterCMSTestPattern doesn't currently support iOS." userInfo:nil];
    @throw exception;
    return nil;
}

+ (LUTFormatterOutputType)outputType{
    return LUTFormatterOutputType3D;
}

+ (NSArray *)fileExtensions{
 //   #if defined(COCOAPODS_POD_AVAILABLE_oiiococoa)
  //  return @[@"tiff", @"tif", @"dpx"];
  //  #else
    return @[@"tiff", @"tif"];
  //  #endif
}

+ (BOOL)canRead{
    return NO;
}

+ (BOOL)canWrite{
    return NO;
}

+ (NSDictionary *)constantConstraints{
    return @{@"outputBounds":@[@0, @1],
             @"lutSize":@[@2, @64]};
}

+ (NSArray *)allOptions{
    M13OrderedDictionary *tiffBitDepthOrderedDict = [[M13OrderedDictionary alloc] initWithObjects:@[@(16),@(8)] pairedWithKeys:@[@"16-bit", @"8-bit"]];

    NSDictionary *tiffOptions =
    @{@"fileTypeVariant":@"TIFF",
      @"bitDepth":tiffBitDepthOrderedDict};

//    #if defined(COCOAPODS_POD_AVAILABLE_oiiococoa)
//    M13OrderedDictionary *dpxBitDepthOrderedDict = [[M13OrderedDictionary alloc] initWithObjects:@[@(OIIOImageEncodingTypeUINT10), @(OIIOImageEncodingTypeUINT12), @(OIIOImageEncodingTypeUINT16)] pairedWithKeys:@[@"10-bit", @"12-bit", @"16-bit"]];
//
//    NSDictionary *dpxOptions =
//    @{@"fileTypeVariant":@"DPX",
//      @"bitDepth":dpxBitDepthOrderedDict};
//    return @[dpxOptions, tiffOptions];
//    #else
    return @[tiffOptions];
//    #endif
}

+ (NSDictionary *)defaultOptions{
    NSDictionary *dictionary;
//    #if defined(COCOAPODS_POD_AVAILABLE_oiiococoa)
//    dictionary = @{@"fileTypeVariant": @"DPX",
//                   @"bitDepth": @(OIIOImageEncodingTypeUINT10)};
//    #else
    dictionary = @{@"fileTypeVariant": @"TIFF",
                   @"bitDepth": @(16)};
//#endif
    return @{[self formatterID]: dictionary};
}

+ (NSString *)utiString{
    return @"public.image";
}


@end
