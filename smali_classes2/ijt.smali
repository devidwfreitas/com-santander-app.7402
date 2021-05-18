.class Lijt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lijr;


# direct methods
.method constructor <init>(Lijr;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lijt;->a:Lijr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 62
    iget-object v0, p0, Lijt;->a:Lijr;

    invoke-static {v0}, Lijr;->a(Lijr;)Lmip;

    move-result-object v0

    invoke-interface {v0}, Lmip;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lijt;->a:Lijr;

    invoke-virtual {v0}, Lijr;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 68
    :goto_0
    return-void

    .line 65
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lijt;->a:Lijr;

    invoke-virtual {v1}, Lijr;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    iget-object v1, p0, Lijt;->a:Lijr;

    invoke-virtual {v1, v0}, Lijr;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
