.class public Lljy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lljy;->a:Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lljy;->a:Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->e(Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 288
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 293
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lljy;->a:Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->e(Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 283
    return-void
.end method
