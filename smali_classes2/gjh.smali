.class public Lgjh;
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
    .line 113
    iput-object p1, p0, Lgjh;->a:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 117
    const-string v0, "O Parcelamento de fatura est\u00e1 sujeito \u00e0 disponibilidade e crit\u00e9rios de elegibilidade do Santander e inclui apenas o valor total da fatura no momento da contrata\u00e7\u00e3o, sem considerar as compras parceladas a vencer nos pr\u00f3ximos meses. H\u00e1 incid\u00eancia de encargos contratuais e o valor m\u00ednimo para contrata\u00e7\u00e3o \u00e9 de R$ 150,00. O limite ser\u00e1 comprometido no valor das parcelas pendentes e, ao pagar as parcelas nos pr\u00f3ximos meses, seu limite ser\u00e1 automaticamente recomposto. <br/><br/>"

    .line 118
    const-string v1, " Esta op\u00e7\u00e3o n\u00e3o \u00e9 v\u00e1lida para clientes com mais de 60 dias de atraso. Caso o pagamento da 1\u00aa parcela, ou pelo menos, o valor do Pagamento M\u00ednimo da fatura, n\u00e3o seja realizado at\u00e9 a data do vencimento da Fatura, ser\u00e3o cobrados encargos de mora sobre o saldo devedor em atraso. Al\u00e9m disso, at\u00e9 a identifica\u00e7\u00e3o do pagamento o cart\u00e3o poder\u00e1 ser bloqueado. <br/><br/>"

    .line 119
    const-string v2, "Para efetivar o parcelamento de fatura \u00e9 necess\u00e1rio realizar o pagamento exato da 1\u00aa parcela em um de nossos canais de relacionamiento at\u00e9 a data de vencimento da sua fatura."

    .line 121
    iget-object v3, p0, Lgjh;->a:Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity;

    const-string v4, "Aten\u00e7\u00e3o"

    new-instance v5, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "Fechar"

    invoke-static {v3, v4, v0, v1, v2}, Lmxn;->b(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/app/Dialog;

    .line 122
    return-void
.end method
