.class Landroid/support/design/widget/ValueAnimatorCompatImplHoneycombMr1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/ValueAnimatorCompatImplHoneycombMr1;

.field final synthetic val$updateListener:Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorUpdateListenerProxy;


# direct methods
.method constructor <init>(Landroid/support/design/widget/ValueAnimatorCompatImplHoneycombMr1;Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorUpdateListenerProxy;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Landroid/support/design/widget/ValueAnimatorCompatImplHoneycombMr1$1;->this$0:Landroid/support/design/widget/ValueAnimatorCompatImplHoneycombMr1;

    iput-object p2, p0, Landroid/support/design/widget/ValueAnimatorCompatImplHoneycombMr1$1;->val$updateListener:Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorUpdateListenerProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Landroid/support/design/widget/ValueAnimatorCompatImplHoneycombMr1$1;->val$updateListener:Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorUpdateListenerProxy;

    invoke-interface {v0}, Landroid/support/design/widget/ValueAnimatorCompat$Impl$AnimatorUpdateListenerProxy;->onAnimationUpdate()V

    .line 57
    return-void
.end method
