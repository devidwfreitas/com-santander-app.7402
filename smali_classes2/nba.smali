.class public Lnba;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lmwy;

.field private b:Ljava/lang/Boolean;

.field private c:Ljava/lang/Boolean;

.field private d:Ljava/lang/Boolean;

.field private e:Ljava/lang/Boolean;

.field private f:Ljava/lang/Boolean;

.field private g:Ljava/lang/Boolean;

.field private h:Ljava/lang/Boolean;

.field private i:Ljava/lang/Boolean;

.field private j:Ljava/lang/Boolean;

.field private k:Ljava/lang/Boolean;

.field private l:Ljava/lang/Boolean;

.field private m:Ljava/lang/Boolean;

.field private n:Ljava/lang/Boolean;

.field private o:Ljava/lang/Boolean;

.field private p:Ljava/lang/Boolean;

.field private q:Ljava/lang/Boolean;

.field private r:Ljava/lang/Boolean;

.field private s:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lmwy;Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lnba;->a:Lmwy;

    .line 32
    invoke-virtual {p1}, Lmwy;->c()Live;

    move-result-object v0

    invoke-virtual {v0}, Live;->b()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lnba;->q:Ljava/lang/Boolean;

    .line 34
    const-string v0, "qrPreferences"

    .line 35
    invoke-virtual {p2, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 36
    invoke-static {}, Lmzr;->n()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 35
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lnba;->p:Ljava/lang/Boolean;

    .line 38
    sget-object v0, Lnbc;->BLOQUEIO_CLIENTE:Lnbc;

    .line 39
    invoke-virtual {v0}, Lnbc;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 40
    invoke-static {}, Lmzr;->n()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 39
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lnba;->c:Ljava/lang/Boolean;

    .line 42
    sget-object v0, Lnbc;->APARELHO_NAO_HABILITADO:Lnbc;

    .line 43
    invoke-virtual {v0}, Lnbc;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 44
    invoke-static {}, Lmzr;->n()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 43
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lnba;->d:Ljava/lang/Boolean;

    .line 46
    sget-object v0, Lnbc;->ID_CANCELADO:Lnbc;

    .line 47
    invoke-virtual {v0}, Lnbc;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 48
    invoke-static {}, Lmzr;->n()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 47
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lnba;->e:Ljava/lang/Boolean;

    .line 50
    sget-object v0, Lnbc;->ID_NAO_HABILITADO:Lnbc;

    .line 51
    invoke-virtual {v0}, Lnbc;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 52
    invoke-static {}, Lmzr;->n()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 51
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lnba;->b:Ljava/lang/Boolean;

    .line 54
    sget-object v0, Lnat;->VER_MENSAGEM_SMS:Lnat;

    invoke-virtual {v0}, Lnat;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 55
    invoke-static {}, Lmzr;->n()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 54
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lnba;->s:Ljava/lang/Boolean;

    .line 57
    iget-object v0, p0, Lnba;->s:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lnba;->f:Ljava/lang/Boolean;

    .line 63
    :goto_0
    sget-object v0, Lnat;->VER_MENSAGEM_QR:Lnat;

    invoke-virtual {v0}, Lnat;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 64
    invoke-static {}, Lmzr;->n()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 63
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lnba;->g:Ljava/lang/Boolean;

    .line 66
    sget-object v0, Lnat;->VER_MAIS_TARDE:Lnat;

    .line 67
    invoke-virtual {v0}, Lnat;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 68
    invoke-static {}, Lmzr;->n()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 67
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lnba;->o:Ljava/lang/Boolean;

    .line 70
    invoke-virtual {p1}, Lmwy;->c()Live;

    move-result-object v0

    invoke-virtual {v0}, Live;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lalb;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lnba;->r:Ljava/lang/Boolean;

    .line 72
    iget-object v0, p0, Lnba;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    invoke-virtual {p1}, Lmwy;->d()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 72
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lnba;->i:Ljava/lang/Boolean;

    .line 75
    iget-object v0, p0, Lnba;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    invoke-virtual {p1}, Lmwy;->e()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 75
    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lnba;->j:Ljava/lang/Boolean;

    .line 78
    iget-object v0, p0, Lnba;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 79
    invoke-virtual {p1}, Lmwy;->h()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 78
    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lnba;->m:Ljava/lang/Boolean;

    .line 81
    invoke-virtual {p1}, Lmwy;->g()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lnba;->l:Ljava/lang/Boolean;

    .line 83
    invoke-virtual {p1}, Lmwy;->f()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lnba;->k:Ljava/lang/Boolean;

    .line 85
    iget-object v0, p0, Lnba;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 86
    invoke-virtual {p1}, Lmwy;->j()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 85
    :goto_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lnba;->n:Ljava/lang/Boolean;

    .line 88
    invoke-virtual {p1}, Lmwy;->k()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lnba;->h:Ljava/lang/Boolean;

    .line 90
    invoke-virtual {p1}, Lmwy;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 91
    const-string v0, "ACAO_TRANSACIONAL"

    invoke-virtual {p1}, Lmwy;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 92
    invoke-virtual {p1}, Lmwy;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnaz;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :goto_5
    return-void

    .line 60
    :cond_0
    invoke-virtual {p1}, Lmwy;->i()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lnba;->f:Ljava/lang/Boolean;

    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 73
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 76
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 79
    goto :goto_3

    :cond_4
    move v1, v2

    .line 86
    goto :goto_4

    .line 94
    :cond_5
    const-string v0, "ACAO_TRANSACIONAL"

    const-string v1, "Acao Transacional NULA."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 247
    sget-object v0, Lnaz;->OFERTAR_ID_TELA_OFERTA_ATIVACAO_CSO:Lnaz;

    invoke-virtual {v0}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lnaz;->OFERTAR_ID_CSO_TRANSACIONAL:Lnaz;

    .line 248
    invoke-virtual {v0}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lnaz;->MODO_CONSULTIVO_TELA_06_APARELHO_NAO_HABILITADO:Lnaz;

    .line 249
    invoke-virtual {v0}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lnaz;->CONVERSAO_ID_OBRIGATORIA_TELA_41:Lnaz;

    .line 250
    invoke-virtual {v0}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lnaz;->ID_CANCELADO_TELA_51_OU_MODO_CONSULTIVO:Lnaz;

    .line 251
    invoke-virtual {v0}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lnaz;->ATIVACAO_POR_SMS_TELA_44_OU_MODO_CONSULTIVO:Lnaz;

    .line 252
    invoke-virtual {v0}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lnaz;->HABILITAR_ID_NOVAMENTE_TELA_50_OU_MODO_CONSULTIVO:Lnaz;

    .line 253
    invoke-virtual {v0}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lnaz;->HABILITACAO_ATM:Lnaz;

    .line 254
    invoke-virtual {v0}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lnaz;->CONVERSAO_ID_OBRIGATORIA_TELA_41_ATIVACAO_CSO:Lnaz;

    .line 255
    invoke-virtual {v0}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lnaz;->OFERTAR_ID_MODO_CONSULTIVO_TELA_02_ID_NAO_HABILITADO:Lnaz;

    .line 256
    invoke-virtual {v0}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lnaz;->MODO_CONSULTIVO_TELA_06_APARELHO_NAO_HABILITADO_APARELHO_PENDENTE:Lnaz;

    .line 257
    invoke-virtual {v0}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lnaz;->HOME_CONSULTIVA:Lnaz;

    .line 258
    invoke-virtual {v0}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 247
    :goto_0
    return v0

    .line 258
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lnba;->a:Lmwy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnba;->a:Lmwy;

    .line 100
    invoke-virtual {v0}, Lmwy;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnba;->a:Lmwy;

    .line 101
    invoke-virtual {v0}, Lmwy;->c()Live;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnba;->a:Lmwy;

    .line 102
    invoke-virtual {v0}, Lmwy;->b()Lmwx;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 99
    :goto_0
    return v0

    .line 102
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 106
    sget-object v0, Lnaz;->MODO_CONSULTIVO_TELA_06_APARELHO_NAO_HABILITADO_APARELHO_PENDENTE:Lnaz;

    invoke-virtual {v0}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnba;->a:Lmwy;

    invoke-virtual {v1}, Lmwy;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnba;->d:Ljava/lang/Boolean;

    .line 107
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnba;->k:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 106
    :goto_0
    return v0

    .line 107
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 111
    sget-object v0, Lnaz;->CONVERSAO_ID_OBRIGATORIA_TELA_41:Lnaz;

    invoke-virtual {v0}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnba;->a:Lmwy;

    invoke-virtual {v1}, Lmwy;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lnaz;->CONVERSAO_ID_OBRIGATORIA_TELA_41_ATIVACAO_CSO:Lnaz;

    .line 112
    invoke-virtual {v0}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnba;->a:Lmwy;

    invoke-virtual {v1}, Lmwy;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 111
    :goto_0
    return v0

    .line 112
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 116
    sget-object v0, Lnaz;->OFERTAR_ID_TELA_OFERTA_ATIVACAO_CSO:Lnaz;

    invoke-virtual {v0}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnba;->a:Lmwy;

    invoke-virtual {v1}, Lmwy;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lnaz;->OFERTAR_ID_CSO_TRANSACIONAL:Lnaz;

    .line 117
    invoke-virtual {v0}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnba;->a:Lmwy;

    invoke-virtual {v1}, Lmwy;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lnba;->p:Ljava/lang/Boolean;

    .line 118
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 116
    :goto_0
    return v0

    .line 118
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 122
    sget-object v0, Lnaz;->OFERTAR_ID_TELA_OFERTA_ATIVACAO_CSO:Lnaz;

    invoke-virtual {v0}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnba;->a:Lmwy;

    invoke-virtual {v1}, Lmwy;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnba;->p:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lnaz;->TELA_OFERTA_ATIVACAO_CSO:Lnaz;

    .line 123
    invoke-virtual {v0}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnba;->a:Lmwy;

    invoke-virtual {v1}, Lmwy;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 122
    :goto_0
    return v0

    .line 123
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 127
    sget-object v0, Lnaz;->ATIVACAO_POR_SMS_TELA_44_OU_MODO_CONSULTIVO:Lnaz;

    invoke-virtual {v0}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnba;->a:Lmwy;

    invoke-virtual {v1}, Lmwy;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnba;->f:Ljava/lang/Boolean;

    .line 128
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 127
    :goto_0
    return v0

    .line 128
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 132
    sget-object v0, Lnaz;->OFERTAR_ID_CSO_TRANSACIONAL:Lnaz;

    invoke-virtual {v0}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnba;->a:Lmwy;

    invoke-virtual {v1}, Lmwy;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnba;->p:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lnaz;->CSO_TRANSACIONAL:Lnaz;

    .line 133
    invoke-virtual {v0}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnba;->a:Lmwy;

    invoke-virtual {v1}, Lmwy;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 132
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 133
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 137
    sget-object v0, Lnaz;->TRANSACIONAL_COM_ID_OU_OTIMIZACAO:Lnaz;

    invoke-virtual {v0}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnba;->a:Lmwy;

    invoke-virtual {v1}, Lmwy;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnba;->r:Ljava/lang/Boolean;

    .line 138
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 137
    :goto_0
    return v0

    .line 138
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Z
    .locals 2

    .prologue
    .line 142
    sget-object v0, Lnaz;->MODO_CONSULTIVO_TELA_06_APARELHO_NAO_HABILITADO:Lnaz;

    invoke-virtual {v0}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnba;->a:Lmwy;

    invoke-virtual {v1}, Lmwy;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lnaz;->HABILITAR_ID_NOVAMENTE_TELA_50_OU_MODO_CONSULTIVO:Lnaz;

    .line 143
    invoke-virtual {v0}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnba;->a:Lmwy;

    invoke-virtual {v1}, Lmwy;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lnba;->g:Ljava/lang/Boolean;

    .line 144
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnba;->n:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 142
    :goto_0
    return v0

    .line 144
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Z
    .locals 2

    .prologue
    .line 148
    sget-object v0, Lnaz;->HABILITACAO_ATM:Lnaz;

    invoke-virtual {v0}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnba;->a:Lmwy;

    invoke-virtual {v1}, Lmwy;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public k()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 152
    iget-object v0, p0, Lnba;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lnba;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lnba;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    .line 153
    :goto_0
    iget-object v3, p0, Lnba;->j:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lnba;->i:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_8

    move v3, v1

    .line 155
    :goto_1
    sget-object v4, Lnaz;->OFERTAR_ID_MODO_CONSULTIVO_TELA_02_ID_NAO_HABILITADO:Lnaz;

    .line 158
    invoke-virtual {v4}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lnba;->a:Lmwy;

    invoke-virtual {v5}, Lmwy;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    sget-object v4, Lnaz;->MODO_CONSULTIVO_TELA_04_BLOQUEIO_CLIENTE:Lnaz;

    .line 161
    invoke-virtual {v4}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lnba;->a:Lmwy;

    invoke-virtual {v5}, Lmwy;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez v0, :cond_0

    if-eqz v3, :cond_5

    :cond_0
    sget-object v0, Lnaz;->HOME_CONSULTIVA:Lnaz;

    .line 165
    invoke-virtual {v0}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lnba;->a:Lmwy;

    invoke-virtual {v3}, Lmwy;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lnaz;->ID_CANCELADO_TELA_51_OU_MODO_CONSULTIVO:Lnaz;

    .line 167
    invoke-virtual {v0}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lnba;->a:Lmwy;

    invoke-virtual {v3}, Lmwy;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnba;->e:Ljava/lang/Boolean;

    .line 168
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_1
    sget-object v0, Lnaz;->ATIVACAO_POR_SMS_TELA_44_OU_MODO_CONSULTIVO:Lnaz;

    .line 171
    invoke-virtual {v0}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lnba;->a:Lmwy;

    invoke-virtual {v3}, Lmwy;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnba;->f:Ljava/lang/Boolean;

    .line 172
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_2
    sget-object v0, Lnaz;->MODO_CONSULTIVO_TELA_06_APARELHO_NAO_HABILITADO:Lnaz;

    .line 175
    invoke-virtual {v0}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lnba;->a:Lmwy;

    invoke-virtual {v3}, Lmwy;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lnaz;->HABILITAR_ID_NOVAMENTE_TELA_50_OU_MODO_CONSULTIVO:Lnaz;

    .line 176
    invoke-virtual {v0}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lnba;->a:Lmwy;

    invoke-virtual {v3}, Lmwy;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lnba;->g:Ljava/lang/Boolean;

    .line 177
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lnba;->n:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lnba;->o:Ljava/lang/Boolean;

    .line 179
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lnaz;->CONVERSAO_ID_OBRIGATORIA_TELA_41:Lnaz;

    .line 183
    invoke-virtual {v0}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lnba;->a:Lmwy;

    invoke-virtual {v3}, Lmwy;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    move v2, v1

    .line 155
    :cond_6
    return v2

    :cond_7
    move v0, v2

    .line 152
    goto/16 :goto_0

    :cond_8
    move v3, v2

    .line 153
    goto/16 :goto_1
.end method

.method public l()Z
    .locals 2

    .prologue
    .line 189
    sget-object v0, Lnaz;->MODO_CONSULTIVO_TELA_04_BLOQUEIO_CLIENTE:Lnaz;

    invoke-virtual {v0}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnba;->a:Lmwy;

    invoke-virtual {v1}, Lmwy;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnba;->c:Ljava/lang/Boolean;

    .line 190
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnba;->j:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 189
    :goto_0
    return v0

    .line 190
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()Z
    .locals 2

    .prologue
    .line 194
    sget-object v0, Lnaz;->LIMPEZA_SEMENTES_TELA_03_BLOQUEIO_ADM:Lnaz;

    invoke-virtual {v0}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnba;->a:Lmwy;

    invoke-virtual {v1}, Lmwy;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public n()Z
    .locals 2

    .prologue
    .line 198
    sget-object v0, Lnaz;->MODO_CONSULTIVO_TELA_05_BLOQUEIO_TENTATIVAS:Lnaz;

    invoke-virtual {v0}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnba;->a:Lmwy;

    invoke-virtual {v1}, Lmwy;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnba;->r:Ljava/lang/Boolean;

    .line 199
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnba;->q:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 198
    :goto_0
    return v0

    .line 199
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public o()Z
    .locals 2

    .prologue
    .line 203
    sget-object v0, Lnaz;->ID_CANCELADO_TELA_51_OU_MODO_CONSULTIVO:Lnaz;

    invoke-virtual {v0}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnba;->a:Lmwy;

    invoke-virtual {v1}, Lmwy;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnba;->e:Ljava/lang/Boolean;

    .line 204
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnba;->m:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 203
    :goto_0
    return v0

    .line 204
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p()Z
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lnba;->a:Lmwy;

    invoke-virtual {v0}, Lmwy;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lnaz;->ERRO_INESPERADO_TELA_11:Lnaz;

    invoke-virtual {v0}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnba;->a:Lmwy;

    invoke-virtual {v1}, Lmwy;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lnba;->l:Ljava/lang/Boolean;

    .line 209
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 208
    :goto_0
    return v0

    .line 209
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public q()Z
    .locals 2

    .prologue
    .line 213
    sget-object v0, Lnaz;->MODO_CONSULTIVO_TELA_05_BLOQUEIO_TENTATIVAS:Lnaz;

    invoke-virtual {v0}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnba;->a:Lmwy;

    invoke-virtual {v1}, Lmwy;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lnaz;->TRANSACIONAL_COM_ID_OU_OTIMIZACAO:Lnaz;

    .line 214
    invoke-virtual {v0}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnba;->a:Lmwy;

    invoke-virtual {v1}, Lmwy;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lnba;->r:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    sget-object v0, Lnaz;->FLUXO_OTIMIZACAO:Lnaz;

    .line 215
    invoke-virtual {v0}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnba;->a:Lmwy;

    invoke-virtual {v1}, Lmwy;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 213
    :goto_0
    return v0

    .line 215
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public r()Z
    .locals 2

    .prologue
    .line 219
    sget-object v0, Lnaz;->MODO_CONSULTIVO_TELA_05_BLOQUEIO_TENTATIVAS:Lnaz;

    invoke-virtual {v0}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnba;->a:Lmwy;

    invoke-virtual {v1}, Lmwy;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnba;->r:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    sget-object v0, Lnaz;->TRANSACIONAL_COM_ID_OU_OTIMIZACAO:Lnaz;

    .line 220
    invoke-virtual {v0}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnba;->a:Lmwy;

    invoke-virtual {v1}, Lmwy;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnba;->r:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    sget-object v0, Lnaz;->FLUXO_OTIMIZACAO:Lnaz;

    .line 221
    invoke-virtual {v0}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnba;->a:Lmwy;

    invoke-virtual {v1}, Lmwy;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 219
    :goto_0
    return v0

    .line 221
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public s()Z
    .locals 2

    .prologue
    .line 225
    sget-object v0, Lnaz;->OFERTAR_ID_CSO_TRANSACIONAL:Lnaz;

    invoke-virtual {v0}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnba;->a:Lmwy;

    invoke-virtual {v1}, Lmwy;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lnaz;->CONVERSAO_ID_OBRIGATORIA_TELA_41:Lnaz;

    .line 226
    invoke-virtual {v0}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnba;->a:Lmwy;

    invoke-virtual {v1}, Lmwy;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lnaz;->CONVERSAO_ID_OBRIGATORIA_TELA_41_ATIVACAO_CSO:Lnaz;

    .line 227
    invoke-virtual {v0}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnba;->a:Lmwy;

    invoke-virtual {v1}, Lmwy;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lnaz;->ID_CANCELADO_TELA_51_OU_MODO_CONSULTIVO:Lnaz;

    .line 228
    invoke-virtual {v0}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnba;->a:Lmwy;

    invoke-virtual {v1}, Lmwy;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lnaz;->ATIVACAO_POR_SMS_TELA_44_OU_MODO_CONSULTIVO:Lnaz;

    .line 229
    invoke-virtual {v0}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnba;->a:Lmwy;

    invoke-virtual {v1}, Lmwy;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lnaz;->HABILITAR_ID_NOVAMENTE_TELA_50_OU_MODO_CONSULTIVO:Lnaz;

    .line 230
    invoke-virtual {v0}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnba;->a:Lmwy;

    invoke-virtual {v1}, Lmwy;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lnaz;->MODO_CONSULTIVO_TELA_06_APARELHO_NAO_HABILITADO:Lnaz;

    .line 231
    invoke-virtual {v0}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnba;->a:Lmwy;

    invoke-virtual {v1}, Lmwy;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lnaz;->HABILITACAO_ATM:Lnaz;

    .line 232
    invoke-virtual {v0}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnba;->a:Lmwy;

    invoke-virtual {v1}, Lmwy;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lnaz;->OFERTAR_ID_TELA_OFERTA_ATIVACAO_CSO:Lnaz;

    .line 233
    invoke-virtual {v0}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnba;->a:Lmwy;

    invoke-virtual {v1}, Lmwy;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnba;->o:Ljava/lang/Boolean;

    .line 234
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnba;->h:Ljava/lang/Boolean;

    .line 235
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lnaz;->TRANSACIONAL_COM_ID_OU_OTIMIZACAO:Lnaz;

    .line 236
    invoke-virtual {v0}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnba;->a:Lmwy;

    invoke-virtual {v1}, Lmwy;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lnaz;->ERRO_INESPERADO_TELA_11:Lnaz;

    .line 237
    invoke-virtual {v0}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnba;->a:Lmwy;

    invoke-virtual {v1}, Lmwy;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lnaz;->MODO_CONSULTIVO_TELA_06_APARELHO_NAO_HABILITADO_APARELHO_PENDENTE:Lnaz;

    .line 238
    invoke-virtual {v0}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnba;->a:Lmwy;

    invoke-virtual {v1}, Lmwy;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 225
    :goto_0
    return v0

    .line 238
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public t()Z
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lnba;->l:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
