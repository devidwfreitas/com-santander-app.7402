.class public Lhdo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/dpp/DPPListaProgramadaActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/dpp/DPPListaProgramadaActivity;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lhdo;->a:Lcom/santander/app/dpp/DPPListaProgramadaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 169
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lhdo;->a:Lcom/santander/app/dpp/DPPListaProgramadaActivity;

    invoke-virtual {v1}, Lcom/santander/app/dpp/DPPListaProgramadaActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/santander/app/dpp/DPPPreenchimentoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 170
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 171
    const-string v2, "dpp"

    iget-object v3, p0, Lhdo;->a:Lcom/santander/app/dpp/DPPListaProgramadaActivity;

    invoke-static {v3}, Lcom/santander/app/dpp/DPPListaProgramadaActivity;->c(Lcom/santander/app/dpp/DPPListaProgramadaActivity;)Lheq;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 172
    const-string v2, "opcao"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 173
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 174
    iget-object v1, p0, Lhdo;->a:Lcom/santander/app/dpp/DPPListaProgramadaActivity;

    invoke-virtual {v1, v0}, Lcom/santander/app/dpp/DPPListaProgramadaActivity;->startActivity(Landroid/content/Intent;)V

    .line 175
    return-void
.end method
