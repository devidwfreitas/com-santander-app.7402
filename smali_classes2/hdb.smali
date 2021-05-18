.class public Lhdb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/dpp/DPPComprovanteActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/dpp/DPPComprovanteActivity;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lhdb;->a:Lcom/santander/app/dpp/DPPComprovanteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 83
    const-string v0, "Investimentos_Poupanca_DepositoProgramado_ProprioCliente_Comprovante_Acao"

    const-string v1, "Fechar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lhdb;->a:Lcom/santander/app/dpp/DPPComprovanteActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lhdb;->a:Lcom/santander/app/dpp/DPPComprovanteActivity;

    invoke-virtual {v2}, Lcom/santander/app/dpp/DPPComprovanteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/dpp/DPPComprovanteActivity;->startActivity(Landroid/content/Intent;)V

    .line 85
    return-void
.end method
