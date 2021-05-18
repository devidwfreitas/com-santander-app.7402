.class public Lgjd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaComprovanteActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaComprovanteActivity;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lgjd;->a:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaComprovanteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 99
    .line 100
    iget-object v0, p0, Lgjd;->a:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaComprovanteActivity;

    iget-object v0, v0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaComprovanteActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->e()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lgjd;->a:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaComprovanteActivity;

    const-class v2, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 105
    :goto_0
    iget-object v1, p0, Lgjd;->a:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaComprovanteActivity;

    invoke-virtual {v1, v0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaComprovanteActivity;->startActivity(Landroid/content/Intent;)V

    .line 106
    return-void

    .line 103
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lgjd;->a:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaComprovanteActivity;

    const-class v2, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0
.end method
