.class public Lmcv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/santander/app/seguros/ui/widgets/ValidityChart;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/widgets/ValidityChart;I)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lmcv;->b:Lcom/santander/app/seguros/ui/widgets/ValidityChart;

    iput p2, p0, Lmcv;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .prologue
    .line 95
    iget-object v0, p0, Lmcv;->b:Lcom/santander/app/seguros/ui/widgets/ValidityChart;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/widgets/ValidityChart;->a(Lcom/santander/app/seguros/ui/widgets/ValidityChart;)Landroid/widget/TextView;

    move-result-object v1

    iget v0, p0, Lmcv;->a:I

    div-int/lit8 v2, v0, 0x14

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    return-void
.end method
