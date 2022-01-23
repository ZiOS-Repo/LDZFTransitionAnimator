//
//  LdzfCustomPresentationController.h
//  CRJLdzfBaseTransitionAnimator
//
//  Created by zhuyuhui on 2020/12/12.
//

#import <UIKit/UIKit.h>
#import "LdzfBaseTransitionAnimator.h"
NS_ASSUME_NONNULL_BEGIN

@interface LdzfCustomPresentationController : UIPresentationController<UIViewControllerTransitioningDelegate>
// 指定转场动画
@property(nonatomic, strong) LdzfBaseTransitionAnimator * animation;
@end

NS_ASSUME_NONNULL_END
