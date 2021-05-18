.class public Lmcu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/santander/app/seguros/ui/widgets/ValidityCharV2;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/widgets/ValidityCharV2;I)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lmcu;->b:Lcom/santander/app/seguros/ui/widgets/ValidityCharV2;

    iput p2, p0, Lmcu;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 125
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lmcu;->b:Lcom/santander/app/seguros/ui/widgets/ValidityCharV2;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/widgets/ValidityCharV2;->a(Lcom/santander/app/seguros/ui/widgets/ValidityCharV2;)Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Lmcu;->a:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 115
    return-void
.end method
