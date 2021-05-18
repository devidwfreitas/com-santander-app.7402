.class public Lmyl;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/app/Dialog;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;
    .locals 7

    .prologue
    .line 147
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 155
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090ae1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 156
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090a57

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 157
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090191

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v0, 0x7f090199

    .line 158
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    .line 151
    invoke-static/range {v0 .. v6}, Lmxn;->a(Landroid/app/Activity;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    .line 161
    return-object v0
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 5

    .prologue
    const/high16 v4, 0x4000000

    const/4 v3, 0x0

    .line 43
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->A()Ljava/lang/String;

    move-result-object v0

    .line 45
    sget-object v1, Lnaz;->ATIVACAO_POR_SMS_TELA_44_OU_MODO_CONSULTIVO:Lnaz;

    invoke-virtual {v1}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoSMSOfertaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 91
    :goto_0
    sget-object v0, Lnat;->VER_MAIS_TARDE:Lnat;

    invoke-virtual {v0}, Lnat;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lmzr;->n()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 92
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmwy;->g(Ljava/lang/Boolean;)V

    .line 93
    return-void

    .line 49
    :cond_0
    sget-object v1, Lnaz;->HABILITAR_ID_NOVAMENTE_TELA_50_OU_MODO_CONSULTIVO:Lnaz;

    invoke-virtual {v1}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lnaz;->MODO_CONSULTIVO_TELA_06_APARELHO_NAO_HABILITADO:Lnaz;

    .line 50
    invoke-virtual {v1}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 52
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOuAtmOfertaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 54
    :cond_2
    sget-object v1, Lnaz;->HABILITACAO_ATM:Lnaz;

    invoke-virtual {v1}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 55
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 56
    const-string v1, "atm"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 57
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 58
    :cond_3
    sget-object v1, Lnaz;->ID_CANCELADO_TELA_51_OU_MODO_CONSULTIVO:Lnaz;

    invoke-virtual {v1}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 60
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 61
    const-string v1, "tipo"

    sget-object v2, Lnat;->ID_CANCELADO:Lnat;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 62
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 63
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 65
    :cond_4
    sget-object v1, Lnaz;->OFERTAR_ID_TELA_OFERTA_ATIVACAO_CSO:Lnaz;

    invoke-virtual {v1}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lnaz;->OFERTAR_ID_CSO_TRANSACIONAL:Lnaz;

    .line 66
    invoke-virtual {v1}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lnaz;->CONVERSAO_ID_OBRIGATORIA_TELA_41_ATIVACAO_CSO:Lnaz;

    .line 67
    invoke-virtual {v1}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lnaz;->CONVERSAO_ID_OBRIGATORIA_TELA_41:Lnaz;

    .line 68
    invoke-virtual {v1}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 69
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->y()Lmwy;

    move-result-object v1

    invoke-virtual {v1}, Lmwy;->k()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 71
    :cond_5
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/santander/app/idsantander/presentation/IdSantanderOfertaActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 72
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 74
    sget-object v2, Lnaz;->CONVERSAO_ID_OBRIGATORIA_TELA_41_ATIVACAO_CSO:Lnaz;

    invoke-virtual {v2}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    sget-object v2, Lnaz;->CONVERSAO_ID_OBRIGATORIA_TELA_41:Lnaz;

    .line 75
    invoke-virtual {v2}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 76
    :cond_6
    const-string v0, "tipoConversao"

    sget-object v2, Liuu;->OBRIGATORIA:Liuu;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 81
    :goto_1
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 78
    :cond_7
    const-string v0, "tipoConversao"

    sget-object v2, Liuu;->OPCIONAL:Liuu;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_1

    .line 85
    :cond_8
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/idsantander/presentation/IdSantanderConversaoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 86
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 87
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 97
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    invoke-virtual {v0}, Lmwy;->a()Ljava/lang/String;

    move-result-object v0

    .line 99
    sget-object v1, Lnaz;->TRANSACIONAL_COM_ID_OU_OTIMIZACAO:Lnaz;

    invoke-virtual {v1}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/idsantander/presentation/IdSantanderGerarQrActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 102
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 104
    :cond_0
    return-void
.end method

.method public static c(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 107
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/idsantander/presentation/IdSantanderSincroniaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 108
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 109
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 110
    return-void
.end method

.method public static d(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 113
    new-instance v0, Lgyu;

    invoke-direct {v0, p0}, Lgyu;-><init>(Landroid/content/Context;)V

    .line 114
    invoke-virtual {v0}, Lgyu;->a()V

    .line 115
    invoke-virtual {v0}, Lgyu;->c()Ljava/util/List;

    move-result-object v1

    .line 116
    invoke-virtual {v0}, Lgyu;->close()V

    .line 118
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 119
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "tipo"

    sget-object v2, Lnat;->USUARIO_SEM_SEMENTE:Lnat;

    .line 121
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x3

    .line 119
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 127
    :goto_0
    return-void

    .line 126
    :cond_1
    invoke-static {p0}, Lmyl;->g(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public static e(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 136
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/validation/presentation/LeituraQrCodeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 138
    return-void
.end method

.method public static f(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 141
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/validation/presentation/IdSantanderTokenCentralAtendimentoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 143
    return-void
.end method

.method private static g(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 130
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/validation/presentation/IdSantanderEscolhaCanalTransacaoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 133
    return-void
.end method
