.class public final enum Lkbt;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lkbt;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkbt;

.field public static final enum APTO_TRANSACIONAR:Lkbt;

.field public static final enum ATIVAR_CSO:Lkbt;

.field public static final enum HABILITAR_APARELHO:Lkbt;

.field public static final enum SOLICITAR_CSO:Lkbt;


# instance fields
.field private msg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-instance v0, Lkbt;

    const-string v1, "APTO_TRANSACIONAR"

    const-string v2, ""

    invoke-direct {v0, v1, v3, v2}, Lkbt;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkbt;->APTO_TRANSACIONAR:Lkbt;

    .line 12
    new-instance v0, Lkbt;

    const-string v1, "HABILITAR_APARELHO"

    const-string v2, ""

    invoke-direct {v0, v1, v4, v2}, Lkbt;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkbt;->HABILITAR_APARELHO:Lkbt;

    .line 13
    new-instance v0, Lkbt;

    const-string v1, "ATIVAR_CSO"

    const-string v2, ""

    invoke-direct {v0, v1, v5, v2}, Lkbt;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkbt;->ATIVAR_CSO:Lkbt;

    .line 14
    new-instance v0, Lkbt;

    const-string v1, "SOLICITAR_CSO"

    const-string v2, ""

    invoke-direct {v0, v1, v6, v2}, Lkbt;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkbt;->SOLICITAR_CSO:Lkbt;

    .line 9
    const/4 v0, 0x4

    new-array v0, v0, [Lkbt;

    sget-object v1, Lkbt;->APTO_TRANSACIONAR:Lkbt;

    aput-object v1, v0, v3

    sget-object v1, Lkbt;->HABILITAR_APARELHO:Lkbt;

    aput-object v1, v0, v4

    sget-object v1, Lkbt;->ATIVAR_CSO:Lkbt;

    aput-object v1, v0, v5

    sget-object v1, Lkbt;->SOLICITAR_CSO:Lkbt;

    aput-object v1, v0, v6

    sput-object v0, Lkbt;->$VALUES:[Lkbt;

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
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput-object p3, p0, Lkbt;->msg:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkbt;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lkbt;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lkbt;

    return-object v0
.end method

.method public static values()[Lkbt;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lkbt;->$VALUES:[Lkbt;

    invoke-virtual {v0}, [Lkbt;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkbt;

    return-object v0
.end method


# virtual methods
.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lkbt;->msg:Ljava/lang/String;

    return-object v0
.end method
