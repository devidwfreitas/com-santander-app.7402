.class public Lhav;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "Ocorreu um erro de comunica\u00e7\u00e3o. Por favor, tente novamente em instantes."


# instance fields
.field private b:Landroid/app/AlertDialog;

.field private c:Lmip;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Lhav;->c:Lmip;

    .line 51
    return-void
.end method

.method public static a(Lfvu;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 273
    const-string v2, "Ocorreu um erro de comunica\u00e7\u00e3o. Por favor, tente novamente em instantes."

    .line 274
    const/4 v0, 0x0

    .line 276
    if-eqz p0, :cond_2

    .line 277
    invoke-virtual {p0}, Lfvu;->getFaultstring()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 278
    invoke-virtual {p0}, Lfvu;->getFaultstring()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, "error sessao"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 279
    invoke-virtual {p0}, Lfvu;->getFaultstring()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lhav;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 280
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lfvu;->getFaultstring()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 282
    const/4 v0, 0x1

    .line 287
    :goto_0
    invoke-virtual {p0}, Lfvu;->getErrorDetail()Lfvv;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lfvu;->getErrorDetail()Lfvv;

    move-result-object v2

    invoke-virtual {v2}, Lfvv;->d()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    .line 289
    invoke-virtual {p0}, Lfvu;->getErrorDetail()Lfvv;

    move-result-object v0

    invoke-virtual {v0}, Lfvv;->d()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NENHUM AGENDAMENTO ENCONTRADO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    invoke-virtual {p0}, Lfvu;->getErrorDetail()Lfvv;

    move-result-object v0

    invoke-virtual {v0}, Lfvv;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhav;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 295
    :cond_0
    :goto_1
    return-object v1

    :cond_1
    move-object v1, v2

    goto :goto_0

    :cond_2
    move-object v1, v2

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 224
    const-string v0, "Ocorreu um erro de comunica\u00e7\u00e3o. Por favor, tente novamente em instantes."

    .line 225
    if-nez p0, :cond_0

    .line 254
    :goto_0
    return-object v0

    .line 229
    :cond_0
    const-string v1, "00332163000010001205 NAO EXISTE NA TABELA DE BGDTMAE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 230
    const-string p0, "Ag\u00eancia ou Conta inv\u00e1lidos. Por favor, verifique os datos informados"

    :cond_1
    :goto_1
    move-object v0, p0

    .line 254
    goto :goto_0

    .line 231
    :cond_2
    const-string v1, "Error orquestracao"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 232
    const-string p0, "Ocorreu um erro no sistema. Por favor, entre em contato com a Superlinha ou fale com seu gerente"

    goto :goto_1

    .line 233
    :cond_3
    const-string v1, "@"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 235
    :cond_4
    const-string v1, "@"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "|"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 236
    const-string v0, "\\|"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 237
    array-length v1, v0

    .line 238
    add-int/lit8 v1, v1, -0x1

    aget-object p0, v0, v1

    goto :goto_1

    .line 240
    :cond_5
    const-string v1, "@"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 241
    const-string v0, "\\-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 242
    array-length v1, v0

    .line 243
    const/4 v2, 0x2

    if-le v1, v2, :cond_6

    .line 244
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, v1, -0x2

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object p0, v0

    .line 249
    goto :goto_1

    .line 246
    :cond_6
    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    goto :goto_2

    .line 249
    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "internal error"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "webserviceexception"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 250
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[1:erro ao comunicar com o mq]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "soapfaultexception"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 251
    :cond_8
    const-string p0, "Ocorreu um erro de comunica\u00e7\u00e3o. Por favor, tente novamente em instantes."

    goto/16 :goto_1

    :cond_9
    move-object p0, v0

    goto/16 :goto_1
.end method

.method private static a(Landroid/app/Activity;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 258
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->o()V

    .line 260
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/homenaologada/presentation/HomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 262
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 263
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 264
    const-string v1, "errorSession"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 265
    const-string v1, "reopen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 266
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 268
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 269
    return-void
.end method

.method public static a(Landroid/app/Activity;Lgkt;)V
    .locals 5

    .prologue
    const/high16 v4, 0x4000000

    .line 382
    .line 384
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0903b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 385
    invoke-virtual {p1}, Lgkt;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lgkt;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 386
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0901b7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 382
    invoke-static {p0, v0, v1, v2}, Lmxn;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    invoke-virtual {p1}, Lgkt;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 403
    :goto_0
    return-void

    .line 390
    :cond_0
    invoke-virtual {p1}, Lgkt;->getAction()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_1
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 392
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 390
    :pswitch_1
    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :pswitch_2
    const-string v2, "3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    .line 395
    :pswitch_3
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->o()V

    .line 396
    invoke-static {}, Ljcd;->a()V

    .line 397
    invoke-static {}, Laqt;->a()V

    .line 399
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/homenaologada/presentation/HomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 390
    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static b(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 211
    invoke-static {p1}, Lhav;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lmxn;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method public static c(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 215
    invoke-static {p0, p1}, Lmxn;->b(Landroid/app/Activity;Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method public static d(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 219
    invoke-static {p0, p1}, Lmxn;->e(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    .line 220
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lfvu;Z)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 72
    .line 76
    const-string v0, "Ocorreu um erro de comunica\u00e7\u00e3o. Por favor, tente novamente em instantes."

    .line 77
    const-string v3, "Ocorreu um erro de comunica\u00e7\u00e3o. Por favor, tente novamente em instantes."

    .line 80
    if-eqz p2, :cond_b

    .line 81
    invoke-virtual {p2}, Lfvu;->getFaultstring()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 82
    invoke-virtual {p2}, Lfvu;->getFaultstring()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "error sessao"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v3, v0

    move v4, v1

    move v5, v2

    move v0, v1

    .line 101
    :goto_0
    invoke-virtual {p2}, Lfvu;->getErrorDetail()Lfvv;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {p2}, Lfvu;->getErrorDetail()Lfvv;

    move-result-object v6

    invoke-virtual {v6}, Lfvv;->d()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    if-nez v0, :cond_0

    .line 103
    invoke-virtual {p2}, Lfvu;->getErrorDetail()Lfvv;

    move-result-object v0

    invoke-virtual {v0}, Lfvv;->d()Ljava/lang/String;

    move-result-object v0

    const-string v6, "NENHUM AGENDAMENTO ENCONTRADO"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v2, v1

    .line 118
    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    .line 120
    if-nez v5, :cond_9

    .line 122
    if-eqz p3, :cond_1

    .line 123
    if-eqz v4, :cond_8

    .line 124
    invoke-static {p1, v3}, Lmxn;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 134
    :cond_1
    :goto_2
    return-void

    .line 86
    :cond_2
    invoke-virtual {p2}, Lfvu;->getFaultstring()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "invalid response datahash"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 88
    const v0, 0x7f09051e

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    move v4, v2

    move v5, v1

    move v0, v1

    .line 89
    goto :goto_0

    .line 91
    :cond_3
    invoke-virtual {p2}, Lfvu;->getFaultstring()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lhav;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 92
    const-string v5, "Erro ao comunicar com o MQ"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v0, v1

    move v4, v1

    move v5, v1

    .line 93
    goto :goto_0

    .line 94
    :cond_4
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {p2}, Lfvu;->getFaultstring()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    move v0, v2

    move-object v3, v4

    move v5, v1

    move v4, v1

    .line 96
    goto :goto_0

    .line 107
    :cond_5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lfsw;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lfsx;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 108
    :cond_6
    invoke-virtual {p2}, Lfvu;->getErrorDetail()Lfvv;

    move-result-object v0

    invoke-virtual {v0}, Lfvv;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NAO EXISTEM REGISTROS PARA A PESQUISA SOLICITADA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 109
    const-string v3, "N\u00e3o existem favorecidos cadastrados."

    goto :goto_1

    .line 111
    :cond_7
    invoke-virtual {p2}, Lfvu;->getErrorDetail()Lfvv;

    move-result-object v0

    invoke-virtual {v0}, Lfvv;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhav;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 126
    :cond_8
    invoke-static {p1, v3}, Lmxn;->b(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 131
    :cond_9
    invoke-static {p1}, Lhav;->a(Landroid/app/Activity;)V

    goto/16 :goto_2

    :cond_a
    move-object v3, v0

    move v4, v1

    move v5, v1

    move v0, v1

    goto/16 :goto_0

    :cond_b
    move-object v3, v0

    move v4, v1

    move v5, v1

    goto/16 :goto_1
.end method

.method public a(Landroid/app/Activity;Lfvu;ZZ)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 150
    .line 154
    const-string v0, "Ocorreu um erro de comunica\u00e7\u00e3o. Por favor, tente novamente em instantes."

    .line 157
    if-eqz p2, :cond_9

    .line 158
    invoke-virtual {p2}, Lfvu;->getFaultstring()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 159
    invoke-virtual {p2}, Lfvu;->getFaultstring()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "error sessao"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v3, v0

    move v4, v1

    move v5, v2

    move v0, v1

    .line 176
    :goto_0
    invoke-virtual {p2}, Lfvu;->getErrorDetail()Lfvv;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {p2}, Lfvu;->getErrorDetail()Lfvv;

    move-result-object v6

    invoke-virtual {v6}, Lfvv;->d()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    if-nez v0, :cond_0

    .line 178
    invoke-virtual {p2}, Lfvu;->getErrorDetail()Lfvv;

    move-result-object v0

    invoke-virtual {v0}, Lfvv;->d()Ljava/lang/String;

    move-result-object v0

    const-string v6, "NENHUM AGENDAMENTO ENCONTRADO"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v2, v1

    .line 187
    :cond_0
    :goto_1
    if-eqz v2, :cond_2

    .line 189
    if-nez v5, :cond_7

    .line 191
    if-eqz p3, :cond_2

    .line 192
    if-nez p4, :cond_1

    if-eqz v4, :cond_6

    .line 193
    :cond_1
    invoke-static {p1, v3}, Lmxn;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 208
    :cond_2
    :goto_2
    return-void

    .line 163
    :cond_3
    invoke-virtual {p2}, Lfvu;->getFaultstring()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "hash validation error"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 165
    const v0, 0x7f09051e

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    move v4, v2

    move v5, v1

    move v0, v1

    .line 166
    goto :goto_0

    .line 168
    :cond_4
    invoke-virtual {p2}, Lfvu;->getFaultstring()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lhav;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 169
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    move v0, v2

    move v4, v1

    move v5, v1

    .line 171
    goto :goto_0

    .line 181
    :cond_5
    invoke-virtual {p2}, Lfvu;->getErrorDetail()Lfvv;

    move-result-object v0

    invoke-virtual {v0}, Lfvv;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhav;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 195
    :cond_6
    invoke-static {p1, v3}, Lmxn;->b(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_2

    .line 205
    :cond_7
    invoke-static {p1}, Lhav;->a(Landroid/app/Activity;)V

    goto :goto_2

    :cond_8
    move-object v3, v0

    move v4, v1

    move v5, v1

    move v0, v1

    goto :goto_0

    :cond_9
    move-object v3, v0

    move v4, v1

    move v5, v1

    goto :goto_1
.end method

.method public a(Landroid/app/Activity;Lfwn;)V
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p2}, Lfwn;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lmxn;->b(Landroid/app/Activity;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    invoke-static {p1, p2}, Lmxn;->b(Landroid/app/Activity;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public e(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 299
    invoke-static {p1, v1}, Lmzq;->a(Landroid/app/Activity;Z)V

    .line 300
    new-instance v4, Landroid/app/Dialog;

    const v0, 0x7f0b0224

    invoke-direct {v4, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 301
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 302
    invoke-virtual {v4, p1}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 303
    const v0, 0x7f04016b

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 304
    invoke-virtual {v4, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 305
    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v1, 0x7f0b021e

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 306
    new-instance v0, Lmyg;

    invoke-direct {v0, p1}, Lmyg;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 307
    new-instance v0, Lmyh;

    invoke-direct {v0, p1}, Lmyh;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 309
    const v0, 0x7f10071d

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 310
    const v1, 0x7f10055e

    invoke-virtual {v4, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 311
    const v2, 0x7f10071e

    invoke-virtual {v4, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 312
    const v3, 0x7f10071f

    invoke-virtual {v4, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 314
    const-string v5, "Alerta"

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    const-string v0, "Ok"

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 317
    const-string v0, "Esqueci a senha"

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 319
    new-instance v0, Lhaw;

    invoke-direct {v0, p0, v4}, Lhaw;-><init>(Lhav;Landroid/app/Dialog;)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    new-instance v0, Lhax;

    invoke-direct {v0, p0, p1}, Lhax;-><init>(Lhav;Landroid/app/Activity;)V

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    iget-object v0, p0, Lhav;->c:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->e()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 342
    :cond_0
    :try_start_0
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    :goto_0
    return-void

    .line 343
    :catch_0
    move-exception v0

    .line 344
    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Erro showLoading"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public f(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 349
    invoke-static {p1, v1}, Lmzq;->a(Landroid/app/Activity;Z)V

    .line 350
    new-instance v3, Landroid/app/Dialog;

    const v0, 0x7f0b0224

    invoke-direct {v3, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 351
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 352
    invoke-virtual {v3, p1}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 353
    const v0, 0x7f04016f

    invoke-virtual {v3, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 354
    invoke-virtual {v3, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 355
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v1, 0x7f0b021e

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 356
    new-instance v0, Lmyg;

    invoke-direct {v0, p1}, Lmyg;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v3, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 357
    new-instance v0, Lmyh;

    invoke-direct {v0, p1}, Lmyh;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v3, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 359
    const v0, 0x7f10071d

    invoke-virtual {v3, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 360
    const v1, 0x7f100720

    invoke-virtual {v3, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 361
    const v2, 0x7f10071c

    invoke-virtual {v3, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 363
    const-string v4, "Alerta"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    const-string v0, "Ok"

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 367
    new-instance v0, Lhay;

    invoke-direct {v0, p0, v3}, Lhay;-><init>(Lhav;Landroid/app/Dialog;)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    :try_start_0
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    :goto_0
    return-void

    .line 376
    :catch_0
    move-exception v0

    .line 377
    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Erro showLoading"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
