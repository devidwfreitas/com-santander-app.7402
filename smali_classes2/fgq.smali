.class public Lfgq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/CadastramentoFacturaActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/CadastramentoFacturaActivity;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lfgq;->a:Lcom/santander/app/CadastramentoFacturaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 100
    const-string v0, "Cartoes_CadastrarFaturaPorEmail_Acao"

    const-string v1, "Confirmar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lfgq;->a:Lcom/santander/app/CadastramentoFacturaActivity;

    invoke-virtual {v1}, Lcom/santander/app/CadastramentoFacturaActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/santander/app/CadastramentoValidacionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 104
    const-string v1, "strSeqEnd"

    iget-object v2, p0, Lfgq;->a:Lcom/santander/app/CadastramentoFacturaActivity;

    invoke-static {v2}, Lcom/santander/app/CadastramentoFacturaActivity;->a(Lcom/santander/app/CadastramentoFacturaActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 105
    const-string v1, "numCartao"

    iget-object v2, p0, Lfgq;->a:Lcom/santander/app/CadastramentoFacturaActivity;

    invoke-static {v2}, Lcom/santander/app/CadastramentoFacturaActivity;->c(Lcom/santander/app/CadastramentoFacturaActivity;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lfgq;->a:Lcom/santander/app/CadastramentoFacturaActivity;

    invoke-static {v3}, Lcom/santander/app/CadastramentoFacturaActivity;->b(Lcom/santander/app/CadastramentoFacturaActivity;)Lghu;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 106
    const-string v1, "cartao"

    iget-object v2, p0, Lfgq;->a:Lcom/santander/app/CadastramentoFacturaActivity;

    invoke-static {v2}, Lcom/santander/app/CadastramentoFacturaActivity;->b(Lcom/santander/app/CadastramentoFacturaActivity;)Lghu;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 107
    iget-object v1, p0, Lfgq;->a:Lcom/santander/app/CadastramentoFacturaActivity;

    invoke-virtual {v1, v0}, Lcom/santander/app/CadastramentoFacturaActivity;->startActivity(Landroid/content/Intent;)V

    .line 109
    return-void
.end method
