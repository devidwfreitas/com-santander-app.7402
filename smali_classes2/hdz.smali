.class public Lhdz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lhdz;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lhdz;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-static {v0}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->a(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Investimentos_Poupanca_DepositoProgramado_ProprioCliente_Valor_Acao"

    :goto_0
    iget-object v1, p0, Lhdz;->a:Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    .line 300
    invoke-static {v1}, Lcom/santander/app/dpp/DPPPreenchimentoActivity;->g(Lcom/santander/app/dpp/DPPPreenchimentoActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 298
    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    return-void

    .line 298
    :cond_0
    const-string v0, "Investimentos_Poupanca_DepositoProgramado_Terceiros_Valor_Acao"

    goto :goto_0
.end method
