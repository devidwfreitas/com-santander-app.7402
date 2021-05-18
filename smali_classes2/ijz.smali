.class Lijz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lijx;


# direct methods
.method constructor <init>(Lijx;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lijz;->a:Lijx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Lijz;->a:Lijx;

    invoke-static {v0}, Lijx;->a(Lijx;)Lmip;

    move-result-object v0

    invoke-interface {v0}, Lmip;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lijz;->a:Lijx;

    invoke-static {v0}, Lijx;->a(Lijx;)Lmip;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lmip;->c(Z)V

    .line 74
    iget-object v0, p0, Lijz;->a:Lijx;

    invoke-virtual {v0}, Lijx;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finishAffinity()V

    .line 75
    iget-object v0, p0, Lijz;->a:Lijx;

    invoke-virtual {v0}, Lijx;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 80
    :goto_0
    return-void

    .line 77
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lijz;->a:Lijx;

    invoke-virtual {v1}, Lijx;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 78
    iget-object v1, p0, Lijz;->a:Lijx;

    invoke-virtual {v1, v0}, Lijx;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
