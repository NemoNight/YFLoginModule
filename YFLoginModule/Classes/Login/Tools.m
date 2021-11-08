//
//  Tools.m
//  MakeProject
//
//  Created by Nemo on 2021/11/4.
//

#import "Tools.h"

@implementation Tools

+ (NSBundle *)bundlePathWithBundleName:(NSString *)bundleName targetClass:(Class)targetClass {
    
    //并没有拿到子bundle
    NSBundle *bundle = [NSBundle bundleForClass:targetClass];
    //在这个路径下找到子bundle的路径
    NSString *path = [bundle pathForResource:bundleName ofType:@"bundle"];
    //根据路径拿到子bundle
    return path?[NSBundle bundleWithPath:path]:[NSBundle mainBundle];
}

@end
