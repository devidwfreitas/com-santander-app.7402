.class public Lgiz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaConfirmacaoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaConfirmacaoActivity;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lgiz;->a:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaConfirmacaoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 55
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lgiz;->a:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaConfirmacaoActivity;

    invoke-virtual {v1}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaConfirmacaoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 56
    const-string v1, "parcelarFatura"

    iget-object v2, p0, Lgiz;->a:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaConfirmacaoActivity;

    invoke-static {v2}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaConfirmacaoActivity;->a(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaConfirmacaoActivity;)Lgig;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 57
    iget-object v1, p0, Lgiz;->a:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaConfirmacaoActivity;

    invoke-virtual {v1, v0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaConfirmacaoActivity;->startActivity(Landroid/content/Intent;)V

    .line 58
    return-void
.end method
