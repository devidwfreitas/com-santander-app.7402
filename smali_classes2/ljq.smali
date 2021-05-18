.class public Lljq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/widget/NestedScrollView$OnScrollChangeListener;


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lljq;->a:Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChange(Landroid/support/v4/widget/NestedScrollView;IIII)V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 163
    iget-object v0, p0, Lljq;->a:Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->e(Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 164
    if-lez p3, :cond_1

    .line 166
    iget-object v0, p0, Lljq;->a:Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->b(Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;)Landroid/support/v4/widget/NestedScrollView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v0

    .line 167
    iget-object v1, p0, Lljq;->a:Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;

    invoke-static {v1}, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->b(Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;)Landroid/support/v4/widget/NestedScrollView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 168
    sub-int v0, v1, v0

    .line 170
    int-to-float v1, p3

    mul-float/2addr v1, v3

    int-to-float v0, v0

    div-float v0, v1, v0

    .line 172
    iget-object v1, p0, Lljq;->a:Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;

    invoke-static {v1}, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->e(Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    sub-float v0, v3, v0

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iget-object v0, p0, Lljq;->a:Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->e(Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    goto :goto_0
.end method
