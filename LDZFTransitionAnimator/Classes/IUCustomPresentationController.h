//
//  IUCustomPresentationController.h
//  CRJIUBaseTransitionAnimator
//
//  Created by zhuyuhui on 2020/12/12.
//

#import <UIKit/UIKit.h>
#import "IUBaseTransitionAnimator.h"
NS_ASSUME_NONNULL_BEGIN

@interface IUCustomPresentationController : UIPresentationController<UIViewControllerTransitioningDelegate>
// 指定转场动画
@property(nonatomic, strong) IUBaseTransitionAnimator * animation;
@end

NS_ASSUME_NONNULL_END
