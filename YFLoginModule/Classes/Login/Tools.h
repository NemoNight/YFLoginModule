//
//  Tools.h
//  MakeProject
//
//  Created by Nemo on 2021/11/4.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Tools : NSObject

+ (NSBundle *)bundlePathWithBundleName:(NSString *)bundleName targetClass:(Class)targetClass;

@end

NS_ASSUME_NONNULL_END
