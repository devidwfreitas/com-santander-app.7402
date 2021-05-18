.class public Lmpa;
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
    .line 263
    iput-object p1, p0, Lmpa;->a:Lcom/santander/app/transferencia/presentation/TransferenciasActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 266
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmlr;

    .line 268
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lmpa;->a:Lcom/santander/app/transferencia/presentation/TransferenciasActivity;

    const-class v3, Lcom/santander/app/transferencia/presentation/DetalheTransferenciaProgramadaActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 269
    const-string v2, "transferenciaProgramada"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 270
    const-string v0, "contaSelecionada"

    iget-object v2, p0, Lmpa;->a:Lcom/santander/app/transferencia/presentation/TransferenciasActivity;

    invoke-static {v2}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->e(Lcom/santander/app/transferencia/presentation/TransferenciasActivity;)Lcom/santander/app/contacorrente/domain/Conta;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 271
    iget-object v0, p0, Lmpa;->a:Lcom/santander/app/transferencia/presentation/TransferenciasActivity;

    invoke-virtual {v0, v1}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->startActivity(Landroid/content/Intent;)V

    .line 272
    return-void
.end method
