.class Landroid/support/transition/TransitionIcs$TransitionWrapper;
.super Landroid/support/transition/TransitionPort;
.source "SourceFile"


# instance fields
.field private mTransition:Landroid/support/transition/TransitionInterface;


# direct methods
.method public constructor <init>(Landroid/support/transition/TransitionInterface;)V
    .locals 0

    .prologue
    .line 215
    invoke-direct {p0}, Landroid/support/transition/TransitionPort;-><init>()V

    .line 216
    iput-object p1, p0, Landroid/support/transition/TransitionIcs$TransitionWrapper;->mTransition:Landroid/support/transition/TransitionInterface;

    .line 217
    return-void
.end method


# virtual methods
.method public captureEndValues(Landroid/support/transition/TransitionValues;)V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Landroid/support/transition/TransitionIcs$TransitionWrapper;->mTransition:Landroid/support/transition/TransitionInterface;

    invoke-interface {v0, p1}, Landroid/support/transition/TransitionInterface;->captureEndValues(Landroid/support/transition/TransitionValues;)V

    .line 227
    return-void
.end method

.method public captureStartValues(Landroid/support/transition/TransitionValues;)V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Landroid/support/transition/TransitionIcs$TransitionWrapper;->mTransition:Landroid/support/transition/TransitionInterface;

    invoke-interface {v0, p1}, Landroid/support/transition/TransitionInterface;->captureStartValues(Landroid/support/transition/TransitionValues;)V

    .line 222
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Landroid/support/transition/TransitionIcs$TransitionWrapper;->mTransition:Landroid/support/transition/TransitionInterface;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/transition/TransitionInterface;->createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method
