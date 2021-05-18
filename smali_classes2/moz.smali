.class public Lmoz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# instance fields
.field final synthetic a:Lcom/santander/app/transferencia/presentation/TransferenciasActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/transferencia/presentation/TransferenciasActivity;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lmoz;->a:Lcom/santander/app/transferencia/presentation/TransferenciasActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lmoz;->a:Lcom/santander/app/transferencia/presentation/TransferenciasActivity;

    invoke-static {v0}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->j(Lcom/santander/app/transferencia/presentation/TransferenciasActivity;)Landroid/widget/TabHost;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 238
    const-string v0, "Transferencia_Acao"

    const-string v1, "SelecionarProgramada"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lmoz;->a:Lcom/santander/app/transferencia/presentation/TransferenciasActivity;

    invoke-static {v0}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->i(Lcom/santander/app/transferencia/presentation/TransferenciasActivity;)Lmqa;

    move-result-object v0

    iget-object v1, p0, Lmoz;->a:Lcom/santander/app/transferencia/presentation/TransferenciasActivity;

    invoke-static {v1}, Lcom/santander/app/transferencia/presentation/TransferenciasActivity;->e(Lcom/santander/app/transferencia/presentation/TransferenciasActivity;)Lcom/santander/app/contacorrente/domain/Conta;

    move-result-object v1

    invoke-interface {v0, v1}, Lmqa;->a(Lcom/santander/app/contacorrente/domain/Conta;)V

    .line 243
    :goto_0
    return-void

    .line 241
    :cond_0
    const-string v0, "Transferencia_Acao"

    const-string v1, "SelecionarTransferencia"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
