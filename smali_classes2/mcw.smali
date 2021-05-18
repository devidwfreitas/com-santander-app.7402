.class public Lmcw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/santander/app/seguros/ui/widgets/ValidityChart;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/widgets/ValidityChart;I)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lmcw;->b:Lcom/santander/app/seguros/ui/widgets/ValidityChart;

    iput p2, p0, Lmcw;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lmcw;->b:Lcom/santander/app/seguros/ui/widgets/ValidityChart;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/widgets/ValidityChart;->a(Lcom/santander/app/seguros/ui/widgets/ValidityChart;)Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Lmcw;->a:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 102
    return-void
.end method
