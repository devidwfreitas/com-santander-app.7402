.class public Ljth;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljtf;


# instance fields
.field private a:Lmip;

.field private b:Ljwi;

.field private c:Ljtg;

.field private d:Ljsr;

.field private e:Ljsv;

.field private f:Landroid/app/Activity;

.field private g:Lbr/com/santander/dynamicauth/interfaces/DynamicAuthCallBack;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljtg;)V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljwj;

    invoke-direct {v0, p1}, Ljwj;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Ljth;->b:Ljwi;

    .line 69
    iput-object p2, p0, Ljth;->c:Ljtg;

    .line 70
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Ljth;->a:Lmip;

    .line 71
    iput-object p1, p0, Ljth;->f:Landroid/app/Activity;

    .line 72
    return-void
.end method

.method private a(Ljsu;)Lgvb;
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 215
    new-instance v4, Lgvb;

    invoke-direct {v4}, Lgvb;-><init>()V

    .line 216
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 217
    const-string v3, "dem"

    .line 219
    new-instance v0, Lfsg;

    invoke-direct {v0}, Lfsg;-><init>()V

    iget-object v6, p0, Ljth;->f:Landroid/app/Activity;

    invoke-virtual {v0, v6}, Lfsg;->a(Landroid/content/Context;)V

    .line 221
    new-instance v0, Lgky;

    const-string v6, ""

    iget-object v7, p0, Ljth;->d:Ljsr;

    invoke-virtual {v7}, Ljsr;->g()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-virtual {v0, v1}, Lgky;->a(Z)V

    .line 223
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    invoke-virtual {p1}, Ljsu;->f()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgku;

    .line 226
    new-instance v7, Lgky;

    invoke-virtual {v0}, Lgku;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lgku;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v8, v0}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 229
    :cond_0
    iget-object v0, p0, Ljth;->d:Ljsr;

    invoke-virtual {v0}, Ljsr;->d()Ljava/lang/String;

    move-result-object v0

    .line 231
    iget-object v6, p0, Ljth;->d:Ljsr;

    invoke-virtual {v6}, Ljsr;->i()Ljava/lang/String;

    move-result-object v6

    const-string v7, "S"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 232
    iget-object v0, p0, Ljth;->f:Landroid/app/Activity;

    const v6, 0x7f090818

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 233
    const-string v6, "R$-"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "R$ "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Ljth;->d:Ljsr;

    invoke-virtual {v8}, Ljsr;->j()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 234
    invoke-virtual {v4, v0}, Lgvb;->m(Ljava/lang/String;)V

    .line 237
    :cond_1
    iget-object v0, p0, Ljth;->d:Ljsr;

    invoke-virtual {v0}, Ljsr;->n()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljth;->d:Ljsr;

    invoke-virtual {v0}, Ljsr;->n()Ljava/lang/String;

    move-result-object v0

    const-string v6, "S"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Lgvb;->f(Z)V

    .line 238
    const-string v0, "Cadastro em D\u00e9bito Autom\u00e1tico"

    invoke-virtual {v4, v0}, Lgvb;->k(Ljava/lang/String;)V

    .line 239
    const-class v0, Lcom/santander/app/cadastrodebitoautomatico/activity/CadastrarDebitoAutomaticoActivity;

    invoke-virtual {v4, v0}, Lgvb;->a(Ljava/lang/Class;)V

    .line 242
    invoke-virtual {v4, v5}, Lgvb;->b(Ljava/util/ArrayList;)V

    .line 243
    iget-object v0, p0, Ljth;->f:Landroid/app/Activity;

    const v5, 0x7f090a8c

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lgvb;->c(Ljava/lang/String;)V

    .line 244
    sget-object v0, Lgvu;->COMPROVANTE_PAGAMENTO:Lgvu;

    invoke-virtual {v4, v0}, Lgvb;->a(Lgvu;)V

    .line 246
    invoke-virtual {p1}, Ljsu;->getDataHoraTransacao()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lgvb;->f(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p1}, Ljsu;->getAutenticacao()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lgvb;->e(Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Ljth;->d:Ljsr;

    invoke-virtual {v0}, Ljsr;->a()Ljava/lang/String;

    move-result-object v0

    const-string v5, "N"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 250
    iget-object v0, p0, Ljth;->f:Landroid/app/Activity;

    const v5, 0x7f090816

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lgvb;->d(Ljava/lang/String;)V

    .line 254
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Comprovante - "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Lgvb;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lgvb;->g(Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Ljth;->d:Ljsr;

    invoke-virtual {v0}, Ljsr;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    const-string v2, "8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 257
    const-string v0, "cons"

    .line 260
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "telaPagOK.end."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lgvb;->i(Ljava/lang/String;)V

    .line 261
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pagTitComproDebAuto."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lgvb;->l(Ljava/lang/String;)V

    .line 262
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pagTitShare."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lgvb;->j(Ljava/lang/String;)V

    .line 263
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pagTitComprFecha."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lgvb;->n(Ljava/lang/String;)V

    .line 265
    invoke-virtual {v4, v1}, Lgvb;->n(Z)V

    .line 266
    invoke-direct {p0, v4}, Ljth;->a(Lgvb;)V

    .line 268
    return-object v4

    :cond_2
    move v0, v2

    .line 237
    goto/16 :goto_1

    .line 252
    :cond_3
    iget-object v0, p0, Ljth;->f:Landroid/app/Activity;

    const v5, 0x7f090814

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lgvb;->d(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_4
    move-object v0, v3

    goto :goto_3
.end method

.method static synthetic a(Ljth;Ljsu;)Lgvb;
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0, p1}, Ljth;->a(Ljsu;)Lgvb;

    move-result-object v0

    return-object v0
.end method

.method private a(Lbr/com/santander/dynamicauth/models/DynamicAuthResponse;)Liq;
    .locals 5

    .prologue
    .line 193
    invoke-static {}, Lmwz;->a()Ljava/lang/String;

    move-result-object v1

    const-string v0, ""

    .line 194
    new-instance v2, Ljta;

    invoke-direct {v2}, Ljta;-><init>()V

    .line 196
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 197
    invoke-virtual {v2, v1}, Ljta;->b(Ljava/lang/String;)V

    .line 199
    :cond_0
    new-instance v1, Lmzk;

    iget-object v3, p0, Ljth;->f:Landroid/app/Activity;

    invoke-direct {v1, v3}, Lmzk;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1}, Lmzk;->a()Lmzl;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljta;->a(Lmzl;)V

    .line 200
    invoke-virtual {p1}, Lbr/com/santander/dynamicauth/models/DynamicAuthResponse;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljta;->c(Ljava/lang/String;)V

    .line 203
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {}, Lmys;->b()Lejm;

    move-result-object v3

    invoke-virtual {v3, v2}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 204
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 210
    :goto_0
    invoke-static {}, Lgnz;->a()Lgnz;

    move-result-object v1

    const-string v2, "payment/v1/confirmPayment"

    sget-object v3, Lim;->POST:Lim;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v0, v4}, Lgnz;->a(Ljava/lang/String;Lim;Ljava/lang/String;Z)Liq;

    move-result-object v0

    return-object v0

    .line 206
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic a(Ljth;Lbr/com/santander/dynamicauth/models/DynamicAuthResponse;)Liq;
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0, p1}, Ljth;->a(Lbr/com/santander/dynamicauth/models/DynamicAuthResponse;)Liq;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ljth;)Ljtg;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Ljth;->c:Ljtg;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 181
    iget-object v0, p0, Ljth;->f:Landroid/app/Activity;

    iget-object v1, p0, Ljth;->d:Ljsr;

    invoke-virtual {v1}, Ljsr;->t()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v1}, Lcom/santander/app/common/OSGModel;->getOSGParametersModel(Ljava/util/HashMap;)Lbr/com/santander/dynamicauth/models/OSGParametersModel;

    move-result-object v1

    iget-object v2, p0, Ljth;->g:Lbr/com/santander/dynamicauth/interfaces/DynamicAuthCallBack;

    invoke-static {v0, v1, v2}, Lmzz;->a(Landroid/content/Context;Lbr/com/santander/dynamicauth/models/OSGParametersModel;Lbr/com/santander/dynamicauth/interfaces/DynamicAuthCallBack;)V

    .line 182
    return-void
.end method

.method private a(Lgvb;)V
    .locals 4

    .prologue
    .line 314
    const-string v0, "Pagamentos_Pagamento_DataDeVencimento"

    iget-object v1, p0, Ljth;->d:Ljsr;

    invoke-virtual {v1}, Ljsr;->q()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnak;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const-string v0, "Pagamentos_Pagamento_DataDePagamento"

    invoke-virtual {p1}, Lgvb;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const-string v0, "Pagamentos_Pagamento_ValorDePagamento"

    iget-object v1, p0, Ljth;->d:Ljsr;

    invoke-virtual {v1}, Ljsr;->k()Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    const-string v3, "."

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lfrq;->a(Ljava/lang/String;D)V

    .line 318
    iget-object v0, p0, Ljth;->d:Ljsr;

    invoke-virtual {v0}, Ljsr;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "YA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    const-string v0, "Pagamentos_Pagamento_TipoDoPagamento"

    const-string v1, "Arrecadacao"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :cond_0
    iget-object v0, p0, Ljth;->d:Ljsr;

    invoke-virtual {v0}, Ljsr;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 323
    const-string v0, "Pagamentos_Pagamento_TipoDoPagamento"

    const-string v1, "OutrosBancos"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    :cond_1
    iget-object v0, p0, Ljth;->d:Ljsr;

    invoke-virtual {v0}, Ljsr;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "YK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 327
    const-string v0, "Pagamentos_Pagamento_TipoDoPagamento"

    const-string v1, "Santander"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    :cond_2
    const-string v0, "Pagamentos_Pagamento_ReferOper"

    invoke-virtual {p1}, Lgvb;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    return-void
.end method

.method private b(Ljsu;)Lgvb;
    .locals 4

    .prologue
    const v3, 0x7f090815

    .line 273
    new-instance v1, Lgvb;

    invoke-direct {v1}, Lgvb;-><init>()V

    .line 274
    iget-object v0, p0, Ljth;->f:Landroid/app/Activity;

    const v2, 0x7f090a8c

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgvb;->c(Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Ljth;->f:Landroid/app/Activity;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgvb;->d(Ljava/lang/String;)V

    .line 277
    const-string v0, ""

    invoke-virtual {v1, v0}, Lgvb;->e(Ljava/lang/String;)V

    .line 278
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    const-string v2, "dd/MM/yyyy HH:mm:ss"

    invoke-static {v0, v2}, Lgpl;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgvb;->f(Ljava/lang/String;)V

    .line 279
    const-string v0, "telaPagNOK.end"

    invoke-virtual {v1, v0}, Lgvb;->i(Ljava/lang/String;)V

    .line 280
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lgvb;->e(Z)V

    .line 281
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lgvb;->d(Z)V

    .line 282
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljsu;->getMensagemErro()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lgvb;->b(Ljava/lang/String;)V

    .line 283
    return-object v1

    .line 282
    :cond_0
    iget-object v0, p0, Ljth;->f:Landroid/app/Activity;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic b(Ljth;Ljsu;)Lgvb;
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0, p1}, Ljth;->b(Ljsu;)Lgvb;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Ljth;)Ljsr;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Ljth;->d:Ljsr;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 185
    new-instance v0, Ljsu;

    invoke-direct {v0}, Ljsu;-><init>()V

    .line 186
    iget-object v1, p0, Ljth;->d:Ljsr;

    invoke-virtual {v1}, Ljsr;->m()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljsu;->a(Ljava/util/ArrayList;)V

    .line 187
    iget-object v1, p0, Ljth;->d:Ljsr;

    invoke-virtual {v1}, Ljsr;->getMensagemErro()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljsu;->setMensagemErro(Ljava/lang/String;)V

    .line 188
    iget-object v1, p0, Ljth;->d:Ljsr;

    invoke-virtual {v1}, Ljsr;->getMsgErro()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljsu;->setMsgErro(Ljava/lang/String;)V

    .line 189
    iget-object v1, p0, Ljth;->c:Ljtg;

    invoke-direct {p0, v0}, Ljth;->b(Ljsu;)Lgvb;

    move-result-object v0

    invoke-interface {v1, v0}, Ljtg;->b(Lgvb;)V

    .line 190
    return-void
.end method

.method private c()Ljsv;
    .locals 2

    .prologue
    .line 287
    new-instance v0, Ljsv;

    invoke-direct {v0}, Ljsv;-><init>()V

    iput-object v0, p0, Ljth;->e:Ljsv;

    .line 289
    iget-object v0, p0, Ljth;->d:Ljsr;

    invoke-virtual {v0}, Ljsr;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Ljth;->e:Ljsv;

    iget-object v1, p0, Ljth;->d:Ljsr;

    invoke-virtual {v1}, Ljsr;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljsv;->d(Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Ljth;->e:Ljsv;

    iget-object v1, p0, Ljth;->a:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljsv;->setConta(Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Ljth;->e:Ljsv;

    iget-object v1, p0, Ljth;->a:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljsv;->setAgencia(Ljava/lang/String;)V

    .line 298
    :goto_0
    iget-object v0, p0, Ljth;->e:Ljsv;

    iget-object v1, p0, Ljth;->d:Ljsr;

    invoke-virtual {v1}, Ljsr;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljsv;->c(Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Ljth;->e:Ljsv;

    iget-object v1, p0, Ljth;->d:Ljsr;

    invoke-virtual {v1}, Ljsr;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljsv;->e(Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Ljth;->e:Ljsv;

    iget-object v1, p0, Ljth;->d:Ljsr;

    invoke-virtual {v1}, Ljsr;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljsv;->f(Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Ljth;->e:Ljsv;

    iget-object v1, p0, Ljth;->d:Ljsr;

    invoke-virtual {v1}, Ljsr;->s()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnak;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljsv;->g(Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Ljth;->e:Ljsv;

    iget-object v1, p0, Ljth;->d:Ljsr;

    invoke-virtual {v1}, Ljsr;->q()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnak;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljsv;->b(Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Ljth;->e:Ljsv;

    iget-object v1, p0, Ljth;->d:Ljsr;

    invoke-virtual {v1}, Ljsr;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljsv;->h(Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Ljth;->e:Ljsv;

    iget-object v1, p0, Ljth;->d:Ljsr;

    invoke-virtual {v1}, Ljsr;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljsv;->a(Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Ljth;->e:Ljsv;

    iget-object v1, p0, Ljth;->a:Lmip;

    invoke-interface {v1}, Lmip;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljsv;->setConnUuid(Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Ljth;->e:Ljsv;

    iget-object v1, p0, Ljth;->a:Lmip;

    invoke-interface {v1}, Lmip;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljsv;->setTokenSessao(Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Ljth;->e:Ljsv;

    iget-object v1, p0, Ljth;->a:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljsv;->setTokenTransacao(Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Ljth;->e:Ljsv;

    return-object v0

    .line 295
    :cond_0
    iget-object v0, p0, Ljth;->e:Ljsv;

    iget-object v1, p0, Ljth;->d:Ljsr;

    invoke-virtual {v1}, Ljsr;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljsv;->setConta(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Ljth;->e:Ljsv;

    iget-object v1, p0, Ljth;->d:Ljsr;

    invoke-virtual {v1}, Ljsr;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljsv;->setAgencia(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method static synthetic c(Ljth;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljth;->b()V

    return-void
.end method

.method static synthetic d(Ljth;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljth;->a()V

    return-void
.end method

.method static synthetic e(Ljth;)Ljwi;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Ljth;->b:Ljwi;

    return-object v0
.end method


# virtual methods
.method public a(Ljsr;)V
    .locals 3

    .prologue
    .line 76
    iput-object p1, p0, Ljth;->d:Ljsr;

    .line 78
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->C()Lipi;

    move-result-object v0

    const-string v1, "00000121"

    invoke-interface {v0, v1}, Lipi;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 79
    :cond_0
    invoke-direct {p0}, Ljth;->c()Ljsv;

    move-result-object v0

    iput-object v0, p0, Ljth;->e:Ljsv;

    .line 81
    iget-object v0, p0, Ljth;->b:Ljwi;

    new-instance v1, Ljti;

    invoke-direct {v1, p0}, Ljti;-><init>(Ljth;)V

    iget-object v2, p0, Ljth;->e:Ljsv;

    invoke-interface {v0, v1, v2}, Ljwi;->a(Lgkw;Ljsv;)V

    .line 178
    :goto_0
    return-void

    .line 110
    :cond_1
    new-instance v0, Ljtk;

    invoke-direct {v0, p0}, Ljtk;-><init>(Ljth;)V

    iput-object v0, p0, Ljth;->g:Lbr/com/santander/dynamicauth/interfaces/DynamicAuthCallBack;

    .line 176
    invoke-direct {p0}, Ljth;->a()V

    goto :goto_0
.end method
