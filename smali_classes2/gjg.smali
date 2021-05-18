.class public Lgjg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lgjg;->a:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 101
    const-string v0, "Cartoes_ParcelamentoDeFatura_Acao"

    const-string v1, "Continuar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lgjg;->a:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;->a(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;)Lghw;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lghw;->a(Ljava/util/List;)V

    .line 104
    iget-object v0, p0, Lgjg;->a:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;->a(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;)Lghw;

    move-result-object v0

    invoke-virtual {v0}, Lghw;->k()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lgjg;->a:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;

    invoke-static {v1}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;->b(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;)Lgif;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v0, p0, Lgjg;->a:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;->a(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;)Lghw;

    move-result-object v0

    iget-object v1, p0, Lgjg;->a:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;

    invoke-static {v1}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;->c(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;)Lghu;

    move-result-object v1

    invoke-virtual {v1}, Lghu;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lghw;->c(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lgjg;->a:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;->a(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;)Lghw;

    move-result-object v0

    iget-object v1, p0, Lgjg;->a:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;

    invoke-static {v1}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;->c(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;)Lghu;

    move-result-object v1

    invoke-virtual {v1}, Lghu;->H()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lghw;->k(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lgjg;->a:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;

    invoke-static {v0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;->d(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;)Lgjj;

    move-result-object v0

    iget-object v1, p0, Lgjg;->a:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;

    invoke-static {v1}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;->a(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;)Lghw;

    move-result-object v1

    invoke-interface {v0, v1}, Lgjj;->a(Lghw;)V

    .line 109
    return-void
.end method
