.class Lhdm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lhdl;


# direct methods
.method constructor <init>(Lhdl;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lhdm;->a:Lhdl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 129
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lhdm;->a:Lhdl;

    iget-object v1, v1, Lhdl;->b:Lhdk;

    iget-object v1, v1, Lhdk;->a:Lcom/santander/app/dpp/DPPListaProgramadaActivity;

    invoke-virtual {v1}, Lcom/santander/app/dpp/DPPListaProgramadaActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/santander/app/dpp/DPPConfirmacaoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 130
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 131
    const-string v2, "dpp"

    iget-object v3, p0, Lhdm;->a:Lhdl;

    iget-object v3, v3, Lhdl;->b:Lhdk;

    iget-object v3, v3, Lhdk;->a:Lcom/santander/app/dpp/DPPListaProgramadaActivity;

    invoke-static {v3}, Lcom/santander/app/dpp/DPPListaProgramadaActivity;->c(Lcom/santander/app/dpp/DPPListaProgramadaActivity;)Lheq;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 132
    const-string v2, "opcao"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 133
    const-string v2, "novaPoupanca"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 134
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 135
    iget-object v1, p0, Lhdm;->a:Lhdl;

    iget-object v1, v1, Lhdl;->b:Lhdk;

    iget-object v1, v1, Lhdk;->a:Lcom/santander/app/dpp/DPPListaProgramadaActivity;

    invoke-virtual {v1, v0}, Lcom/santander/app/dpp/DPPListaProgramadaActivity;->startActivity(Landroid/content/Intent;)V

    .line 136
    return-void
.end method
