.class public Lmct;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/widgets/ValidityCharV2;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/widgets/ValidityCharV2;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lmct;->a:Lcom/santander/app/seguros/ui/widgets/ValidityCharV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lmct;->a:Lcom/santander/app/seguros/ui/widgets/ValidityCharV2;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/widgets/ValidityCharV2;->a(Lcom/santander/app/seguros/ui/widgets/ValidityCharV2;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    return-void
.end method
