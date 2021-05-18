.class public Lfiy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/PagamentoCartoesConfirmacaoAction;


# direct methods
.method public constructor <init>(Lcom/santander/app/PagamentoCartoesConfirmacaoAction;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lfiy;->a:Lcom/santander/app/PagamentoCartoesConfirmacaoAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 74
    const-string v0, "Cartoes_PagamentoDaFatura_Acao"

    const-string v1, "Confirmar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lfiy;->a:Lcom/santander/app/PagamentoCartoesConfirmacaoAction;

    new-instance v1, Lfiz;

    iget-object v2, p0, Lfiy;->a:Lcom/santander/app/PagamentoCartoesConfirmacaoAction;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lfiz;-><init>(Lcom/santander/app/PagamentoCartoesConfirmacaoAction;Lfiy;)V

    invoke-static {v0, v1}, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->a(Lcom/santander/app/PagamentoCartoesConfirmacaoAction;Lfiz;)Lfiz;

    .line 77
    iget-object v0, p0, Lfiy;->a:Lcom/santander/app/PagamentoCartoesConfirmacaoAction;

    invoke-static {v0}, Lcom/santander/app/PagamentoCartoesConfirmacaoAction;->a(Lcom/santander/app/PagamentoCartoesConfirmacaoAction;)Lfiz;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lfiz;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 79
    return-void
.end method
