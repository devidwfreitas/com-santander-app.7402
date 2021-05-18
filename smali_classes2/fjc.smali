.class public Lfjc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/PagamentoCartoesTransOkAction;


# direct methods
.method public constructor <init>(Lcom/santander/app/PagamentoCartoesTransOkAction;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lfjc;->a:Lcom/santander/app/PagamentoCartoesTransOkAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 88
    const-string v0, "Cartoes_PagamentoDaFatura_Comprovante_Acao"

    const-string v1, "Fechar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lfjc;->a:Lcom/santander/app/PagamentoCartoesTransOkAction;

    iget-object v0, v0, Lcom/santander/app/PagamentoCartoesTransOkAction;->v:Lmip;

    invoke-interface {v0}, Lmip;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lfjc;->a:Lcom/santander/app/PagamentoCartoesTransOkAction;

    iget-object v0, v0, Lcom/santander/app/PagamentoCartoesTransOkAction;->v:Lmip;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lmip;->c(Z)V

    .line 92
    iget-object v0, p0, Lfjc;->a:Lcom/santander/app/PagamentoCartoesTransOkAction;

    invoke-virtual {v0}, Lcom/santander/app/PagamentoCartoesTransOkAction;->finishAffinity()V

    .line 93
    iget-object v0, p0, Lfjc;->a:Lcom/santander/app/PagamentoCartoesTransOkAction;

    iget-object v1, p0, Lfjc;->a:Lcom/santander/app/PagamentoCartoesTransOkAction;

    invoke-virtual {v0, v1}, Lcom/santander/app/PagamentoCartoesTransOkAction;->a(Landroid/content/Context;)Z

    .line 98
    :goto_0
    return-void

    .line 95
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lfjc;->a:Lcom/santander/app/PagamentoCartoesTransOkAction;

    const-class v2, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    iget-object v1, p0, Lfjc;->a:Lcom/santander/app/PagamentoCartoesTransOkAction;

    invoke-virtual {v1, v0}, Lcom/santander/app/PagamentoCartoesTransOkAction;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
