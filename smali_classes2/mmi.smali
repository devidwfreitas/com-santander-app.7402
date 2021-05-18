.class public Lmmi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmmg;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lmmh;

.field private c:Lmqn;

.field private d:Lmqc;

.field private e:Lmip;

.field private f:Lbr/com/santander/dynamicauth/interfaces/DynamicAuthCallBack;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lmmh;)V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lmmi;->a:Landroid/app/Activity;

    .line 72
    iput-object p2, p0, Lmmi;->b:Lmmh;

    .line 73
    new-instance v0, Lmqn;

    invoke-direct {v0, p1}, Lmqn;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lmmi;->c:Lmqn;

    .line 74
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Lmmi;->e:Lmip;

    .line 75
    return-void
.end method

.method static synthetic a(Lmmi;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lmmi;->a:Landroid/app/Activity;

    return-object v0
.end method

.method private a(Lmlo;Lmlp;)Lgvb;
    .locals 6

    .prologue
    .line 309
    new-instance v1, Lgvb;

    invoke-direct {v1}, Lgvb;-><init>()V

    .line 310
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 312
    new-instance v0, Lfsg;

    invoke-direct {v0}, Lfsg;-><init>()V

    iget-object v3, p0, Lmmi;->a:Landroid/app/Activity;

    invoke-virtual {v0, v3}, Lfsg;->a(Landroid/content/Context;)V

    .line 314
    invoke-virtual {p1}, Lmlo;->f()Ljava/lang/String;

    move-result-object v0

    const-string v3, "doc"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    const-string v0, "Transf.Doc.Suc.end"

    invoke-virtual {v1, v0}, Lgvb;->i(Ljava/lang/String;)V

    .line 318
    :cond_0
    invoke-virtual {p1}, Lmlo;->f()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ted"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    const-string v0, "Transf.Ted.Suc.end"

    invoke-virtual {v1, v0}, Lgvb;->i(Ljava/lang/String;)V

    .line 322
    :cond_1
    invoke-virtual {p1}, Lmlo;->f()Ljava/lang/String;

    move-result-object v0

    const-string v3, "tef"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 323
    const-string v0, "Transf.EntreContas.Suc.end"

    invoke-virtual {v1, v0}, Lgvb;->i(Ljava/lang/String;)V

    .line 326
    :cond_2
    const-string v0, "Transf.Share"

    invoke-virtual {v1, v0}, Lgvb;->j(Ljava/lang/String;)V

    .line 327
    invoke-direct {p0, p1}, Lmmi;->d(Lmlo;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgvb;->b(Ljava/util/ArrayList;)V

    .line 328
    const-string v0, "Transfer\u00eancia"

    invoke-virtual {v1, v0}, Lgvb;->c(Ljava/lang/String;)V

    .line 330
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lgvb;->d(Z)V

    .line 331
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    const-string v3, "dd/MM/yyyy HH:mm:ss"

    invoke-static {v0, v3}, Lgpl;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgvb;->f(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p2}, Lmlp;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgvb;->e(Ljava/lang/String;)V

    .line 334
    invoke-virtual {p1}, Lmlo;->f()Ljava/lang/String;

    move-result-object v0

    const-string v3, "tef"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Transfer\u00eancia entre contas"

    .line 336
    :goto_0
    invoke-virtual {p1}, Lmlo;->h()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 337
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lmmi;->a:Landroid/app/Activity;

    const v4, 0x7f090b09

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgvb;->d(Ljava/lang/String;)V

    .line 343
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Comprovante - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lgvb;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgvb;->g(Ljava/lang/String;)V

    .line 346
    const-string v0, "Transferencia_Referoper"

    invoke-virtual {p1}, Lmlo;->l()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    const-string v0, "Transferencia_Valor"

    invoke-virtual {p1}, Lmlo;->d()Ljava/lang/String;

    move-result-object v3

    const-string v4, "R$"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "."

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    const-string v5, "."

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    const-string v0, "Transferencia_Tipo"

    invoke-virtual {p1}, Lmlo;->f()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    invoke-virtual {p1}, Lmlo;->b()Lmld;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 351
    const-string v0, "Transferencia_BancoDestino"

    invoke-virtual {p1}, Lmlo;->b()Lmld;

    move-result-object v3

    invoke-virtual {v3}, Lmld;->i()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    :goto_2
    const-string v3, "Transferencia_ProgramarMensal"

    invoke-virtual {p1}, Lmlo;->i()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "Sim"

    :goto_3
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    const-string v3, "Transferencia_ProgramarNumMeses"

    const-string v0, ""

    invoke-virtual {p1}, Lmlo;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lmlo;->j()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    const-string v0, "Transferencia_DataEfetivacao"

    invoke-virtual {p1}, Lmlo;->g()Ljava/lang/String;

    move-result-object v3

    const-string v4, "yyyyMMdd"

    const-string v5, "dd/MM/yyyy"

    invoke-static {v3, v4, v5}, Lnak;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lgvb;->g(Z)V

    .line 361
    invoke-virtual {v1, v2}, Lgvb;->a(Ljava/util/Map;)V

    .line 363
    return-object v1

    .line 334
    :cond_3
    invoke-virtual {p1}, Lmlo;->f()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 338
    :cond_4
    invoke-virtual {p1}, Lmlo;->i()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 339
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lmmi;->a:Landroid/app/Activity;

    const v4, 0x7f090b0a

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgvb;->d(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 341
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lmmi;->a:Landroid/app/Activity;

    const v4, 0x7f090b0b

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgvb;->d(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 353
    :cond_6
    const-string v0, "Transferencia_BancoDestino"

    invoke-virtual {p1}, Lmlo;->c()Lmkw;

    move-result-object v3

    invoke-virtual {v3}, Lmkw;->l()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 356
    :cond_7
    const-string v0, "Nao"

    goto/16 :goto_3

    .line 357
    :cond_8
    const-string v0, "0"

    goto/16 :goto_4
.end method

.method private a(Lmlp;)Lgvb;
    .locals 3

    .prologue
    .line 486
    new-instance v0, Lgvb;

    invoke-direct {v0}, Lgvb;-><init>()V

    .line 487
    const-string v1, "Transfer\u00eancia"

    invoke-virtual {v0, v1}, Lgvb;->c(Ljava/lang/String;)V

    .line 490
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    const-string v2, "dd/MM/yyyy HH:mm:ss"

    invoke-static {v1, v2}, Lgpl;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgvb;->f(Ljava/lang/String;)V

    .line 491
    const-string v1, ""

    invoke-virtual {v0, v1}, Lgvb;->e(Ljava/lang/String;)V

    .line 492
    const-string v1, ""

    invoke-virtual {v0, v1}, Lgvb;->i(Ljava/lang/String;)V

    .line 493
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgvb;->e(Z)V

    .line 494
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgvb;->d(Z)V

    .line 495
    invoke-virtual {p1}, Lmlp;->getMensagemErro()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgvb;->b(Ljava/lang/String;)V

    .line 496
    return-object v0
.end method

.method static synthetic a(Lmmi;Lmlo;Lmlp;)Lgvb;
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lmmi;->a(Lmlo;Lmlp;)Lgvb;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmmi;Lmlp;)Lgvb;
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lmmi;->a(Lmlp;)Lgvb;

    move-result-object v0

    return-object v0
.end method

.method private a(Lbr/com/santander/dynamicauth/models/DynamicAuthResponse;Lmlo;)Liq;
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 197
    const-string v0, "TED"

    .line 198
    const-string v0, "DOC"

    .line 199
    const-string v0, "TEF"

    .line 201
    invoke-static {}, Lmwz;->a()Ljava/lang/String;

    move-result-object v2

    const-string v0, ""

    const-string v1, ""

    .line 202
    new-instance v4, Lmln;

    invoke-direct {v4}, Lmln;-><init>()V

    .line 204
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 205
    invoke-virtual {v4, v2}, Lmln;->h(Ljava/lang/String;)V

    .line 207
    :cond_0
    new-instance v2, Lmzk;

    iget-object v5, p0, Lmmi;->a:Landroid/app/Activity;

    invoke-direct {v2, v5}, Lmzk;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2}, Lmzk;->a()Lmzl;

    move-result-object v2

    invoke-virtual {v4, v2}, Lmln;->a(Lmzl;)V

    .line 208
    invoke-virtual {p1}, Lbr/com/santander/dynamicauth/models/DynamicAuthResponse;->getData()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lmln;->i(Ljava/lang/String;)V

    .line 211
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-static {}, Lmys;->b()Lejm;

    move-result-object v5

    invoke-virtual {v5, v4}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 212
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v4

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 218
    :goto_0
    invoke-virtual {p2}, Lmlo;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    const/4 v2, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 230
    :goto_2
    invoke-static {}, Lgnz;->a()Lgnz;

    move-result-object v2

    sget-object v4, Lim;->POST:Lim;

    invoke-virtual {v2, v1, v4, v0, v3}, Lgnz;->a(Ljava/lang/String;Lim;Ljava/lang/String;Z)Liq;

    move-result-object v0

    return-object v0

    .line 218
    :sswitch_0
    const-string v5, "TED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_1
    const-string v5, "DOC"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v3

    goto :goto_1

    :sswitch_2
    const-string v5, "TEF"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x2

    goto :goto_1

    .line 220
    :pswitch_0
    const-string v1, "transfer/v1/ted/confirm"

    goto :goto_2

    .line 223
    :pswitch_1
    const-string v1, "transfer/v1/doc/confirm"

    goto :goto_2

    .line 226
    :pswitch_2
    const-string v1, "transfer/v1/santander/confirm"

    goto :goto_2

    .line 214
    :catch_0
    move-exception v2

    goto :goto_0

    .line 218
    :sswitch_data_0
    .sparse-switch
        0x10918 -> :sswitch_1
        0x143f3 -> :sswitch_0
        0x143f5 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lmmi;Lbr/com/santander/dynamicauth/models/DynamicAuthResponse;Lmlo;)Liq;
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lmmi;->a(Lbr/com/santander/dynamicauth/models/DynamicAuthResponse;Lmlo;)Liq;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmmi;Lmqc;)Lmqc;
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lmmi;->d:Lmqc;

    return-object p1
.end method

.method private a(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/santander/app/components/model/ListValueString;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Lmmi;->a:Landroid/app/Activity;

    invoke-static {p1}, Lcom/santander/app/common/OSGModel;->getOSGParametersModel(Ljava/util/HashMap;)Lbr/com/santander/dynamicauth/models/OSGParametersModel;

    move-result-object v1

    iget-object v2, p0, Lmmi;->f:Lbr/com/santander/dynamicauth/interfaces/DynamicAuthCallBack;

    invoke-static {v0, v1, v2}, Lmzz;->a(Landroid/content/Context;Lbr/com/santander/dynamicauth/models/OSGParametersModel;Lbr/com/santander/dynamicauth/interfaces/DynamicAuthCallBack;)V

    .line 194
    return-void
.end method

.method static synthetic a(Lmmi;Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lmmi;->a(Ljava/util/HashMap;)V

    return-void
.end method

.method private b(Lmlo;Lmlp;)Lgvb;
    .locals 7

    .prologue
    .line 437
    new-instance v2, Lgvb;

    invoke-direct {v2}, Lgvb;-><init>()V

    .line 438
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 440
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v0}, Lgvb;->b(Ljava/util/ArrayList;)V

    .line 442
    invoke-virtual {p2}, Lmlp;->h()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgku;

    .line 443
    invoke-virtual {v2}, Lgvb;->h()Ljava/util/ArrayList;

    move-result-object v4

    new-instance v5, Lgky;

    .line 444
    invoke-virtual {v0}, Lgku;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lgku;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v6, v0}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 446
    :cond_0
    const-string v0, "Transfer\u00eancia"

    invoke-virtual {v2, v0}, Lgvb;->c(Ljava/lang/String;)V

    .line 448
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lgvb;->d(Z)V

    .line 450
    invoke-virtual {p2}, Lmlp;->getDataHoraTransacao()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lgvb;->f(Ljava/lang/String;)V

    .line 451
    invoke-virtual {p2}, Lmlp;->getAutenticacao()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lgvb;->e(Ljava/lang/String;)V

    .line 453
    invoke-virtual {p1}, Lmlo;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tef"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Transfer\u00eancia entre contas"

    .line 454
    :goto_1
    invoke-virtual {p1}, Lmlo;->h()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmmi;->a:Landroid/app/Activity;

    const v4, 0x7f090b09

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 458
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lgvb;->d(Ljava/lang/String;)V

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Comprovante - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lgvb;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lgvb;->g(Ljava/lang/String;)V

    .line 463
    const-string v0, "Transferencia_Referoper"

    invoke-virtual {p1}, Lmlo;->l()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    const-string v0, "Transferencia_Valor"

    invoke-virtual {p1}, Lmlo;->d()Ljava/lang/String;

    move-result-object v1

    const-string v4, "R$"

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "."

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v4, ","

    const-string v5, "."

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    const-string v0, "Transferencia_Tipo"

    invoke-virtual {p1}, Lmlo;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    invoke-virtual {p1}, Lmlo;->b()Lmld;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 468
    const-string v0, "Transferencia_BancoDestino"

    invoke-virtual {p1}, Lmlo;->b()Lmld;

    move-result-object v1

    invoke-virtual {v1}, Lmld;->i()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    :goto_3
    const-string v1, "Transferencia_ProgramarMensal"

    invoke-virtual {p1}, Lmlo;->i()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "Sim"

    :goto_4
    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    const-string v1, "Transferencia_ProgramarNumMeses"

    const-string v0, ""

    invoke-virtual {p1}, Lmlo;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lmlo;->j()Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    const-string v0, "Transferencia_DataEfetivacao"

    invoke-virtual {p1}, Lmlo;->g()Ljava/lang/String;

    move-result-object v1

    const-string v4, "yyyyMMdd"

    const-string v5, "dd/MM/yyyy"

    invoke-static {v1, v4, v5}, Lnak;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lgvb;->g(Z)V

    .line 478
    invoke-virtual {v2, v3}, Lgvb;->a(Ljava/util/Map;)V

    .line 481
    return-object v2

    .line 453
    :cond_1
    invoke-virtual {p1}, Lmlo;->f()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 455
    :cond_2
    invoke-virtual {p1}, Lmlo;->i()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lmmi;->a:Landroid/app/Activity;

    const v4, 0x7f090b0a

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :cond_3
    iget-object v1, p0, Lmmi;->a:Landroid/app/Activity;

    const v4, 0x7f090b0b

    .line 456
    invoke-virtual {v1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 470
    :cond_4
    const-string v0, "Transferencia_BancoDestino"

    invoke-virtual {p1}, Lmlo;->c()Lmkw;

    move-result-object v1

    invoke-virtual {v1}, Lmkw;->l()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 473
    :cond_5
    const-string v0, "Nao"

    goto :goto_4

    .line 474
    :cond_6
    const-string v0, "0"

    goto :goto_5
.end method

.method static synthetic b(Lmmi;Lmlo;Lmlp;)Lgvb;
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lmmi;->b(Lmlo;Lmlp;)Lgvb;

    move-result-object v0

    return-object v0
.end method

.method private b(Lmlo;)Lmlq;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/16 v5, 0xc

    const/4 v4, 0x4

    .line 235
    new-instance v2, Lmlq;

    invoke-direct {v2}, Lmlq;-><init>()V

    .line 236
    iget-object v0, p0, Lmmi;->e:Lmip;

    invoke-interface {v0}, Lmip;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lmlq;->setConnUuid(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lmmi;->e:Lmip;

    invoke-interface {v0}, Lmip;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lmlq;->setTokenSessao(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lmmi;->e:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lmlq;->setTokenTransacao(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p1}, Lmlo;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lmlq;->q(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p1}, Lmlo;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lmlq;->r(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p1}, Lmlo;->i()Z

    move-result v0

    invoke-virtual {v2, v0}, Lmlq;->b(Z)V

    .line 243
    invoke-virtual {p1}, Lmlo;->h()Z

    move-result v0

    invoke-virtual {v2, v0}, Lmlq;->a(Z)V

    .line 244
    invoke-virtual {p1}, Lmlo;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lmlq;->p(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p1}, Lmlo;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lmlq;->s(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p1}, Lmlo;->a()Lcom/santander/app/contacorrente/domain/Conta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/contacorrente/domain/Conta;->getCuenta()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lmlq;->f(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p1}, Lmlo;->a()Lcom/santander/app/contacorrente/domain/Conta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/contacorrente/domain/Conta;->getAgencia()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lmlq;->b(Ljava/lang/String;)V

    .line 251
    invoke-direct {p0, p1}, Lmmi;->c(Lmlo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lmlq;->o(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p1}, Lmlo;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lmlq;->p(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p1}, Lmlo;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lmlq;->h(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p1}, Lmlo;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lmlq;->d(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p1}, Lmlo;->o()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, ""

    invoke-virtual {p1}, Lmlo;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lmlo;->o()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Lmlq;->j(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p1}, Lmlo;->s()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, ""

    invoke-virtual {p1}, Lmlo;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lmlo;->s()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {v2, v1}, Lmlq;->w(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p1}, Lmlo;->b()Lmld;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 263
    invoke-virtual {p1}, Lmlo;->b()Lmld;

    move-result-object v0

    invoke-virtual {v0}, Lmld;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lnaj;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lmlq;->c(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p1}, Lmlo;->b()Lmld;

    move-result-object v0

    invoke-virtual {v0}, Lmld;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lnaj;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lmlq;->a(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p1}, Lmlo;->b()Lmld;

    move-result-object v0

    invoke-virtual {v0}, Lmld;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lnaj;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lmlq;->e(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p1}, Lmlo;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TEF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 267
    invoke-virtual {p1}, Lmlo;->b()Lmld;

    move-result-object v0

    invoke-virtual {v0}, Lmld;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lmlq;->g(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p1}, Lmlo;->b()Lmld;

    move-result-object v0

    invoke-virtual {v0}, Lmld;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lmlq;->k(Ljava/lang/String;)V

    .line 271
    :cond_1
    invoke-virtual {p1}, Lmlo;->b()Lmld;

    move-result-object v0

    invoke-virtual {v0}, Lmld;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lmlq;->u(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p1}, Lmlo;->b()Lmld;

    move-result-object v0

    invoke-virtual {v0}, Lmld;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lmlq;->v(Ljava/lang/String;)V

    .line 288
    :goto_1
    invoke-virtual {p1}, Lmlo;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 289
    iget-object v0, p0, Lmmi;->e:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lmlq;->t(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p1}, Lmlo;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lmlq;->i(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p1}, Lmlo;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lmlq;->l(Ljava/lang/String;)V

    .line 293
    :cond_2
    invoke-virtual {p1}, Lmlo;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 294
    invoke-virtual {p1}, Lmlo;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lmlq;->m(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p1}, Lmlo;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lmlq;->n(Ljava/lang/String;)V

    .line 298
    :cond_3
    return-object v2

    :cond_4
    move-object v0, v1

    .line 257
    goto/16 :goto_0

    .line 276
    :cond_5
    invoke-virtual {p1}, Lmlo;->c()Lmkw;

    move-result-object v0

    invoke-virtual {v0}, Lmkw;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lnaj;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lmlq;->c(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p1}, Lmlo;->c()Lmkw;

    move-result-object v0

    invoke-virtual {v0}, Lmkw;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lnaj;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lmlq;->a(Ljava/lang/String;)V

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lmlo;->c()Lmkw;

    move-result-object v1

    invoke-virtual {v1}, Lmkw;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lmlo;->c()Lmkw;

    move-result-object v1

    invoke-virtual {v1}, Lmkw;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lnaj;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lmlq;->e(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p1}, Lmlo;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TEF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 280
    invoke-virtual {p1}, Lmlo;->c()Lmkw;

    move-result-object v0

    invoke-virtual {v0}, Lmkw;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lmlq;->g(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p1}, Lmlo;->c()Lmkw;

    move-result-object v0

    invoke-virtual {v0}, Lmkw;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lmlq;->k(Ljava/lang/String;)V

    .line 284
    :cond_6
    const-string v0, "N"

    invoke-virtual {v2, v0}, Lmlq;->u(Ljava/lang/String;)V

    .line 285
    const-string v0, "N"

    invoke-virtual {v2, v0}, Lmlq;->v(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method static synthetic b(Lmmi;)Lmqc;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lmmi;->d:Lmqc;

    return-object v0
.end method

.method private c(Lmlo;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 303
    const-string v0, "01"

    invoke-virtual {p1}, Lmlo;->a()Lcom/santander/app/contacorrente/domain/Conta;

    move-result-object v1

    invoke-virtual {v1}, Lcom/santander/app/contacorrente/domain/Conta;->getTipoConta()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CC"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "CCC"

    goto :goto_0
.end method

.method static synthetic c(Lmmi;)Lmmh;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lmmi;->b:Lmmh;

    return-object v0
.end method

.method private d(Lmlo;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmlo;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lgky;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 367
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 370
    new-instance v0, Lgky;

    const-string v2, "Conta Origem: "

    invoke-virtual {p1}, Lmlo;->a()Lcom/santander/app/contacorrente/domain/Conta;

    move-result-object v3

    invoke-virtual {v3}, Lcom/santander/app/contacorrente/domain/Conta;->getAgencia()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lmlo;->a()Lcom/santander/app/contacorrente/domain/Conta;

    move-result-object v4

    invoke-virtual {v4}, Lcom/santander/app/contacorrente/domain/Conta;->getCuenta()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnaq;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    new-instance v0, Lgky;

    const-string v2, "Nome: "

    iget-object v3, p0, Lmmi;->e:Lmip;

    invoke-interface {v3}, Lmip;->f()Lmir;

    move-result-object v3

    invoke-virtual {v3}, Lmir;->j()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-virtual {v0, v5}, Lgky;->a(Z)V

    .line 374
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    invoke-virtual {p1}, Lmlo;->b()Lmld;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 377
    invoke-virtual {p1}, Lmlo;->f()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TEF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 378
    new-instance v0, Lgky;

    const-string v2, "Conta de Destino: "

    invoke-virtual {p1}, Lmlo;->b()Lmld;

    move-result-object v3

    invoke-virtual {v3}, Lmld;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lmlo;->b()Lmld;

    move-result-object v4

    invoke-virtual {v4}, Lmld;->k()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnaq;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    :goto_0
    new-instance v0, Lgky;

    const-string v2, "Nome: "

    invoke-virtual {p1}, Lmlo;->b()Lmld;

    move-result-object v3

    invoke-virtual {v3}, Lmld;->e()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    invoke-virtual {v0, v5}, Lgky;->a(Z)V

    .line 384
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    new-instance v0, Lgky;

    const-string v2, "Banco: "

    invoke-virtual {p1}, Lmlo;->b()Lmld;

    move-result-object v3

    invoke-virtual {v3}, Lmld;->i()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    invoke-virtual {p1}, Lmlo;->f()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TEF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 387
    new-instance v0, Lgky;

    const-string v2, "CPF/CNPJ: "

    invoke-virtual {p1}, Lmlo;->b()Lmld;

    move-result-object v3

    invoke-virtual {v3}, Lmld;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnai;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    :cond_0
    :goto_1
    invoke-virtual {p1}, Lmlo;->f()Ljava/lang/String;

    move-result-object v0

    const-string v2, "tef"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "Transfer\u00eancia entre contas"

    .line 402
    :goto_2
    new-instance v2, Lgky;

    const-string v3, "Tipo Transfer\u00eancia: "

    invoke-direct {v2, v3, v0}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    invoke-virtual {v2, v5}, Lgky;->a(Z)V

    .line 404
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    invoke-virtual {p1}, Lmlo;->h()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 407
    new-instance v2, Lgky;

    const-string v3, "Data de Agendamento: "

    invoke-virtual {p1}, Lmlo;->g()Ljava/lang/String;

    move-result-object v4

    const-string v5, "yyyyMMdd"

    const-string v6, "dd/MM/yyyy"

    invoke-static {v4, v5, v6}, Lnak;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    :goto_3
    invoke-virtual {p1}, Lmlo;->i()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 415
    invoke-virtual {p1}, Lmlo;->j()Ljava/lang/String;

    move-result-object v2

    const-string v3, "S"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 416
    new-instance v2, Lgky;

    const-string v3, "Periodicidade: "

    iget-object v4, p0, Lmmi;->a:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090805

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    :goto_4
    new-instance v2, Lgky;

    const-string v3, "N\u00ba de Vezes: "

    invoke-virtual {p1}, Lmlo;->k()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 425
    :cond_1
    new-instance v2, Lgky;

    const-string v3, "Valor: "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "R$"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lmlo;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    new-instance v2, Lgky;

    const-string v3, ""

    iget-object v4, p0, Lmmi;->a:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0906fb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    const-string v2, "Transfer\u00eancia entre contas"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 430
    new-instance v0, Lgky;

    const-string v2, "Hist\u00f3rico: "

    invoke-virtual {p1}, Lmlo;->o()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    :cond_2
    return-object v1

    .line 380
    :cond_3
    new-instance v0, Lgky;

    const-string v2, "Conta de Destino: "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lmlo;->b()Lmld;

    move-result-object v4

    invoke-virtual {v4}, Lmld;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lmlo;->b()Lmld;

    move-result-object v4

    invoke-virtual {v4}, Lmld;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 390
    :cond_4
    new-instance v0, Lgky;

    const-string v2, "Conta de Destino: "

    invoke-virtual {p1}, Lmlo;->c()Lmkw;

    move-result-object v3

    invoke-virtual {v3}, Lmkw;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lmlo;->c()Lmkw;

    move-result-object v4

    invoke-virtual {v4}, Lmkw;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnaq;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    new-instance v0, Lgky;

    const-string v2, "Nome: "

    invoke-virtual {p1}, Lmlo;->c()Lmkw;

    move-result-object v3

    invoke-virtual {v3}, Lmkw;->h()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    invoke-virtual {v0, v5}, Lgky;->a(Z)V

    .line 393
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    new-instance v0, Lgky;

    const-string v2, "Banco: "

    invoke-virtual {p1}, Lmlo;->c()Lmkw;

    move-result-object v3

    invoke-virtual {v3}, Lmkw;->l()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    invoke-virtual {p1}, Lmlo;->f()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TEF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 397
    new-instance v0, Lgky;

    const-string v2, "CPF/CNPJ: "

    invoke-virtual {p1}, Lmlo;->c()Lmkw;

    move-result-object v3

    invoke-virtual {v3}, Lmkw;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnai;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 400
    :cond_5
    invoke-virtual {p1}, Lmlo;->f()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 408
    :cond_6
    invoke-virtual {p1}, Lmlo;->i()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 409
    new-instance v2, Lgky;

    const-string v3, "Data de Programa\u00e7\u00e3o: "

    invoke-virtual {p1}, Lmlo;->g()Ljava/lang/String;

    move-result-object v4

    const-string v5, "yyyyMMdd"

    const-string v6, "dd/MM/yyyy"

    invoke-static {v4, v5, v6}, Lnak;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 411
    :cond_7
    new-instance v2, Lgky;

    const-string v3, "Data de In\u00edcio: "

    invoke-virtual {p1}, Lmlo;->g()Ljava/lang/String;

    move-result-object v4

    const-string v5, "yyyyMMdd"

    const-string v6, "dd/MM/yyyy"

    invoke-static {v4, v5, v6}, Lnak;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 417
    :cond_8
    invoke-virtual {p1}, Lmlo;->j()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Q"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 418
    new-instance v2, Lgky;

    const-string v3, "Periodicidade: "

    iget-object v4, p0, Lmmi;->a:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090804

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 420
    :cond_9
    new-instance v2, Lgky;

    const-string v3, "Periodicidade: "

    iget-object v4, p0, Lmmi;->a:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090803

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4
.end method

.method static synthetic d(Lmmi;)Lmqn;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lmmi;->c:Lmqn;

    return-object v0
.end method


# virtual methods
.method public a(Lmlo;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 79
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->w()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v3

    invoke-virtual {v3}, Lmiq;->f()Lmir;

    move-result-object v3

    invoke-virtual {v3}, Lmir;->C()Lipi;

    move-result-object v3

    const-string v4, "00000122"

    invoke-interface {v3, v4}, Lipi;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    or-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 80
    iget-object v0, p0, Lmmi;->c:Lmqn;

    new-instance v1, Lmmj;

    invoke-direct {v1, p0, p1}, Lmmj;-><init>(Lmmi;Lmlo;)V

    .line 116
    invoke-direct {p0, p1}, Lmmi;->b(Lmlo;)Lmlq;

    move-result-object v2

    .line 80
    invoke-virtual {v0, v1, v2}, Lmqn;->b(Lgkw;Lmlq;)V

    .line 190
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 79
    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    .line 118
    :cond_2
    new-instance v0, Lmml;

    invoke-direct {v0, p0, p1}, Lmml;-><init>(Lmmi;Lmlo;)V

    iput-object v0, p0, Lmmi;->f:Lbr/com/santander/dynamicauth/interfaces/DynamicAuthCallBack;

    .line 188
    invoke-virtual {p1}, Lmlo;->q()Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p0, v0}, Lmmi;->a(Ljava/util/HashMap;)V

    goto :goto_2
.end method
