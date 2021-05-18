.class public final enum Labq;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Labq;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Labq;

.field public static final enum CALCULO_RENTABILIDADE:Labq;

.field public static final enum CDB_PROGRESSIVO:Labq;

.field public static final enum CONSULTAR_SUBPRODUTOS:Labq;

.field public static final enum DATA_AGENDAMENTO:Labq;

.field public static final enum DETALHE_INVESTIMENTO:Labq;

.field public static final enum EFETIVAR_APLICACAO:Labq;

.field public static final enum EFETIVAR_RESGATE:Labq;

.field public static final enum HOLIDAYS:Labq;

.field public static final enum MANTER_CARRINHO:Labq;

.field public static final enum NOTAS_NEGOCIACAO:Labq;

.field public static final enum PORTIFOLIO:Labq;

.field public static final enum RECOMENDACAO:Labq;

.field public static final enum SALDO_CONTA_CORRENTE:Labq;

.field public static final enum SUB_CARACTERISTICAS:Labq;

.field public static final enum SUB_DETALHE_INVESTIMENTO:Labq;

.field public static final enum TERMO_ACEITE:Labq;

.field public static final enum TERMO_RECUSA_MOCK:Labq;

.field public static final enum USER_INFO:Labq;

.field public static final enum VALIDACAO_CONSULTIVA_APLICACAO:Labq;

.field public static final enum VALIDACAO_CONSULTIVA_RESGATE:Labq;


# instance fields
.field private endpoint:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 5
    new-instance v0, Labq;

    const-string v1, "SUB_CARACTERISTICAS"

    const-string v2, "individual-investment/v1/product/subproduct-characteristics"

    invoke-direct {v0, v1, v4, v2}, Labq;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Labq;->SUB_CARACTERISTICAS:Labq;

    .line 6
    new-instance v0, Labq;

    const-string v1, "USER_INFO"

    const-string v2, "individual-investment/v1/profile/customer-status"

    invoke-direct {v0, v1, v5, v2}, Labq;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Labq;->USER_INFO:Labq;

    .line 7
    new-instance v0, Labq;

    const-string v1, "CDB_PROGRESSIVO"

    const-string v2, "individual-investment/v1/product/progressive-cdb-remuneration-tracks"

    invoke-direct {v0, v1, v6, v2}, Labq;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Labq;->CDB_PROGRESSIVO:Labq;

    .line 8
    new-instance v0, Labq;

    const-string v1, "SALDO_CONTA_CORRENTE"

    const-string v2, "checkingAccount/v1/balance"

    invoke-direct {v0, v1, v7, v2}, Labq;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Labq;->SALDO_CONTA_CORRENTE:Labq;

    .line 9
    new-instance v0, Labq;

    const-string v1, "DATA_AGENDAMENTO"

    const-string v2, "individual-investment/v1/product/next-schedule-date"

    invoke-direct {v0, v1, v8, v2}, Labq;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Labq;->DATA_AGENDAMENTO:Labq;

    .line 10
    new-instance v0, Labq;

    const-string v1, "PORTIFOLIO"

    const/4 v2, 0x5

    const-string v3, "individual-investment/v1/customer-portfolio/consolidated-position"

    invoke-direct {v0, v1, v2, v3}, Labq;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Labq;->PORTIFOLIO:Labq;

    .line 11
    new-instance v0, Labq;

    const-string v1, "CONSULTAR_SUBPRODUTOS"

    const/4 v2, 0x6

    const-string v3, "individual-investment/v1/profile/subproducts"

    invoke-direct {v0, v1, v2, v3}, Labq;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Labq;->CONSULTAR_SUBPRODUTOS:Labq;

    .line 12
    new-instance v0, Labq;

    const-string v1, "MANTER_CARRINHO"

    const/4 v2, 0x7

    const-string v3, "individual-investment/v1/product/keep-cart-purchase"

    invoke-direct {v0, v1, v2, v3}, Labq;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Labq;->MANTER_CARRINHO:Labq;

    .line 13
    new-instance v0, Labq;

    const-string v1, "TERMO_ACEITE"

    const/16 v2, 0x8

    const-string v3, "individual-investment/v1/product/consult-term-adherence"

    invoke-direct {v0, v1, v2, v3}, Labq;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Labq;->TERMO_ACEITE:Labq;

    .line 14
    new-instance v0, Labq;

    const-string v1, "CALCULO_RENTABILIDADE"

    const/16 v2, 0x9

    const-string v3, "individual-investment/v1/product/time-deposit-calculate"

    invoke-direct {v0, v1, v2, v3}, Labq;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Labq;->CALCULO_RENTABILIDADE:Labq;

    .line 15
    new-instance v0, Labq;

    const-string v1, "VALIDACAO_CONSULTIVA_APLICACAO"

    const/16 v2, 0xa

    const-string v3, "individual-investment/v1/product/consult-contracting"

    invoke-direct {v0, v1, v2, v3}, Labq;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Labq;->VALIDACAO_CONSULTIVA_APLICACAO:Labq;

    .line 16
    new-instance v0, Labq;

    const-string v1, "VALIDACAO_CONSULTIVA_RESGATE"

    const/16 v2, 0xb

    const-string v3, "individual-investment/v1/product/consult-withdraw"

    invoke-direct {v0, v1, v2, v3}, Labq;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Labq;->VALIDACAO_CONSULTIVA_RESGATE:Labq;

    .line 17
    new-instance v0, Labq;

    const-string v1, "EFETIVAR_APLICACAO"

    const/16 v2, 0xc

    const-string v3, "individual-investment/v1/product/hiring-effective"

    invoke-direct {v0, v1, v2, v3}, Labq;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Labq;->EFETIVAR_APLICACAO:Labq;

    .line 18
    new-instance v0, Labq;

    const-string v1, "EFETIVAR_RESGATE"

    const/16 v2, 0xd

    const-string v3, "individual-investment/v1/product/withdraw-effective"

    invoke-direct {v0, v1, v2, v3}, Labq;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Labq;->EFETIVAR_RESGATE:Labq;

    .line 19
    new-instance v0, Labq;

    const-string v1, "NOTAS_NEGOCIACAO"

    const/16 v2, 0xe

    const-string v3, "individual-investment/v1/product/generate-note"

    invoke-direct {v0, v1, v2, v3}, Labq;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Labq;->NOTAS_NEGOCIACAO:Labq;

    .line 20
    new-instance v0, Labq;

    const-string v1, "RECOMENDACAO"

    const/16 v2, 0xf

    const-string v3, "individual-investment/v1/profile/investment-recommendation"

    invoke-direct {v0, v1, v2, v3}, Labq;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Labq;->RECOMENDACAO:Labq;

    .line 21
    new-instance v0, Labq;

    const-string v1, "DETALHE_INVESTIMENTO"

    const/16 v2, 0x10

    const-string v3, "individual-investment/v1/customer-portfolio/investment-detail"

    invoke-direct {v0, v1, v2, v3}, Labq;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Labq;->DETALHE_INVESTIMENTO:Labq;

    .line 22
    new-instance v0, Labq;

    const-string v1, "HOLIDAYS"

    const/16 v2, 0x11

    const-string v3, "individual-investment/v1/consultHolidays"

    invoke-direct {v0, v1, v2, v3}, Labq;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Labq;->HOLIDAYS:Labq;

    .line 26
    new-instance v0, Labq;

    const-string v1, "SUB_DETALHE_INVESTIMENTO"

    const/16 v2, 0x12

    const-string v3, "individual-investment/v1/customer-portfolio/consolidated-position"

    invoke-direct {v0, v1, v2, v3}, Labq;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Labq;->SUB_DETALHE_INVESTIMENTO:Labq;

    .line 28
    new-instance v0, Labq;

    const-string v1, "TERMO_RECUSA_MOCK"

    const/16 v2, 0x13

    const-string v3, "consultarTermosRecusa"

    invoke-direct {v0, v1, v2, v3}, Labq;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Labq;->TERMO_RECUSA_MOCK:Labq;

    .line 3
    const/16 v0, 0x14

    new-array v0, v0, [Labq;

    sget-object v1, Labq;->SUB_CARACTERISTICAS:Labq;

    aput-object v1, v0, v4

    sget-object v1, Labq;->USER_INFO:Labq;

    aput-object v1, v0, v5

    sget-object v1, Labq;->CDB_PROGRESSIVO:Labq;

    aput-object v1, v0, v6

    sget-object v1, Labq;->SALDO_CONTA_CORRENTE:Labq;

    aput-object v1, v0, v7

    sget-object v1, Labq;->DATA_AGENDAMENTO:Labq;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Labq;->PORTIFOLIO:Labq;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Labq;->CONSULTAR_SUBPRODUTOS:Labq;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Labq;->MANTER_CARRINHO:Labq;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Labq;->TERMO_ACEITE:Labq;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Labq;->CALCULO_RENTABILIDADE:Labq;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Labq;->VALIDACAO_CONSULTIVA_APLICACAO:Labq;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Labq;->VALIDACAO_CONSULTIVA_RESGATE:Labq;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Labq;->EFETIVAR_APLICACAO:Labq;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Labq;->EFETIVAR_RESGATE:Labq;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Labq;->NOTAS_NEGOCIACAO:Labq;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Labq;->RECOMENDACAO:Labq;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Labq;->DETALHE_INVESTIMENTO:Labq;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Labq;->HOLIDAYS:Labq;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Labq;->SUB_DETALHE_INVESTIMENTO:Labq;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Labq;->TERMO_RECUSA_MOCK:Labq;

    aput-object v2, v0, v1

    sput-object v0, Labq;->$VALUES:[Labq;

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
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput-object p3, p0, Labq;->endpoint:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Labq;
    .locals 1

    .prologue
    .line 3
    const-class v0, Labq;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Labq;

    return-object v0
.end method

.method public static values()[Labq;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Labq;->$VALUES:[Labq;

    invoke-virtual {v0}, [Labq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Labq;

    return-object v0
.end method


# virtual methods
.method public getEndpoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Labq;->endpoint:Ljava/lang/String;

    return-object v0
.end method
