//
//  RNSizeClasses.m
//  RNSizeClasses
//
//  Created by George White on 2/16/18.
//  Copyright © 2018 George White. All rights reserved.
//

#import "RNSizeClasses.h"


@implementation RNSizeClasses

RCT_EXPORT_MODULE();

- (NSString*) verticalSizeClass
{
    NSString* sizeClass;
    
    switch ([[[[UIApplication sharedApplication] keyWindow] traitCollection] verticalSizeClass]) {
        case UIUserInterfaceSizeClassCompact:
            sizeClass = @"compact";
            break;
            
        case UIUserInterfaceSizeClassRegular:
            sizeClass = @"regular";
            break;

        default:
            sizeClass = @"compact";
            break;
    }
    return sizeClass;
}

- (NSString*) horizontalSizeClass
{
    NSString* sizeClass;
    
    switch ([[[[UIApplication sharedApplication] keyWindow] traitCollection] horizontalSizeClass]) {
        case UIUserInterfaceSizeClassCompact:
            sizeClass = @"compact";
            break;
            
        case UIUserInterfaceSizeClassRegular:
            sizeClass = @"regular";
            break;
            
        default:
            sizeClass = @"compact";
            break;
    }
    return sizeClass;}

- (bool) isIpad
{
    return [[[[UIApplication sharedApplication] keyWindow] traitCollection] userInterfaceIdiom] == UIUserInterfaceIdiomPad;
}

RCT_REMAP_METHOD(getSizeClasses,
                 getSizeClassesWithResolver:(RCTPromiseResolveBlock)resolve
                 rejecter: (RCTPromiseRejectBlock)reject)
{
    NSDictionary *sizeClasses = @{
                                  @"vertical": self.verticalSizeClass,
                                  @"horizontal": self.horizontalSizeClass
                                  };
    if(sizeClasses) {
        resolve(sizeClasses);
    } else {
        NSError *error = nil;
        reject(@"no_size_classes",@"Size Classes not available", error);
    }
}

- (NSDictionary *)constantsToExport
{
    return @{
             @"isIpad": @(self.isIpad)
             };
}

@end
