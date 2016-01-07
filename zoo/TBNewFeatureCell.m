//
//  TBNewFeatureCell.m
//  zoo
//
//  Created by NiuJie on 16/1/7.
//  Copyright © 2016年 tbcold. All rights reserved.
//

#import "TBNewFeatureCell.h"
@interface TBNewFeatureCell ()
@property (nonatomic, weak) UIImageView *imageView;
@end

@implementation TBNewFeatureCell

-(UIImageView *)imageView{
    if (_imageView == nil) {
        UIImageView *imageV = [[UIImageView alloc] initWithFrame:self.bounds];
        imageV.image = _image;
        _imageView = imageV;
        [self.contentView addSubview:imageV];
    }
    return _imageView;
}

-(void)setImage:(UIImage *)image{
    _image = image;
    self.imageView.image = image;
}
@end
