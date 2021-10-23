
#import "IUAnimationFade.h"

@implementation IUAnimationFade

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.contentWidthRatio = 0.8;
        self.contentHeightRatio = 0.6;
    }
    return self;
}

- (void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext {
    
    // 1.获取源控制器、目标控制器、动画容器View
    UIViewController *fromViewController = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    
    UIView *containerView = transitionContext.containerView;
    
    // 2. 获取源控制器、目标控制器 的View，但是注意二者在开始动画，消失动画，身份是不一样的：
    // 也可以直接通过上面获取控制器获取，比如：toViewController.view
    UIView *toView = [transitionContext viewForKey:UITransitionContextToViewKey];
    UIView *fromView = [transitionContext viewForKey:UITransitionContextFromViewKey];
    [containerView addSubview:toView];  //必须添加到动画容器View上。
    // 判断是present 还是 dismiss
    BOOL isPresenting = (fromViewController == self.presentingViewController);
    
    CGFloat screenW = CGRectGetWidth(containerView.bounds);
    CGFloat screenH = CGRectGetHeight(containerView.bounds);
    
    // 如果是淡入淡出的效果则单独设置,并不执行下面的语句
    CGFloat width = screenW * self.contentWidthRatio;
    CGFloat height = screenH * self.contentHeightRatio;
    CGFloat x = (screenW - width) / 2;
    CGFloat y = (screenH - height) / 2;
    CGRect frame = CGRectMake(x, y, width, height);
    if (isPresenting) toView.frame = frame;
    [UIView animateWithDuration:self.transitionDuration delay:self.delay usingSpringWithDamping:self.dampingRatio initialSpringVelocity:self.velocity options:self.options animations:^{
        if (isPresenting) {
            toView.alpha = 1.0f;
        } else {
            fromView.alpha = 0.0f;
        }
    } completion:^(BOOL finished) {
        BOOL wasCancelled = [transitionContext transitionWasCancelled];
        [transitionContext completeTransition:!wasCancelled];
    }];
}
@end
