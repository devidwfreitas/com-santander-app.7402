.class public Lfgs;
.super Lgmz;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/santander/app/CadastramentoFacturaActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/CadastramentoFacturaActivity;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lfgs;->a:Lcom/santander/app/CadastramentoFacturaActivity;

    invoke-direct {p0}, Lgmz;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lamx;)V
    .locals 0

    .prologue
    .line 152
    check-cast p1, Lgmw;

    invoke-virtual {p0, p1}, Lfgs;->a(Lgmw;)V

    return-void
.end method

.method public a(Lgmw;)V
    .locals 2

    .prologue
    .line 155
    const-string v0, "Cartoes_CadastrarFaturaPorEmail_Acao"

    const-string v1, "SelecionarCartoes"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lfgs;->a:Lcom/santander/app/CadastramentoFacturaActivity;

    invoke-static {v0}, Lcom/santander/app/CadastramentoFacturaActivity;->b(Lcom/santander/app/CadastramentoFacturaActivity;)Lghu;

    move-result-object v0

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lfgs;->a:Lcom/santander/app/CadastramentoFacturaActivity;

    invoke-virtual {p1}, Lgmw;->e()Lghu;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/CadastramentoFacturaActivity;->a(Lcom/santander/app/CadastramentoFacturaActivity;Lghu;)Lghu;

    .line 158
    iget-object v0, p0, Lfgs;->a:Lcom/santander/app/CadastramentoFacturaActivity;

    invoke-static {v0}, Lcom/santander/app/CadastramentoFacturaActivity;->e(Lcom/santander/app/CadastramentoFacturaActivity;)V

    .line 163
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lfgs;->a:Lcom/santander/app/CadastramentoFacturaActivity;

    invoke-virtual {p1}, Lgmw;->e()Lghu;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/CadastramentoFacturaActivity;->a(Lcom/santander/app/CadastramentoFacturaActivity;Lghu;)Lghu;

    .line 161
    iget-object v0, p0, Lfgs;->a:Lcom/santander/app/CadastramentoFacturaActivity;

    iget-object v1, p0, Lfgs;->a:Lcom/santander/app/CadastramentoFacturaActivity;

    invoke-static {v1}, Lcom/santander/app/CadastramentoFacturaActivity;->b(Lcom/santander/app/CadastramentoFacturaActivity;)Lghu;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/CadastramentoFacturaActivity;->b(Lcom/santander/app/CadastramentoFacturaActivity;Lghu;)V

    goto :goto_0
.end method
