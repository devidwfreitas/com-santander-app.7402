.class public final enum Lnaz;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnaz;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnaz;

.field public static final enum ATIVACAO_POR_SMS_TELA_44_OU_MODO_CONSULTIVO:Lnaz;

.field public static final enum CONVERSAO_ID_OBRIGATORIA_TELA_41:Lnaz;

.field public static final enum CONVERSAO_ID_OBRIGATORIA_TELA_41_ATIVACAO_CSO:Lnaz;

.field public static final enum CSO_TRANSACIONAL:Lnaz;

.field public static final enum ERRO_INESPERADO_TELA_11:Lnaz;

.field public static final enum FLUXO_OTIMIZACAO:Lnaz;

.field public static final enum HABILITACAO_ATM:Lnaz;

.field public static final enum HABILITAR_ID_NOVAMENTE_TELA_50_OU_MODO_CONSULTIVO:Lnaz;

.field public static final enum HOME_CONSULTIVA:Lnaz;

.field public static final enum ID_CANCELADO_TELA_51_OU_MODO_CONSULTIVO:Lnaz;

.field public static final enum LIMPEZA_SEMENTES_TELA_03_BLOQUEIO_ADM:Lnaz;

.field public static final enum MODO_CONSULTIVO_TELA_04_BLOQUEIO_CLIENTE:Lnaz;

.field public static final enum MODO_CONSULTIVO_TELA_05_BLOQUEIO_TENTATIVAS:Lnaz;

.field public static final enum MODO_CONSULTIVO_TELA_06_APARELHO_NAO_HABILITADO:Lnaz;

.field public static final enum MODO_CONSULTIVO_TELA_06_APARELHO_NAO_HABILITADO_APARELHO_PENDENTE:Lnaz;

.field public static final enum OFERTAR_ID_CSO_TRANSACIONAL:Lnaz;

.field public static final enum OFERTAR_ID_MODO_CONSULTIVO_TELA_02_ID_NAO_HABILITADO:Lnaz;

.field public static final enum OFERTAR_ID_TELA_OFERTA_ATIVACAO_CSO:Lnaz;

.field public static final enum TELA_OFERTA_ATIVACAO_CSO:Lnaz;

.field public static final enum TRANSACIONAL_COM_ID_OU_OTIMIZACAO:Lnaz;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 14
    new-instance v0, Lnaz;

    const-string v1, "OFERTAR_ID_TELA_OFERTA_ATIVACAO_CSO"

    const-string v2, "01"

    invoke-direct {v0, v1, v4, v2}, Lnaz;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnaz;->OFERTAR_ID_TELA_OFERTA_ATIVACAO_CSO:Lnaz;

    .line 15
    new-instance v0, Lnaz;

    const-string v1, "OFERTAR_ID_CSO_TRANSACIONAL"

    const-string v2, "02"

    invoke-direct {v0, v1, v5, v2}, Lnaz;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnaz;->OFERTAR_ID_CSO_TRANSACIONAL:Lnaz;

    .line 16
    new-instance v0, Lnaz;

    const-string v1, "OFERTAR_ID_MODO_CONSULTIVO_TELA_02_ID_NAO_HABILITADO"

    const-string v2, "03"

    invoke-direct {v0, v1, v6, v2}, Lnaz;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnaz;->OFERTAR_ID_MODO_CONSULTIVO_TELA_02_ID_NAO_HABILITADO:Lnaz;

    .line 17
    new-instance v0, Lnaz;

    const-string v1, "MODO_CONSULTIVO_TELA_04_BLOQUEIO_CLIENTE"

    const-string v2, "05"

    invoke-direct {v0, v1, v7, v2}, Lnaz;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnaz;->MODO_CONSULTIVO_TELA_04_BLOQUEIO_CLIENTE:Lnaz;

    .line 18
    new-instance v0, Lnaz;

    const-string v1, "LIMPEZA_SEMENTES_TELA_03_BLOQUEIO_ADM"

    const-string v2, "06"

    invoke-direct {v0, v1, v8, v2}, Lnaz;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnaz;->LIMPEZA_SEMENTES_TELA_03_BLOQUEIO_ADM:Lnaz;

    .line 19
    new-instance v0, Lnaz;

    const-string v1, "MODO_CONSULTIVO_TELA_06_APARELHO_NAO_HABILITADO"

    const/4 v2, 0x5

    const-string v3, "08"

    invoke-direct {v0, v1, v2, v3}, Lnaz;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnaz;->MODO_CONSULTIVO_TELA_06_APARELHO_NAO_HABILITADO:Lnaz;

    .line 20
    new-instance v0, Lnaz;

    const-string v1, "ERRO_INESPERADO_TELA_11"

    const/4 v2, 0x6

    const-string v3, "09"

    invoke-direct {v0, v1, v2, v3}, Lnaz;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnaz;->ERRO_INESPERADO_TELA_11:Lnaz;

    .line 21
    new-instance v0, Lnaz;

    const-string v1, "MODO_CONSULTIVO_TELA_05_BLOQUEIO_TENTATIVAS"

    const/4 v2, 0x7

    const-string v3, "10"

    invoke-direct {v0, v1, v2, v3}, Lnaz;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnaz;->MODO_CONSULTIVO_TELA_05_BLOQUEIO_TENTATIVAS:Lnaz;

    .line 22
    new-instance v0, Lnaz;

    const-string v1, "TRANSACIONAL_COM_ID_OU_OTIMIZACAO"

    const/16 v2, 0x8

    const-string v3, "11"

    invoke-direct {v0, v1, v2, v3}, Lnaz;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnaz;->TRANSACIONAL_COM_ID_OU_OTIMIZACAO:Lnaz;

    .line 23
    new-instance v0, Lnaz;

    const-string v1, "FLUXO_OTIMIZACAO"

    const/16 v2, 0x9

    const-string v3, "12"

    invoke-direct {v0, v1, v2, v3}, Lnaz;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnaz;->FLUXO_OTIMIZACAO:Lnaz;

    .line 24
    new-instance v0, Lnaz;

    const-string v1, "TELA_OFERTA_ATIVACAO_CSO"

    const/16 v2, 0xa

    const-string v3, "13"

    invoke-direct {v0, v1, v2, v3}, Lnaz;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnaz;->TELA_OFERTA_ATIVACAO_CSO:Lnaz;

    .line 25
    new-instance v0, Lnaz;

    const-string v1, "CSO_TRANSACIONAL"

    const/16 v2, 0xb

    const-string v3, "14"

    invoke-direct {v0, v1, v2, v3}, Lnaz;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnaz;->CSO_TRANSACIONAL:Lnaz;

    .line 26
    new-instance v0, Lnaz;

    const-string v1, "HOME_CONSULTIVA"

    const/16 v2, 0xc

    const-string v3, "15"

    invoke-direct {v0, v1, v2, v3}, Lnaz;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnaz;->HOME_CONSULTIVA:Lnaz;

    .line 27
    new-instance v0, Lnaz;

    const-string v1, "CONVERSAO_ID_OBRIGATORIA_TELA_41"

    const/16 v2, 0xd

    const-string v3, "16"

    invoke-direct {v0, v1, v2, v3}, Lnaz;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnaz;->CONVERSAO_ID_OBRIGATORIA_TELA_41:Lnaz;

    .line 28
    new-instance v0, Lnaz;

    const-string v1, "ID_CANCELADO_TELA_51_OU_MODO_CONSULTIVO"

    const/16 v2, 0xe

    const-string v3, "17"

    invoke-direct {v0, v1, v2, v3}, Lnaz;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnaz;->ID_CANCELADO_TELA_51_OU_MODO_CONSULTIVO:Lnaz;

    .line 29
    new-instance v0, Lnaz;

    const-string v1, "ATIVACAO_POR_SMS_TELA_44_OU_MODO_CONSULTIVO"

    const/16 v2, 0xf

    const-string v3, "18"

    invoke-direct {v0, v1, v2, v3}, Lnaz;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnaz;->ATIVACAO_POR_SMS_TELA_44_OU_MODO_CONSULTIVO:Lnaz;

    .line 30
    new-instance v0, Lnaz;

    const-string v1, "HABILITAR_ID_NOVAMENTE_TELA_50_OU_MODO_CONSULTIVO"

    const/16 v2, 0x10

    const-string v3, "19"

    invoke-direct {v0, v1, v2, v3}, Lnaz;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnaz;->HABILITAR_ID_NOVAMENTE_TELA_50_OU_MODO_CONSULTIVO:Lnaz;

    .line 31
    new-instance v0, Lnaz;

    const-string v1, "MODO_CONSULTIVO_TELA_06_APARELHO_NAO_HABILITADO_APARELHO_PENDENTE"

    const/16 v2, 0x11

    const-string v3, "20"

    invoke-direct {v0, v1, v2, v3}, Lnaz;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnaz;->MODO_CONSULTIVO_TELA_06_APARELHO_NAO_HABILITADO_APARELHO_PENDENTE:Lnaz;

    .line 32
    new-instance v0, Lnaz;

    const-string v1, "CONVERSAO_ID_OBRIGATORIA_TELA_41_ATIVACAO_CSO"

    const/16 v2, 0x12

    const-string v3, "21"

    invoke-direct {v0, v1, v2, v3}, Lnaz;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnaz;->CONVERSAO_ID_OBRIGATORIA_TELA_41_ATIVACAO_CSO:Lnaz;

    .line 33
    new-instance v0, Lnaz;

    const-string v1, "HABILITACAO_ATM"

    const/16 v2, 0x13

    const-string v3, "22"

    invoke-direct {v0, v1, v2, v3}, Lnaz;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnaz;->HABILITACAO_ATM:Lnaz;

    .line 12
    const/16 v0, 0x14

    new-array v0, v0, [Lnaz;

    sget-object v1, Lnaz;->OFERTAR_ID_TELA_OFERTA_ATIVACAO_CSO:Lnaz;

    aput-object v1, v0, v4

    sget-object v1, Lnaz;->OFERTAR_ID_CSO_TRANSACIONAL:Lnaz;

    aput-object v1, v0, v5

    sget-object v1, Lnaz;->OFERTAR_ID_MODO_CONSULTIVO_TELA_02_ID_NAO_HABILITADO:Lnaz;

    aput-object v1, v0, v6

    sget-object v1, Lnaz;->MODO_CONSULTIVO_TELA_04_BLOQUEIO_CLIENTE:Lnaz;

    aput-object v1, v0, v7

    sget-object v1, Lnaz;->LIMPEZA_SEMENTES_TELA_03_BLOQUEIO_ADM:Lnaz;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lnaz;->MODO_CONSULTIVO_TELA_06_APARELHO_NAO_HABILITADO:Lnaz;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lnaz;->ERRO_INESPERADO_TELA_11:Lnaz;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lnaz;->MODO_CONSULTIVO_TELA_05_BLOQUEIO_TENTATIVAS:Lnaz;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lnaz;->TRANSACIONAL_COM_ID_OU_OTIMIZACAO:Lnaz;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lnaz;->FLUXO_OTIMIZACAO:Lnaz;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lnaz;->TELA_OFERTA_ATIVACAO_CSO:Lnaz;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lnaz;->CSO_TRANSACIONAL:Lnaz;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lnaz;->HOME_CONSULTIVA:Lnaz;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lnaz;->CONVERSAO_ID_OBRIGATORIA_TELA_41:Lnaz;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lnaz;->ID_CANCELADO_TELA_51_OU_MODO_CONSULTIVO:Lnaz;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lnaz;->ATIVACAO_POR_SMS_TELA_44_OU_MODO_CONSULTIVO:Lnaz;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lnaz;->HABILITAR_ID_NOVAMENTE_TELA_50_OU_MODO_CONSULTIVO:Lnaz;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lnaz;->MODO_CONSULTIVO_TELA_06_APARELHO_NAO_HABILITADO_APARELHO_PENDENTE:Lnaz;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lnaz;->CONVERSAO_ID_OBRIGATORIA_TELA_41_ATIVACAO_CSO:Lnaz;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lnaz;->HABILITACAO_ATM:Lnaz;

    aput-object v2, v0, v1

    sput-object v0, Lnaz;->$VALUES:[Lnaz;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput-object p3, p0, Lnaz;->value:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public static getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 48
    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 96
    :goto_1
    return-object v0

    .line 48
    :sswitch_0
    const-string v2, "01"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "02"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "03"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "05"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string v2, "06"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_5
    const-string v2, "08"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_6
    const-string v2, "09"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_7
    const-string v2, "10"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x7

    goto :goto_0

    :sswitch_8
    const-string v2, "11"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :sswitch_9
    const-string v2, "12"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x9

    goto :goto_0

    :sswitch_a
    const-string v2, "13"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :sswitch_b
    const-string v2, "14"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0xb

    goto :goto_0

    :sswitch_c
    const-string v2, "15"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string v2, "16"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_e
    const-string v2, "17"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_f
    const-string v2, "18"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_10
    const-string v2, "19"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x10

    goto/16 :goto_0

    :sswitch_11
    const-string v2, "20"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x11

    goto/16 :goto_0

    :sswitch_12
    const-string v2, "21"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x12

    goto/16 :goto_0

    :sswitch_13
    const-string v2, "22"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x13

    goto/16 :goto_0

    .line 50
    :pswitch_0
    sget-object v1, Lnaz;->OFERTAR_ID_TELA_OFERTA_ATIVACAO_CSO:Lnaz;

    invoke-virtual {v1}, Lnaz;->name()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 52
    :pswitch_1
    sget-object v1, Lnaz;->OFERTAR_ID_CSO_TRANSACIONAL:Lnaz;

    invoke-virtual {v1}, Lnaz;->name()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 54
    :pswitch_2
    sget-object v1, Lnaz;->OFERTAR_ID_MODO_CONSULTIVO_TELA_02_ID_NAO_HABILITADO:Lnaz;

    invoke-virtual {v1}, Lnaz;->name()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 56
    :pswitch_3
    sget-object v1, Lnaz;->MODO_CONSULTIVO_TELA_04_BLOQUEIO_CLIENTE:Lnaz;

    invoke-virtual {v1}, Lnaz;->name()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 58
    :pswitch_4
    sget-object v1, Lnaz;->LIMPEZA_SEMENTES_TELA_03_BLOQUEIO_ADM:Lnaz;

    invoke-virtual {v1}, Lnaz;->name()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 60
    :pswitch_5
    sget-object v1, Lnaz;->MODO_CONSULTIVO_TELA_06_APARELHO_NAO_HABILITADO:Lnaz;

    invoke-virtual {v1}, Lnaz;->name()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 62
    :pswitch_6
    sget-object v1, Lnaz;->ERRO_INESPERADO_TELA_11:Lnaz;

    invoke-virtual {v1}, Lnaz;->name()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 64
    :pswitch_7
    sget-object v1, Lnaz;->MODO_CONSULTIVO_TELA_05_BLOQUEIO_TENTATIVAS:Lnaz;

    invoke-virtual {v1}, Lnaz;->name()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 66
    :pswitch_8
    sget-object v1, Lnaz;->TRANSACIONAL_COM_ID_OU_OTIMIZACAO:Lnaz;

    invoke-virtual {v1}, Lnaz;->name()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 68
    :pswitch_9
    sget-object v1, Lnaz;->FLUXO_OTIMIZACAO:Lnaz;

    invoke-virtual {v1}, Lnaz;->name()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 70
    :pswitch_a
    sget-object v1, Lnaz;->TELA_OFERTA_ATIVACAO_CSO:Lnaz;

    invoke-virtual {v1}, Lnaz;->name()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 72
    :pswitch_b
    sget-object v1, Lnaz;->CSO_TRANSACIONAL:Lnaz;

    invoke-virtual {v1}, Lnaz;->name()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 74
    :pswitch_c
    sget-object v1, Lnaz;->HOME_CONSULTIVA:Lnaz;

    invoke-virtual {v1}, Lnaz;->name()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 76
    :pswitch_d
    sget-object v1, Lnaz;->CONVERSAO_ID_OBRIGATORIA_TELA_41:Lnaz;

    invoke-virtual {v1}, Lnaz;->name()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 78
    :pswitch_e
    sget-object v1, Lnaz;->ID_CANCELADO_TELA_51_OU_MODO_CONSULTIVO:Lnaz;

    invoke-virtual {v1}, Lnaz;->name()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 80
    :pswitch_f
    sget-object v1, Lnaz;->ATIVACAO_POR_SMS_TELA_44_OU_MODO_CONSULTIVO:Lnaz;

    invoke-virtual {v1}, Lnaz;->name()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 82
    :pswitch_10
    sget-object v1, Lnaz;->HABILITAR_ID_NOVAMENTE_TELA_50_OU_MODO_CONSULTIVO:Lnaz;

    invoke-virtual {v1}, Lnaz;->name()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 84
    :pswitch_11
    sget-object v1, Lnaz;->MODO_CONSULTIVO_TELA_06_APARELHO_NAO_HABILITADO_APARELHO_PENDENTE:Lnaz;

    invoke-virtual {v1}, Lnaz;->name()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 86
    :pswitch_12
    sget-object v1, Lnaz;->CONVERSAO_ID_OBRIGATORIA_TELA_41_ATIVACAO_CSO:Lnaz;

    invoke-virtual {v1}, Lnaz;->name()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 88
    :pswitch_13
    sget-object v1, Lnaz;->HABILITACAO_ATM:Lnaz;

    invoke-virtual {v1}, Lnaz;->name()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_1

    .line 92
    :catch_0
    move-exception v1

    .line 93
    const-string v2, "ENUM_ACAO_TRANSACIONAL"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 48
    nop

    :sswitch_data_0
    .sparse-switch
        0x601 -> :sswitch_0
        0x602 -> :sswitch_1
        0x603 -> :sswitch_2
        0x605 -> :sswitch_3
        0x606 -> :sswitch_4
        0x608 -> :sswitch_5
        0x609 -> :sswitch_6
        0x61f -> :sswitch_7
        0x620 -> :sswitch_8
        0x621 -> :sswitch_9
        0x622 -> :sswitch_a
        0x623 -> :sswitch_b
        0x624 -> :sswitch_c
        0x625 -> :sswitch_d
        0x626 -> :sswitch_e
        0x627 -> :sswitch_f
        0x628 -> :sswitch_10
        0x63e -> :sswitch_11
        0x63f -> :sswitch_12
        0x640 -> :sswitch_13
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lnaz;
    .locals 1

    .prologue
    .line 12
    const-class v0, Lnaz;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnaz;

    return-object v0
.end method

.method public static values()[Lnaz;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lnaz;->$VALUES:[Lnaz;

    invoke-virtual {v0}, [Lnaz;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnaz;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lnaz;->value:Ljava/lang/String;

    return-object v0
.end method
