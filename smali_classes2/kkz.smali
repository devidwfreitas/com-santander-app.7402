.class public final enum Lkkz;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lkkz;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkkz;

.field public static final enum SEGUNDA_VIA_AGUA:Lkkz;

.field public static final enum SEGUNDA_VIA_CARTAO_CREDITO:Lkkz;

.field public static final enum SEGUNDA_VIA_CARTA_AMEX:Lkkz;

.field public static final enum SEGUNDA_VIA_GAS:Lkkz;

.field public static final enum SEGUNDA_VIA_LUZ:Lkkz;

.field public static final enum SEGUNDA_VIA_PGT_TITULOS:Lkkz;

.field public static final enum SEGUNDA_VIA_TEL_FIXO:Lkkz;

.field public static final enum SEGUNDA_VIA_TEL_POS:Lkkz;

.field public static final enum SEGUNDA_VIA_TEL_PRE:Lkkz;

.field public static final enum SEGUNDA_VIA_TITULOS_OUTROS:Lkkz;

.field public static final enum SEGUNDA_VIA_TRANSF_DOC:Lkkz;

.field public static final enum SEGUNDA_VIA_TRANSF_MESMA:Lkkz;

.field public static final enum SEGUNDA_VIA_TRANSF_TED:Lkkz;


# instance fields
.field private final valor:Ljava/lang/String;


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
    new-instance v0, Lkkz;

    const-string v1, "SEGUNDA_VIA_AGUA"

    const-string v2, "1001"

    invoke-direct {v0, v1, v4, v2}, Lkkz;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkkz;->SEGUNDA_VIA_AGUA:Lkkz;

    new-instance v0, Lkkz;

    const-string v1, "SEGUNDA_VIA_LUZ"

    const-string v2, "1002"

    invoke-direct {v0, v1, v5, v2}, Lkkz;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkkz;->SEGUNDA_VIA_LUZ:Lkkz;

    new-instance v0, Lkkz;

    const-string v1, "SEGUNDA_VIA_GAS"

    const-string v2, "1003"

    invoke-direct {v0, v1, v6, v2}, Lkkz;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkkz;->SEGUNDA_VIA_GAS:Lkkz;

    new-instance v0, Lkkz;

    const-string v1, "SEGUNDA_VIA_TEL_FIXO"

    const-string v2, "1004"

    invoke-direct {v0, v1, v7, v2}, Lkkz;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkkz;->SEGUNDA_VIA_TEL_FIXO:Lkkz;

    new-instance v0, Lkkz;

    const-string v1, "SEGUNDA_VIA_TEL_POS"

    const-string v2, "1005"

    invoke-direct {v0, v1, v8, v2}, Lkkz;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkkz;->SEGUNDA_VIA_TEL_POS:Lkkz;

    new-instance v0, Lkkz;

    const-string v1, "SEGUNDA_VIA_TITULOS_OUTROS"

    const/4 v2, 0x5

    const-string v3, "1006"

    invoke-direct {v0, v1, v2, v3}, Lkkz;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkkz;->SEGUNDA_VIA_TITULOS_OUTROS:Lkkz;

    new-instance v0, Lkkz;

    const-string v1, "SEGUNDA_VIA_PGT_TITULOS"

    const/4 v2, 0x6

    const-string v3, "01"

    invoke-direct {v0, v1, v2, v3}, Lkkz;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkkz;->SEGUNDA_VIA_PGT_TITULOS:Lkkz;

    new-instance v0, Lkkz;

    const-string v1, "SEGUNDA_VIA_TEL_PRE"

    const/4 v2, 0x7

    const-string v3, "7001"

    invoke-direct {v0, v1, v2, v3}, Lkkz;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkkz;->SEGUNDA_VIA_TEL_PRE:Lkkz;

    new-instance v0, Lkkz;

    const-string v1, "SEGUNDA_VIA_CARTA_AMEX"

    const/16 v2, 0x8

    const-string v3, "6001"

    invoke-direct {v0, v1, v2, v3}, Lkkz;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkkz;->SEGUNDA_VIA_CARTA_AMEX:Lkkz;

    .line 15
    new-instance v0, Lkkz;

    const-string v1, "SEGUNDA_VIA_CARTAO_CREDITO"

    const/16 v2, 0x9

    const-string v3, "05"

    invoke-direct {v0, v1, v2, v3}, Lkkz;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkkz;->SEGUNDA_VIA_CARTAO_CREDITO:Lkkz;

    new-instance v0, Lkkz;

    const-string v1, "SEGUNDA_VIA_TRANSF_MESMA"

    const/16 v2, 0xa

    const-string v3, "04"

    invoke-direct {v0, v1, v2, v3}, Lkkz;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkkz;->SEGUNDA_VIA_TRANSF_MESMA:Lkkz;

    new-instance v0, Lkkz;

    const-string v1, "SEGUNDA_VIA_TRANSF_DOC"

    const/16 v2, 0xb

    const-string v3, "03"

    invoke-direct {v0, v1, v2, v3}, Lkkz;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkkz;->SEGUNDA_VIA_TRANSF_DOC:Lkkz;

    new-instance v0, Lkkz;

    const-string v1, "SEGUNDA_VIA_TRANSF_TED"

    const/16 v2, 0xc

    const-string v3, "02"

    invoke-direct {v0, v1, v2, v3}, Lkkz;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkkz;->SEGUNDA_VIA_TRANSF_TED:Lkkz;

    .line 13
    const/16 v0, 0xd

    new-array v0, v0, [Lkkz;

    sget-object v1, Lkkz;->SEGUNDA_VIA_AGUA:Lkkz;

    aput-object v1, v0, v4

    sget-object v1, Lkkz;->SEGUNDA_VIA_LUZ:Lkkz;

    aput-object v1, v0, v5

    sget-object v1, Lkkz;->SEGUNDA_VIA_GAS:Lkkz;

    aput-object v1, v0, v6

    sget-object v1, Lkkz;->SEGUNDA_VIA_TEL_FIXO:Lkkz;

    aput-object v1, v0, v7

    sget-object v1, Lkkz;->SEGUNDA_VIA_TEL_POS:Lkkz;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lkkz;->SEGUNDA_VIA_TITULOS_OUTROS:Lkkz;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lkkz;->SEGUNDA_VIA_PGT_TITULOS:Lkkz;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lkkz;->SEGUNDA_VIA_TEL_PRE:Lkkz;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lkkz;->SEGUNDA_VIA_CARTA_AMEX:Lkkz;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lkkz;->SEGUNDA_VIA_CARTAO_CREDITO:Lkkz;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lkkz;->SEGUNDA_VIA_TRANSF_MESMA:Lkkz;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lkkz;->SEGUNDA_VIA_TRANSF_DOC:Lkkz;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lkkz;->SEGUNDA_VIA_TRANSF_TED:Lkkz;

    aput-object v2, v0, v1

    sput-object v0, Lkkz;->$VALUES:[Lkkz;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput-object p3, p0, Lkkz;->valor:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkkz;
    .locals 1

    .prologue
    .line 13
    const-class v0, Lkkz;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lkkz;

    return-object v0
.end method

.method public static values()[Lkkz;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lkkz;->$VALUES:[Lkkz;

    invoke-virtual {v0}, [Lkkz;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkkz;

    return-object v0
.end method


# virtual methods
.method public getValor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lkkz;->valor:Ljava/lang/String;

    return-object v0
.end method
