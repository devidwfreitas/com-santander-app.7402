.class public Lmou;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/transferencia/presentation/TransferenciasActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/transferencia/presentation/TransferenciasActivity;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lmou;->a:Lcom/santander/app/transferencia/presentation/TransferenciasActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 143
    const-string v0, "Transferencia_Acao"

    const-string v1, "SelecionarFavorecido"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lmou;->a:Lcom/santander/app/transferencia/presentation/TransferenciasActivity;

    const-class v2, Lcom/santander/app/transferencia/presentation/ListagemFavorecidosActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 146
    const-string v1, "contaSelecionada"

    iget-object v2, p0, Lmou;->a:Lcom/santander/app/transferencia/presentation/TransferenciasActivity;

    invoke-static {v2}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->e(Lcom/santander/app/transferencia/presentation/TransferenciasActivity;)Lcom/santander/app/contacorrente/domain/Conta;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 147
    iget-object v1, p0, Lmou;->a:Lcom/santander/app/transferencia/presentation/TransferenciasActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 148
    return-void
.end method
