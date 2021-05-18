.class public Lljo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lljo;->a:Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .prologue
    .line 139
    iget-object v0, p0, Lljo;->a:Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->a(Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;)I

    move-result v0

    .line 141
    iget-object v1, p0, Lljo;->a:Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;

    invoke-static {v1}, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->b(Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;)Landroid/support/v4/widget/NestedScrollView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 144
    iget-object v2, p0, Lljo;->a:Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;

    invoke-static {v2}, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->c(Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;)V

    .line 145
    if-le v1, v0, :cond_0

    .line 147
    iget-object v0, p0, Lljo;->a:Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->d(Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;)V

    .line 148
    iget-object v0, p0, Lljo;->a:Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;->b(Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;)Landroid/support/v4/widget/NestedScrollView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 152
    :cond_0
    return-void
.end method
