.class public Lmbs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lmbs;->a:Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 265
    iget-object v1, p0, Lmbs;->a:Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->setExpansion(F)V

    .line 266
    return-void
.end method
