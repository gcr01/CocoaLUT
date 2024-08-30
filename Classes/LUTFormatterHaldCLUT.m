//
//  LUTFormatterHaldCLUT.m
//  Pods
//
//  Created by Greg Cotten on 9/12/14.
//
//

#import "LUTFormatterHaldCLUT.h"
#import "CocoaLUT.h"
#if defined(COCOAPODS_POD_AVAILABLE_oiiococoa)
#import "NSImage+OIIO.h"
#endif

@implementation LUTFormatterHaldCLUT

+ (void)load{
    [super load];
}

+ (NSArray *)allOptions{
    NSMutableArray *sizeArray = [NSMutableArray array];

    for (int i = 3; i <= 8; i++) {
        [sizeArray addObject:@{[NSString stringWithFormat:@"%i", i*i] : @(i*i)}];
    }

    NSArray *superOptions = [super allOptions];
    NSMutableArray *newOptions = [NSMutableArray array];
    for (NSDictionary *option in superOptions) {
        NSDictionary *newOption = [option mutableCopy];
        [newOption setValue:M13OrderedDictionaryFromOrderedArrayWithDictionaries(sizeArray) forKey:@"lutSize"];
        [newOptions addObject:newOption];
    }
    
    return newOptions;
}

+ (NSDictionary *)defaultOptions{
    NSMutableDictionary *defaultsExposed = [[super defaultOptions][[self formatterID]] mutableCopy];
    defaultsExposed[@"lutSize"] = @(36);

    return @{[self formatterID] : defaultsExposed};
}

+ (NSString *)formatterName{
    return @"Hald CLUT";
}

+ (NSString *)formatterID{
    return @"haldCLUT";
}


@end
