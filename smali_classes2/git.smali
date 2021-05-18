.class public Lgit;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lgit;->a:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 124
    iget-object v0, p0, Lgit;->a:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;

    invoke-static {v0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->g(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lgit;->a:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;

    iget-object v0, v0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->v:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->e()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 129
    iget-object v0, p0, Lgit;->a:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;

    invoke-static {v0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->h(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgif;

    .line 131
    const-string v1, "Cartoes_ParcelamentoDeFatura_OpcoesDeParcelamento_Acao"

    const-string v2, "ParcelasFixas"

    invoke-static {v1, v2}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v1, "Cartoes_ParcelamentoDeFatura_ParcelamentoFixas_ValorDaPrimeiraParcela"

    invoke-virtual {v0}, Lgif;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lfrq;->a(Ljava/lang/String;D)V

    .line 134
    iget-object v1, p0, Lgit;->a:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;

    invoke-static {v1}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->f(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;)Lgjl;

    move-result-object v1

    iget-object v2, p0, Lgit;->a:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;

    invoke-static {v2}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->d(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;)Lghv;

    move-result-object v2

    iget-object v3, p0, Lgit;->a:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;

    invoke-static {v3}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->e(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;)Lghu;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lgjl;->a(Lghv;Lghu;Lgif;)V

    .line 141
    :goto_1
    const-string v0, "Cartoes_ParcelamentoDeFatura_Acao"

    const-string v1, "Continuar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :cond_1
    const-string v0, "Cartoes_ParcelamentoDeFatura_OpcoesDeParcelamento_Acao"

    const-string v1, "ValorParcial"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lgit;->a:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;

    invoke-virtual {v0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;->a()V

    goto :goto_1
.end method
