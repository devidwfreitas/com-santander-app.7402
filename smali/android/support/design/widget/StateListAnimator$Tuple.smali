.class Landroid/support/design/widget/StateListAnimator$Tuple;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final mAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

.field final mSpecs:[I


# direct methods
.method constructor <init>([ILandroid/support/design/widget/ValueAnimatorCompat;)V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Landroid/support/design/widget/StateListAnimator$Tuple;->mSpecs:[I

    .line 110
    iput-object p2, p0, Landroid/support/design/widget/StateListAnimator$Tuple;->mAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    .line 111
    return-void
.end method
