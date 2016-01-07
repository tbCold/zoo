//
//  TBNewFeatureControllerCollectionViewController.m
//  zoo
//
//  Created by NiuJie on 16/1/7.
//  Copyright © 2016年 tbcold. All rights reserved.
//

#import "TBNewFeatureController.h"
#import "TBNewFeatureCell.h"

@interface TBNewFeatureController ()

@end

@implementation TBNewFeatureController

static NSString * const reuseIdentifier = @"Cell";

-(instancetype)init{
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    layout.minimumLineSpacing = 0;
    layout.itemSize = [UIScreen mainScreen].bounds.size;
    layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    return [self initWithCollectionViewLayout:layout];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.collectionView.pagingEnabled = YES;//设置分页
    self.collectionView.bounces = NO;//滑倒边界不反弹
    self.collectionView.showsHorizontalScrollIndicator = NO;//不显示横向滚动条
    [self.collectionView registerClass:[TBNewFeatureCell class] forCellWithReuseIdentifier:reuseIdentifier];//注册cell
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 3;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    TBNewFeatureCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    NSString *imageName = [NSString stringWithFormat:@"new_feature_%ld",indexPath.row + 1];
    cell.image = [UIImage imageNamed:imageName];
    return cell;
}

@end
