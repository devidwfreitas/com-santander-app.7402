.class Lljt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lljs;


# direct methods
.method constructor <init>(Lljs;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lljt;->a:Lljs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lljt;->a:Lljs;

    iget-object v0, v0, Lljs;->a:Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->e(Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 202
    iget-object v0, p0, Lljt;->a:Lljs;

    iget-object v0, v0, Lljs;->a:Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->e(Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 203
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 208
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lljt;->a:Lljs;

    iget-object v0, v0, Lljs;->a:Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->f(Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 197
    return-void
.end method
