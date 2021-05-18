.class public Ljcw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "investimentosFundos"

.field public static final b:Ljava/lang/String; = "investimentosCDB"

.field public static final c:Ljava/lang/String; = "LISTA_FUNDOS"

.field public static final d:Ljava/lang/String; = "LISTA_LCI"

.field public static final e:Ljava/lang/String; = "LISTA_CDB"

.field public static final f:Ljava/lang/String; = "CDB_FUNCIONARIO"

.field public static final g:Ljava/lang/String; = "FUNDOS"

.field public static final h:Ljava/lang/String; = "POUPANCA"

.field public static final i:Ljava/lang/String; = "CARDS"

.field public static final j:Ljava/lang/String; = "CDB_RECOMPENSA"

.field public static final k:Ljava/lang/String; = "CDB_VG_DIGITAL"

.field public static final l:Ljava/lang/String; = "PREVIDENCIA"

.field public static final m:Ljava/lang/String; = "CARRINHO_ABANDONADO"

.field private static final n:Ljava/lang/String; = "https://santander.custhelp.com/app/chat/chat_santander/p/203"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 225
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->C()Lipi;

    move-result-object v0

    .line 227
    const-string v1, "00000107"

    invoke-interface {v0, v1}, Lipi;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    invoke-static {p0}, Ljcw;->f(Landroid/app/Activity;)V

    .line 233
    :goto_0
    const-string v0, "Investimentos_MenuLateral_Investimentos_SubMenu_Acao"

    const-string v1, "MeusInvestimentos"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    return-void

    .line 230
    :cond_0
    invoke-static {p0}, Ljcw;->d(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 70
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->C()Lipi;

    move-result-object v0

    .line 71
    const-string v1, "00000107"

    invoke-interface {v0, v1}, Lipi;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 98
    invoke-static {p0}, Ljcw;->f(Landroid/app/Activity;)V

    .line 104
    :goto_1
    return-void

    .line 72
    :sswitch_0
    const-string v1, "investimentosFundos"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "investimentosCDB"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 74
    :pswitch_0
    const-string v0, "DeepLink_InvestimentosFundos"

    const-string v1, "DeepLink"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-static {}, Lzs;->a()Lzs;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 76
    invoke-static {}, Lgnz;->a()Lgnz;

    move-result-object v2

    invoke-virtual {v2}, Lgnz;->d()Lje;

    move-result-object v2

    .line 77
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v3

    invoke-virtual {v3}, Lmiq;->f()Lmir;

    move-result-object v3

    invoke-virtual {v3}, Lmir;->i()Ljava/lang/String;

    move-result-object v3

    .line 78
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v4

    invoke-virtual {v4}, Lnab;->f()Lji;

    move-result-object v4

    .line 79
    invoke-static {p0}, Ljcw;->h(Landroid/app/Activity;)Lks;

    move-result-object v5

    .line 80
    invoke-static {}, Lmzr;->a()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 81
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v7

    invoke-virtual {v7}, Lmiq;->f()Lmir;

    move-result-object v7

    invoke-virtual {v7}, Lmir;->j()Ljava/lang/String;

    move-result-object v7

    const-string v8, "1"

    .line 75
    invoke-virtual/range {v0 .. v8}, Lzs;->a(Landroid/content/Context;Lje;Ljava/lang/String;Lji;Lks;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 86
    :pswitch_1
    const-string v0, "DeepLink_InvestimentosCdb"

    const-string v1, "DeepLink"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lzs;->a()Lzs;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 88
    invoke-static {}, Lgnz;->a()Lgnz;

    move-result-object v2

    invoke-virtual {v2}, Lgnz;->d()Lje;

    move-result-object v2

    .line 89
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v3

    invoke-virtual {v3}, Lmiq;->f()Lmir;

    move-result-object v3

    invoke-virtual {v3}, Lmir;->i()Ljava/lang/String;

    move-result-object v3

    .line 90
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v4

    invoke-virtual {v4}, Lnab;->f()Lji;

    move-result-object v4

    .line 91
    invoke-static {p0}, Ljcw;->h(Landroid/app/Activity;)Lks;

    move-result-object v5

    .line 92
    invoke-static {}, Lmzr;->a()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 93
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v7

    invoke-virtual {v7}, Lmiq;->f()Lmir;

    move-result-object v7

    invoke-virtual {v7}, Lmir;->j()Ljava/lang/String;

    move-result-object v7

    const-string v8, "4"

    .line 87
    invoke-virtual/range {v0 .. v8}, Lzs;->a(Landroid/content/Context;Lje;Ljava/lang/String;Lji;Lks;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 102
    :cond_1
    invoke-static {p0}, Ljcw;->d(Landroid/app/Activity;)V

    goto/16 :goto_1

    .line 72
    nop

    :sswitch_data_0
    .sparse-switch
        -0x32b521 -> :sswitch_0
        0x19c0e86b -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Landroid/app/Activity;Ljdf;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 347
    invoke-static {}, Lzs;->a()Lzs;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 348
    invoke-static {}, Lgnz;->a()Lgnz;

    move-result-object v2

    invoke-virtual {v2}, Lgnz;->d()Lje;

    move-result-object v2

    .line 349
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v3

    invoke-virtual {v3}, Lmiq;->f()Lmir;

    move-result-object v3

    invoke-virtual {v3}, Lmir;->i()Ljava/lang/String;

    move-result-object v3

    .line 350
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v4

    invoke-virtual {v4}, Lnab;->f()Lji;

    move-result-object v4

    .line 351
    invoke-static {p0, p1}, Ljcw;->b(Landroid/app/Activity;Ljdf;)Lks;

    move-result-object v5

    .line 352
    invoke-static {}, Lmzr;->a()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 347
    invoke-virtual/range {v0 .. v6}, Lzs;->a(Landroid/content/Context;Lje;Ljava/lang/String;Lji;Lks;Ljava/lang/Boolean;)V

    .line 354
    return-void
.end method

.method public static a(Landroid/app/Activity;Z)V
    .locals 2

    .prologue
    .line 240
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->C()Lipi;

    move-result-object v0

    .line 242
    const-string v1, "00000107"

    invoke-interface {v0, v1}, Lipi;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    invoke-static {p0, p1}, Ljcw;->b(Landroid/app/Activity;Z)V

    .line 249
    :goto_0
    return-void

    .line 245
    :cond_0
    invoke-static {p0}, Ljcw;->e(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method private static b(Landroid/app/Activity;Ljdf;)Lks;
    .locals 1

    .prologue
    .line 361
    new-instance v0, Ljcx;

    invoke-direct {v0, p0, p1}, Ljcx;-><init>(Landroid/app/Activity;Ljdf;)V

    return-object v0
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 252
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->C()Lipi;

    move-result-object v0

    .line 254
    const-string v1, "00000107"

    invoke-interface {v0, v1}, Lipi;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    invoke-static {p0}, Ljcw;->f(Landroid/app/Activity;)V

    .line 259
    :goto_0
    const-string v0, "Investimentos_Home_Acao"

    const-string v1, "Investimentos"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    return-void

    .line 257
    :cond_0
    invoke-static {p0}, Ljcw;->d(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public static b(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 107
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->C()Lipi;

    move-result-object v0

    .line 109
    const-string v1, "00000107"

    invoke-interface {v0, v1}, Lipi;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 145
    invoke-static {p0}, Ljcw;->f(Landroid/app/Activity;)V

    .line 151
    :goto_1
    return-void

    .line 110
    :sswitch_0
    const-string v1, "LISTA_FUNDOS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "LISTA_LCI"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "LISTA_CDB"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 112
    :pswitch_0
    invoke-static {}, Lzs;->a()Lzs;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 113
    invoke-static {}, Lgnz;->a()Lgnz;

    move-result-object v2

    invoke-virtual {v2}, Lgnz;->d()Lje;

    move-result-object v2

    .line 114
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v3

    invoke-virtual {v3}, Lmiq;->f()Lmir;

    move-result-object v3

    invoke-virtual {v3}, Lmir;->i()Ljava/lang/String;

    move-result-object v3

    .line 115
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v4

    invoke-virtual {v4}, Lnab;->f()Lji;

    move-result-object v4

    .line 116
    invoke-static {p0}, Ljcw;->h(Landroid/app/Activity;)Lks;

    move-result-object v5

    .line 117
    invoke-static {}, Lmzr;->a()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 118
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v7

    invoke-virtual {v7}, Lmiq;->f()Lmir;

    move-result-object v7

    invoke-virtual {v7}, Lmir;->j()Ljava/lang/String;

    move-result-object v7

    const-string v8, "1"

    .line 112
    invoke-virtual/range {v0 .. v8}, Lzs;->a(Landroid/content/Context;Lje;Ljava/lang/String;Lji;Lks;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 123
    :pswitch_1
    invoke-static {}, Lzs;->a()Lzs;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 124
    invoke-static {}, Lgnz;->a()Lgnz;

    move-result-object v2

    invoke-virtual {v2}, Lgnz;->d()Lje;

    move-result-object v2

    .line 125
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v3

    invoke-virtual {v3}, Lmiq;->f()Lmir;

    move-result-object v3

    invoke-virtual {v3}, Lmir;->i()Ljava/lang/String;

    move-result-object v3

    .line 126
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v4

    invoke-virtual {v4}, Lnab;->f()Lji;

    move-result-object v4

    .line 127
    invoke-static {p0}, Ljcw;->h(Landroid/app/Activity;)Lks;

    move-result-object v5

    .line 128
    invoke-static {}, Lmzr;->a()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 129
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v7

    invoke-virtual {v7}, Lmiq;->f()Lmir;

    move-result-object v7

    invoke-virtual {v7}, Lmir;->j()Ljava/lang/String;

    move-result-object v7

    const-string v8, "5"

    .line 123
    invoke-virtual/range {v0 .. v8}, Lzs;->a(Landroid/content/Context;Lje;Ljava/lang/String;Lji;Lks;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 134
    :pswitch_2
    invoke-static {}, Lzs;->a()Lzs;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 135
    invoke-static {}, Lgnz;->a()Lgnz;

    move-result-object v2

    invoke-virtual {v2}, Lgnz;->d()Lje;

    move-result-object v2

    .line 136
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v3

    invoke-virtual {v3}, Lmiq;->f()Lmir;

    move-result-object v3

    invoke-virtual {v3}, Lmir;->i()Ljava/lang/String;

    move-result-object v3

    .line 137
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v4

    invoke-virtual {v4}, Lnab;->f()Lji;

    move-result-object v4

    .line 138
    invoke-static {p0}, Ljcw;->h(Landroid/app/Activity;)Lks;

    move-result-object v5

    .line 139
    invoke-static {}, Lmzr;->a()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 140
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v7

    invoke-virtual {v7}, Lmiq;->f()Lmir;

    move-result-object v7

    invoke-virtual {v7}, Lmir;->j()Ljava/lang/String;

    move-result-object v7

    const-string v8, "4"

    .line 134
    invoke-virtual/range {v0 .. v8}, Lzs;->a(Landroid/content/Context;Lje;Ljava/lang/String;Lji;Lks;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 149
    :cond_1
    invoke-static {p0}, Ljcw;->d(Landroid/app/Activity;)V

    goto/16 :goto_1

    .line 110
    :sswitch_data_0
    .sparse-switch
        0x161a13c5 -> :sswitch_0
        0x5d433525 -> :sswitch_2
        0x5d4356d6 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static b(Landroid/app/Activity;Z)V
    .locals 8

    .prologue
    .line 326
    invoke-static {}, Lzs;->a()Lzs;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 327
    invoke-static {}, Lgnz;->a()Lgnz;

    move-result-object v2

    invoke-virtual {v2}, Lgnz;->d()Lje;

    move-result-object v2

    .line 328
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v3

    invoke-virtual {v3}, Lmiq;->f()Lmir;

    move-result-object v3

    invoke-virtual {v3}, Lmir;->i()Ljava/lang/String;

    move-result-object v3

    .line 329
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v4

    invoke-virtual {v4}, Lnab;->f()Lji;

    move-result-object v4

    .line 330
    invoke-static {p0}, Ljcw;->h(Landroid/app/Activity;)Lks;

    move-result-object v5

    .line 331
    invoke-static {}, Lmzr;->a()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x1

    .line 326
    invoke-virtual/range {v0 .. v7}, Lzs;->a(Landroid/content/Context;Lje;Ljava/lang/String;Lji;Lks;Ljava/lang/Boolean;Z)V

    .line 332
    return-void
.end method

.method public static c(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 264
    new-instance v0, Lbfj;

    invoke-direct {v0}, Lbfj;-><init>()V

    .line 265
    const-string v1, "Este canal de atendimento \u00e9 exclusivo para cancelamento de"

    invoke-virtual {v0, v1}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    .line 266
    const-string v1, " Aplica\u00e7\u00f5es"

    invoke-virtual {v0, v1}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    .line 268
    const-string v1, " contratadas."

    invoke-virtual {v0, v1}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    .line 271
    new-instance v1, Lhno;

    invoke-direct {v1, p0}, Lhno;-><init>(Landroid/content/Context;)V

    const-string v2, "Investimentos"

    .line 272
    invoke-virtual {v1, v2}, Lhno;->a(Ljava/lang/String;)Lhno;

    move-result-object v1

    const-string v2, "Cancelamento de Aplica\u00e7\u00f5es"

    .line 273
    invoke-virtual {v1, v2}, Lhno;->b(Ljava/lang/String;)Lhno;

    move-result-object v1

    const v2, 0x7f0203be

    .line 274
    invoke-virtual {v1, v2}, Lhno;->a(I)Lhno;

    move-result-object v1

    .line 275
    invoke-virtual {v1, v0}, Lhno;->b(Landroid/text/Spanned;)Lhno;

    move-result-object v0

    const-string v1, "seg \u00e0 sex das 08:00 \u00e0s 20:00hrs"

    .line 276
    invoke-virtual {v0, v1}, Lhno;->d(Ljava/lang/String;)Lhno;

    move-result-object v0

    const-string v1, "https://santander.custhelp.com/app/chat/chat_santander/p/203"

    .line 277
    invoke-virtual {v0, v1}, Lhno;->e(Ljava/lang/String;)Lhno;

    move-result-object v0

    .line 278
    invoke-static {}, Lhxi;->f()Lhnl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhno;->a(Lhnl;)Lhno;

    move-result-object v0

    .line 279
    invoke-virtual {v0}, Lhno;->a()Lhnp;

    move-result-object v0

    .line 280
    invoke-virtual {v0}, Lhnp;->a()V

    .line 282
    return-void
.end method

.method public static c(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 13

    .prologue
    .line 156
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->C()Lipi;

    move-result-object v0

    .line 157
    const-string v1, "00000107"

    invoke-interface {v0, v1}, Lipi;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 215
    invoke-static {p0}, Ljcw;->f(Landroid/app/Activity;)V

    .line 222
    :goto_1
    return-void

    .line 159
    :sswitch_0
    const-string v1, "CARRINHO_ABANDONADO"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "CDB_FUNCIONARIO"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "FUNDOS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "POUPANCA"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v1, "CDB_RECOMPENSA"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v1, "CARDS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string v1, "CDB_VG_DIGITAL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_7
    const-string v1, "PREVIDENCIA"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    .line 161
    :pswitch_0
    invoke-static {p0}, Ljcw;->g(Landroid/app/Activity;)V

    goto :goto_1

    .line 165
    :pswitch_1
    invoke-static {}, Lzs;->a()Lzs;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 166
    invoke-static {}, Lgnz;->a()Lgnz;

    move-result-object v2

    invoke-virtual {v2}, Lgnz;->d()Lje;

    move-result-object v2

    .line 167
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v3

    invoke-virtual {v3}, Lmiq;->f()Lmir;

    move-result-object v3

    invoke-virtual {v3}, Lmir;->i()Ljava/lang/String;

    move-result-object v3

    .line 168
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v4

    invoke-virtual {v4}, Lnab;->f()Lji;

    move-result-object v4

    .line 169
    invoke-static {p0}, Ljcw;->h(Landroid/app/Activity;)Lks;

    move-result-object v5

    .line 170
    invoke-static {}, Lmzr;->a()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 171
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v7

    invoke-virtual {v7}, Lmiq;->f()Lmir;

    move-result-object v7

    invoke-virtual {v7}, Lmir;->j()Ljava/lang/String;

    move-result-object v7

    const-string v8, "4"

    .line 165
    invoke-virtual/range {v0 .. v8}, Lzs;->a(Landroid/content/Context;Lje;Ljava/lang/String;Lji;Lks;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 178
    :pswitch_2
    invoke-static {}, Lzs;->a()Lzs;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 179
    invoke-static {}, Lgnz;->a()Lgnz;

    move-result-object v2

    invoke-virtual {v2}, Lgnz;->d()Lje;

    move-result-object v2

    .line 180
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v3

    invoke-virtual {v3}, Lmiq;->f()Lmir;

    move-result-object v3

    invoke-virtual {v3}, Lmir;->i()Ljava/lang/String;

    move-result-object v3

    .line 181
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v4

    invoke-virtual {v4}, Lnab;->f()Lji;

    move-result-object v4

    .line 182
    invoke-static {p0}, Ljcw;->h(Landroid/app/Activity;)Lks;

    move-result-object v5

    .line 183
    invoke-static {}, Lmzr;->a()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 184
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v7

    invoke-virtual {v7}, Lmiq;->f()Lmir;

    move-result-object v7

    invoke-virtual {v7}, Lmir;->j()Ljava/lang/String;

    move-result-object v7

    const-string v8, "1"

    .line 178
    invoke-virtual/range {v0 .. v8}, Lzs;->a(Landroid/content/Context;Lje;Ljava/lang/String;Lji;Lks;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 192
    :pswitch_3
    invoke-static {}, Lzs;->a()Lzs;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 193
    invoke-static {}, Lgnz;->a()Lgnz;

    move-result-object v2

    invoke-virtual {v2}, Lgnz;->d()Lje;

    move-result-object v2

    .line 194
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v3

    invoke-virtual {v3}, Lmiq;->f()Lmir;

    move-result-object v3

    invoke-virtual {v3}, Lmir;->i()Ljava/lang/String;

    move-result-object v3

    .line 195
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v4

    invoke-virtual {v4}, Lnab;->f()Lji;

    move-result-object v4

    .line 196
    invoke-static {p0}, Ljcw;->h(Landroid/app/Activity;)Lks;

    move-result-object v5

    .line 197
    invoke-static {}, Lmzr;->a()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 198
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v7

    invoke-virtual {v7}, Lmiq;->f()Lmir;

    move-result-object v7

    invoke-virtual {v7}, Lmir;->j()Ljava/lang/String;

    move-result-object v7

    .line 192
    invoke-virtual/range {v0 .. v7}, Lzs;->c(Landroid/content/Context;Lje;Ljava/lang/String;Lji;Lks;Ljava/lang/Boolean;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 202
    :pswitch_4
    invoke-static {}, Lzs;->a()Lzs;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 203
    invoke-static {}, Lgnz;->a()Lgnz;

    move-result-object v2

    invoke-virtual {v2}, Lgnz;->d()Lje;

    move-result-object v2

    .line 204
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v3

    invoke-virtual {v3}, Lmiq;->f()Lmir;

    move-result-object v3

    invoke-virtual {v3}, Lmir;->i()Ljava/lang/String;

    move-result-object v3

    .line 205
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v4

    invoke-virtual {v4}, Lnab;->f()Lji;

    move-result-object v4

    .line 206
    invoke-static {p0}, Ljcw;->h(Landroid/app/Activity;)Lks;

    move-result-object v5

    .line 207
    invoke-static {}, Lmzr;->a()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 208
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v7

    invoke-virtual {v7}, Lmiq;->f()Lmir;

    move-result-object v7

    invoke-virtual {v7}, Lmir;->j()Ljava/lang/String;

    move-result-object v7

    const-string v8, "4"

    const-string v9, "BP"

    const-string v10, "0011"

    const-string v11, "26"

    const-string v12, "CDB DI DIGITAL"

    .line 202
    invoke-virtual/range {v0 .. v12}, Lzs;->a(Landroid/content/Context;Lje;Ljava/lang/String;Lji;Lks;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 219
    :cond_1
    invoke-static {p0}, Ljcw;->d(Landroid/app/Activity;)V

    goto/16 :goto_1

    .line 159
    :sswitch_data_0
    .sparse-switch
        -0x5361e583 -> :sswitch_1
        -0xa9b4d89 -> :sswitch_4
        -0x1809e98 -> :sswitch_6
        0x3ceef43 -> :sswitch_5
        0x30b65584 -> :sswitch_7
        0x3197206c -> :sswitch_0
        0x5efc4d25 -> :sswitch_3
        0x7c458769 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static d(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 285
    const v0, 0x7f09096a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f09096b

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/investimentos/presentation/MeusInvestimentosActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 288
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 289
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 290
    return-void
.end method

.method private static e(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 296
    .line 297
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->q()Lgvx;

    move-result-object v0

    invoke-interface {v0}, Lgvx;->a()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/contacorrente/domain/Conta;

    invoke-virtual {v0}, Lcom/santander/app/contacorrente/domain/Conta;->getSaldoTotalPoupanca()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 299
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 300
    const-string v1, "tipo_produto"

    sget-object v2, Ljda;->POUPANCA:Ljda;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 307
    :goto_0
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 308
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 309
    return-void

    .line 302
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 304
    const-string v1, "type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 305
    const-string v1, "positionFundo"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private static f(Landroid/app/Activity;)V
    .locals 7

    .prologue
    .line 312
    const v0, 0x7f09096a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f09096c

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-static {}, Lzs;->a()Lzs;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 315
    invoke-static {}, Lgnz;->a()Lgnz;

    move-result-object v2

    invoke-virtual {v2}, Lgnz;->d()Lje;

    move-result-object v2

    .line 316
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v3

    invoke-virtual {v3}, Lmiq;->f()Lmir;

    move-result-object v3

    invoke-virtual {v3}, Lmir;->i()Ljava/lang/String;

    move-result-object v3

    .line 317
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v4

    invoke-virtual {v4}, Lnab;->f()Lji;

    move-result-object v4

    const/4 v5, 0x0

    .line 318
    invoke-static {p0, v5}, Ljcw;->b(Landroid/app/Activity;Ljdf;)Lks;

    move-result-object v5

    .line 319
    invoke-static {}, Lmzr;->a()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 314
    invoke-virtual/range {v0 .. v6}, Lzs;->a(Landroid/content/Context;Lje;Ljava/lang/String;Lji;Lks;Ljava/lang/Boolean;)V

    .line 320
    return-void
.end method

.method private static g(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 339
    :try_start_0
    invoke-static {}, Lzs;->a()Lzs;

    move-result-object v0

    invoke-virtual {v0, p0}, Lzs;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    :goto_0
    return-void

    .line 340
    :catch_0
    move-exception v0

    .line 341
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static h(Landroid/app/Activity;)Lks;
    .locals 1

    .prologue
    .line 357
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljcw;->b(Landroid/app/Activity;Ljdf;)Lks;

    move-result-object v0

    return-object v0
.end method
