.class public final enum Lgtd;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lgtd;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lgtd;

.field public static final enum CAMBIO_AG_CC_BENEFICIARIO:Lgtd;

.field public static final enum CAMBIO_INFO_ADICIONAIS:Lgtd;

.field public static final enum CAMBIO_SALDO_INSUFICIENTE:Lgtd;

.field public static final enum CAMBIO_SWIFT:Lgtd;

.field public static final enum CAMBIO_TIMER:Lgtd;

.field public static final enum CAMBIO_TIMER_TEMPO_ESGOTADO:Lgtd;

.field public static final enum CAMBIO_VALOR_INVALIDO:Lgtd;

.field public static final enum CAMBIO_VALOR_TOTAL_DEBITO:Lgtd;

.field public static final enum CAMBIO_VET:Lgtd;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 12
    new-instance v0, Lgtd;

    const-string v1, "CAMBIO_AG_CC_BENEFICIARIO"

    invoke-direct {v0, v1, v3}, Lgtd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgtd;->CAMBIO_AG_CC_BENEFICIARIO:Lgtd;

    .line 13
    new-instance v0, Lgtd;

    const-string v1, "CAMBIO_SWIFT"

    invoke-direct {v0, v1, v4}, Lgtd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgtd;->CAMBIO_SWIFT:Lgtd;

    .line 14
    new-instance v0, Lgtd;

    const-string v1, "CAMBIO_INFO_ADICIONAIS"

    invoke-direct {v0, v1, v5}, Lgtd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgtd;->CAMBIO_INFO_ADICIONAIS:Lgtd;

    .line 15
    new-instance v0, Lgtd;

    const-string v1, "CAMBIO_VALOR_TOTAL_DEBITO"

    invoke-direct {v0, v1, v6}, Lgtd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgtd;->CAMBIO_VALOR_TOTAL_DEBITO:Lgtd;

    .line 16
    new-instance v0, Lgtd;

    const-string v1, "CAMBIO_VET"

    invoke-direct {v0, v1, v7}, Lgtd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgtd;->CAMBIO_VET:Lgtd;

    .line 17
    new-instance v0, Lgtd;

    const-string v1, "CAMBIO_TIMER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lgtd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgtd;->CAMBIO_TIMER:Lgtd;

    .line 18
    new-instance v0, Lgtd;

    const-string v1, "CAMBIO_TIMER_TEMPO_ESGOTADO"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lgtd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgtd;->CAMBIO_TIMER_TEMPO_ESGOTADO:Lgtd;

    .line 19
    new-instance v0, Lgtd;

    const-string v1, "CAMBIO_VALOR_INVALIDO"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lgtd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgtd;->CAMBIO_VALOR_INVALIDO:Lgtd;

    .line 20
    new-instance v0, Lgtd;

    const-string v1, "CAMBIO_SALDO_INSUFICIENTE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lgtd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgtd;->CAMBIO_SALDO_INSUFICIENTE:Lgtd;

    .line 10
    const/16 v0, 0x9

    new-array v0, v0, [Lgtd;

    sget-object v1, Lgtd;->CAMBIO_AG_CC_BENEFICIARIO:Lgtd;

    aput-object v1, v0, v3

    sget-object v1, Lgtd;->CAMBIO_SWIFT:Lgtd;

    aput-object v1, v0, v4

    sget-object v1, Lgtd;->CAMBIO_INFO_ADICIONAIS:Lgtd;

    aput-object v1, v0, v5

    sget-object v1, Lgtd;->CAMBIO_VALOR_TOTAL_DEBITO:Lgtd;

    aput-object v1, v0, v6

    sget-object v1, Lgtd;->CAMBIO_VET:Lgtd;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lgtd;->CAMBIO_TIMER:Lgtd;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lgtd;->CAMBIO_TIMER_TEMPO_ESGOTADO:Lgtd;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lgtd;->CAMBIO_VALOR_INVALIDO:Lgtd;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lgtd;->CAMBIO_SALDO_INSUFICIENTE:Lgtd;

    aput-object v2, v0, v1

    sput-object v0, Lgtd;->$VALUES:[Lgtd;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lgtd;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lgtd;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lgtd;

    return-object v0
.end method

.method public static values()[Lgtd;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lgtd;->$VALUES:[Lgtd;

    invoke-virtual {v0}, [Lgtd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgtd;

    return-object v0
.end method
