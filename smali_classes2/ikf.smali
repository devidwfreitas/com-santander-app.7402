.class Likf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Likd;


# direct methods
.method constructor <init>(Likd;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Likf;->a:Likd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Likf;->a:Likd;

    invoke-static {v0}, Likd;->a(Likd;)Lmip;

    move-result-object v0

    invoke-interface {v0}, Lmip;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Likf;->a:Likd;

    invoke-static {v0}, Likd;->a(Likd;)Lmip;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lmip;->c(Z)V

    .line 79
    iget-object v0, p0, Likf;->a:Likd;

    invoke-virtual {v0}, Likd;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finishAffinity()V

    .line 80
    iget-object v0, p0, Likf;->a:Likd;

    invoke-virtual {v0}, Likd;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 85
    :goto_0
    return-void

    .line 82
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Likf;->a:Likd;

    invoke-virtual {v1}, Likd;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    iget-object v1, p0, Likf;->a:Likd;

    invoke-virtual {v1, v0}, Likd;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
