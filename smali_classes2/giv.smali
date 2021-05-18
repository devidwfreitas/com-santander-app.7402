.class public Lgiv;
.super Lgmz;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lgiv;->b:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;

    iput-object p2, p0, Lgiv;->a:Ljava/util/List;

    invoke-direct {p0}, Lgmz;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lamx;)V
    .locals 0

    .prologue
    .line 189
    check-cast p1, Lgmw;

    invoke-virtual {p0, p1}, Lgiv;->a(Lgmw;)V

    return-void
.end method

.method public a(Lgmw;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 192
    iget-object v0, p0, Lgiv;->b:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;

    invoke-static {v0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->e(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;)Lghu;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 194
    :goto_0
    iget-object v2, p0, Lgiv;->b:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;

    invoke-static {v2, v1}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->a(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;Z)Z

    .line 196
    iget-object v1, p0, Lgiv;->b:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;

    invoke-static {v1}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->j(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 197
    iget-object v1, p0, Lgiv;->b:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;

    new-instance v2, Lgjm;

    iget-object v3, p0, Lgiv;->b:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;

    invoke-direct {v2, v3}, Lgjm;-><init>(Lgji;)V

    invoke-static {v1, v2}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->a(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;Lgjl;)Lgjl;

    .line 202
    :goto_1
    iget-object v1, p0, Lgiv;->b:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;

    invoke-virtual {p1}, Lgmw;->e()Lghu;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->a(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;Lghu;)Lghu;

    .line 203
    iget-object v1, p0, Lgiv;->b:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;

    iget-object v2, p0, Lgiv;->a:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->a(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;I)I

    .line 205
    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lgiv;->b:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;

    invoke-static {v0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->f(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;)Lgjl;

    move-result-object v0

    iget-object v1, p0, Lgiv;->b:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;

    invoke-static {v1}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->e(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;)Lghu;

    move-result-object v1

    invoke-interface {v0, v1}, Lgjl;->a(Lghu;)V

    .line 207
    iget-object v0, p0, Lgiv;->b:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;

    invoke-static {v0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->k(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;)V

    .line 209
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 192
    goto :goto_0

    .line 199
    :cond_2
    const-string v1, "Cartoes_ParcelamentoDeFatura_Acao"

    const-string v2, "SelecionarCartoes"

    invoke-static {v1, v2}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
