.class public Lhdd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/dpp/DPPCondicoesContratoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/dpp/DPPCondicoesContratoActivity;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lhdd;->a:Lcom/santander/app/dpp/DPPCondicoesContratoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 57
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lhdd;->a:Lcom/santander/app/dpp/DPPCondicoesContratoActivity;

    invoke-virtual {v1}, Lcom/santander/app/dpp/DPPCondicoesContratoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/santander/app/dpp/DPPConfirmacaoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 59
    const-string v2, "dpp"

    iget-object v3, p0, Lhdd;->a:Lcom/santander/app/dpp/DPPCondicoesContratoActivity;

    invoke-static {v3}, Lcom/santander/app/dpp/DPPCondicoesContratoActivity;->a(Lcom/santander/app/dpp/DPPCondicoesContratoActivity;)Lheq;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 60
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 62
    iget-object v1, p0, Lhdd;->a:Lcom/santander/app/dpp/DPPCondicoesContratoActivity;

    invoke-virtual {v1, v0}, Lcom/santander/app/dpp/DPPCondicoesContratoActivity;->startActivity(Landroid/content/Intent;)V

    .line 63
    return-void
.end method
