//
//  UIColor+Hopscotch.m
//  Hopscotch-iOS-Test
//
//  Created by Samantha John on 1/6/15.
//  Copyright (c) 2015 Samantha John. All rights reserved.
//

#import "UIColor+Hopscotch.h"

@implementation UIColor (Hopscotch)

+ (UIColor *)titleColor
{
    return [self colorWithGrayScale:77];
}

+ (UIColor *)authorColor
{
     return [self colorWithGrayScale:155];
}

+ (UIColor *)imageBorderColor
{
    return [self colorWithGrayScale:228];
}

+ (UIColor *)colorWithGrayScale:(CGFloat)grayScale
{
    grayScale = grayScale/255.f;
    return [UIColor colorWithRed:grayScale green:grayScale blue:grayScale alpha:1];
}
@end


