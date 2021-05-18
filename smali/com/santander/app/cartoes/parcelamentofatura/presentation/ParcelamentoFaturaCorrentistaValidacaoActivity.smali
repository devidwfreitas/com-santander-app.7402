.class public Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Lnau;


# instance fields
.field public a:Landroid/app/Dialog;

.field private final b:Ljava/lang/String;

.field private c:Landroid/app/Activity;

.field private d:Lgjb;

.field private e:Lful;

.field private f:Lgig;

.field private g:Lfuu;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 54
    const-string v0, "ParcelamentoFaturaCorrentistaValidacaoActivity"

    iput-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;->b:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;->a:Landroid/app/Dialog;

    .line 61
    iput-object v1, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;->g:Lfuu;

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;->c:Landroid/app/Activity;

    return-object v0
.end method

.method private a(Z)Lgvb;
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 189
    new-instance v0, Lgvb;

    invoke-direct {v0}, Lgvb;-><init>()V

    .line 190
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "dd/MM/yyyy HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgvb;->f(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v0, v3}, Lgvb;->d(Z)V

    .line 192
    invoke-virtual {v0, p1}, Lgvb;->e(Z)V

    .line 193
    iget-object v1, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;->f:Lgig;

    invoke-virtual {v1}, Lgig;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgvb;->e(Ljava/lang/String;)V

    .line 194
    const-string v1, "Parcelamento de Fatura"

    invoke-virtual {v0, v1}, Lgvb;->c(Ljava/lang/String;)V

    .line 195
    const-string v1, "Parcelamento de Fatura"

    invoke-virtual {v0, v1}, Lgvb;->g(Ljava/lang/String;)V

    .line 196
    const-string v1, "O Parcelamento de fatura est\u00e1 sujeito \u00e0\u00a0 disponibilidade e crit\u00e9rios de elegibilidade do Santander e inclui apenas o valor total da fatura no momento da contrata\u00e7\u00e3o, sem considerar as compras parceladas a vencer nos pr\u00f3ximos meses. H\u00e1 incid\u00eancia de encargos contratuais e o valor m\u00e1\u00adnimo para contrata\u00e7\u00e3o \u00e9 de R$ 150,00. O limite ser\u00e1 comprometido no valor das parcelas pendentes e, ao pagar as parcelas nos pr\u00f3ximos meses, seu limite ser\u00e1 automaticamente recomposto. Esta op\u00e7\u00e3o n\u00e3o \u00e9 v\u00e1lida para clientes com mais de 60 dias de atraso. Caso o pagamento da 1\u00ba parcela, ou pelo menos, o valor do Pagamento M\u00e1nimo da fatura, n\u00e3o seja realizado at\u00e9 a data do vencimento da Fatura, ser\u00e1 cobrados encargos de mora sobre o saldo devedor em atraso. Al\u00e9m disso, at\u00e9 a identifica\u00e7\u00e3o do pagamento o cart\u00e3o poder\u00e1 ser bloqueado"

    invoke-virtual {v0, v1}, Lgvb;->h(Ljava/lang/String;)V

    .line 197
    const-string v1, "parcFat_Suc.end"

    invoke-virtual {v0, v1}, Lgvb;->i(Ljava/lang/String;)V

    .line 198
    const-string v1, "parcFat_share"

    invoke-virtual {v0, v1}, Lgvb;->j(Ljava/lang/String;)V

    .line 200
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "Cartoes_ParcelamentoDeFatura_Acao"

    aput-object v2, v1, v4

    const-string v2, "Compartilhar"

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lgvb;->a([Ljava/lang/String;)V

    .line 201
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "Cartoes_ParcelamentoDeFatura_Acao"

    aput-object v2, v1, v4

    const-string v2, "Fechar"

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lgvb;->b([Ljava/lang/String;)V

    .line 203
    if-nez p1, :cond_0

    .line 204
    const v1, 0x7f09033e

    invoke-virtual {p0, v1}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgvb;->d(Ljava/lang/String;)V

    .line 208
    :goto_0
    iget-object v1, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;->f:Lgig;

    invoke-direct {p0, v0, v1, p1}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;->a(Lgvb;Lgig;Z)V

    .line 210
    return-object v0

    .line 206
    :cond_0
    const-string v1, "Parcelamento de fatura N\u00e3o realizado"

    invoke-virtual {v0, v1}, Lgvb;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Lgvb;Lgig;Z)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x42c80000    # 100.0f

    .line 215
    const-string v0, ""

    .line 216
    invoke-virtual {p2}, Lgig;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 218
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 219
    invoke-virtual {p2}, Lgig;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgif;

    invoke-virtual {v0}, Lgif;->d()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 223
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 225
    if-nez p3, :cond_0

    .line 226
    new-instance v0, Lgky;

    const v3, 0x7f09033f

    invoke-virtual {p0, v3}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v0, v3, v4}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    :cond_0
    new-instance v0, Lgky;

    const-string v3, "N\u00famero do Cart\u00e3o: "

    invoke-virtual {p2}, Lgig;->m()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnaj;->E(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    new-instance v0, Lgky;

    const-string v3, "Data de Vencimento: "

    invoke-virtual {p2}, Lgig;->g()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnak;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    new-instance v0, Lgky;

    const-string v3, "Valor a Parcelar: "

    invoke-virtual {p2}, Lgig;->v()Ljava/lang/String;

    move-result-object v4

    const-string v5, "+"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    div-float/2addr v4, v7

    float-to-double v4, v4

    invoke-static {v4, v5}, Lnaj;->a(D)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    new-instance v3, Lgky;

    const-string v4, "N\u00famero de Parcelas: "

    invoke-virtual {p2}, Lgig;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgif;

    invoke-virtual {v0}, Lgif;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    new-instance v0, Lgky;

    const-string v3, "Valor da primeira parcela: "

    invoke-static {v1}, Lnaj;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    new-instance v1, Lgky;

    const-string v3, "Valor das demais parcelas: "

    invoke-virtual {p2}, Lgig;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgif;

    invoke-virtual {v0}, Lgif;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    new-instance v0, Lgky;

    const-string v1, "Valor da tarifa: "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lgig;->u()Ljava/lang/String;

    move-result-object v4

    const-string v5, "+"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    div-float/2addr v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    new-instance v0, Lgky;

    const-string v1, "Valor do IOF: "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lgig;->r()Ljava/lang/String;

    move-result-object v4

    const-string v5, "+"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    div-float/2addr v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    new-instance v0, Lgky;

    const-string v1, "Taxa de juros: "

    invoke-virtual {p2}, Lgig;->o()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnaj;->F(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    new-instance v0, Lgky;

    const-string v1, "Custo efetivo total (CET): "

    invoke-virtual {p2}, Lgig;->f()Ljava/lang/String;

    move-result-object v3

    const-string v4, "+"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnaj;->F(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    invoke-virtual {p1, v2}, Lgvb;->b(Ljava/util/ArrayList;)V

    .line 241
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lgvb;->i(Z)V

    .line 246
    return-void

    .line 221
    :cond_1
    invoke-virtual {p2}, Lgig;->s()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_0
.end method

.method public static synthetic b(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;)Lgig;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;->f:Lgig;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 249
    new-instance v0, Lnaf;

    invoke-direct {v0}, Lnaf;-><init>()V

    .line 251
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lnaf;->c([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 256
    :goto_0
    return-object v0

    .line 252
    :catch_0
    move-exception v0

    .line 253
    const-string v1, "ERRO_CRYPTO"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const-string v0, ""

    goto :goto_0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 262
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;->a:Landroid/app/Dialog;

    .line 264
    :cond_0
    return-void
.end method

.method public static synthetic c(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;)Lfuu;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;->g:Lfuu;

    return-object v0
.end method

.method public static synthetic d(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;->b()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;->a(Z)Lgvb;

    move-result-object v0

    .line 107
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 108
    const-string v2, "comprovanteBase"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 110
    invoke-virtual {p0, v1}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;->startActivity(Landroid/content/Intent;)V

    .line 111
    return-void
.end method

.method public a(IZ)V
    .locals 2

    .prologue
    .line 101
    new-instance v0, Lgjb;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lgjb;-><init>(Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;Lgja;)V

    iput-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;->d:Lgjb;

    .line 102
    iget-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;->d:Lgjb;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lgjb;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 103
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 114
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;->a(Z)Lgvb;

    move-result-object v0

    .line 115
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 116
    const-string v2, "comprovanteBase"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 118
    invoke-virtual {p0, v1}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;->startActivity(Landroid/content/Intent;)V

    .line 120
    return-void
.end method

.method public a(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 267
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 268
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    move v1, v2

    .line 269
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 270
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v4, "com.santander.app"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 271
    invoke-virtual {p0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;->onDestroy()V

    .line 272
    const/4 v2, 0x1

    .line 275
    :cond_0
    return v2

    .line 269
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const v6, 0x7f100544

    const v5, 0x7f090826

    const/4 v4, 0x0

    .line 65
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const v0, 0x7f040344

    invoke-virtual {p0, v0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;->setContentView(I)V

    .line 68
    invoke-virtual {p0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    .line 69
    invoke-virtual {v1, v4}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 70
    invoke-virtual {v1, v4}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 71
    invoke-virtual {p0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0e0019

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 72
    invoke-virtual {p0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0205d6

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 75
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 76
    const v2, 0x7f04039b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 77
    const v2, 0x7f100071

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 79
    invoke-virtual {p0, v5}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 81
    iput-object p0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;->c:Landroid/app/Activity;

    .line 83
    invoke-virtual {p0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "parcelarFatura"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lgig;

    iput-object v0, p0, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;->f:Lgig;

    .line 85
    invoke-virtual {p0}, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaCorrentistaValidacaoActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 86
    invoke-virtual {v0, v6}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 87
    if-nez v1, :cond_0

    .line 88
    new-instance v1, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;

    invoke-direct {v1}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;-><init>()V

    .line 89
    invoke-virtual {v1, v4}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->b(I)V

    .line 90
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 91
    invoke-virtual {v0, v6, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 92
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 93
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 96
    :cond_0
    return-void
.end method
