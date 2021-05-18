.class public Lfjb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/LinearLayout;

.field final synthetic b:Landroid/widget/LinearLayout;

.field final synthetic c:Lcom/santander/app/PagamentoCartoesTransOkAction;


# direct methods
.method public constructor <init>(Lcom/santander/app/PagamentoCartoesTransOkAction;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lfjb;->c:Lcom/santander/app/PagamentoCartoesTransOkAction;

    iput-object p2, p0, Lfjb;->a:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lfjb;->b:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/16 v2, 0x8

    const/4 v4, 0x0

    .line 69
    const-string v0, "Cartoes_PagamentoDaFatura_Comprovante_Acao"

    const-string v1, "Compartilhar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lfjb;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lfjb;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Lfjb;->c:Lcom/santander/app/PagamentoCartoesTransOkAction;

    invoke-static {v0}, Lcom/santander/app/PagamentoCartoesTransOkAction;->a(Lcom/santander/app/PagamentoCartoesTransOkAction;)Lcom/santander/app/PagamentoCartoesTransOkAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/PagamentoCartoesTransOkAction;->a()Ljava/lang/String;

    move-result-object v0

    .line 75
    const-string v1, ""

    .line 76
    const-string v2, ""

    .line 77
    iget-object v3, p0, Lfjb;->c:Lcom/santander/app/PagamentoCartoesTransOkAction;

    invoke-static {v3}, Lcom/santander/app/PagamentoCartoesTransOkAction;->a(Lcom/santander/app/PagamentoCartoesTransOkAction;)Lcom/santander/app/PagamentoCartoesTransOkAction;

    move-result-object v3

    invoke-static {v3, v1, v2, v0}, Lmyj;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lfjb;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lfjb;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 81
    return-void
.end method
