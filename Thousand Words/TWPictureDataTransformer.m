//
//  TWPictureDataTransformer.m
//  Thousand Words
//
//  Created by Fernand LIME on 18/07/14.
//  Copyright (c) 2014 Code Coalition. All rights reserved.
//

#import "TWPictureDataTransformer.h"

@implementation TWPictureDataTransformer

+(Class)transformedValueClass
{
    return [NSData class];
}

+(BOOL)allowsReverseTransformation
{
    return YES;
}

-(id)transformedValue:(id)value
{
    return UIImagePNGRepresentation(value);
}

-(id)reverseTransformedValue:(id)value
{
    UIImage *image = [UIImage imageWithData:value];
    return image; 
}

@end
