.class public Lfgz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/CadastramentoTransOkActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/CadastramentoTransOkActivity;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lfgz;->a:Lcom/santander/app/CadastramentoTransOkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 92
    const-string v0, "Cartoes_CadastrarFaturaPorEmail_Comprovante_Acaos"

    const-string v1, "Fechar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lfgz;->a:Lcom/santander/app/CadastramentoTransOkActivity;

    invoke-static {v1}, Lcom/santander/app/CadastramentoTransOkActivity;->a(Lcom/santander/app/CadastramentoTransOkActivity;)Lcom/santander/app/CadastramentoTransOkActivity;

    move-result-object v1

    const-class v2, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    iget-object v1, p0, Lfgz;->a:Lcom/santander/app/CadastramentoTransOkActivity;

    invoke-virtual {v1, v0}, Lcom/santander/app/CadastramentoTransOkActivity;->startActivity(Landroid/content/Intent;)V

    .line 96
    return-void
.end method
