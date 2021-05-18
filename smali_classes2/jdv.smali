.class public final enum Ljdv;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljdv;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljdv;

.field public static final enum MAIOR_RENTABILIDADE:Ljdv;

.field public static final enum MAIOR_VALOR:Ljdv;

.field public static final enum MENOR_RENTABILIDADE:Ljdv;

.field public static final enum MENOR_VALOR:Ljdv;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-instance v0, Ljdv;

    const-string v1, "MAIOR_VALOR"

    const-string v2, "MAIOR_VALOR"

    invoke-direct {v0, v1, v3, v2}, Ljdv;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ljdv;->MAIOR_VALOR:Ljdv;

    .line 12
    new-instance v0, Ljdv;

    const-string v1, "MENOR_VALOR"

    const-string v2, "MENOR_VALOR"

    invoke-direct {v0, v1, v4, v2}, Ljdv;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ljdv;->MENOR_VALOR:Ljdv;

    .line 13
    new-instance v0, Ljdv;

    const-string v1, "MAIOR_RENTABILIDADE"

    const-string v2, "MAIOR_RENTABILIDADE"

    invoke-direct {v0, v1, v5, v2}, Ljdv;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ljdv;->MAIOR_RENTABILIDADE:Ljdv;

    .line 14
    new-instance v0, Ljdv;

    const-string v1, "MENOR_RENTABILIDADE"

    const-string v2, "MENOR_RENTABILIDADE"

    invoke-direct {v0, v1, v6, v2}, Ljdv;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ljdv;->MENOR_RENTABILIDADE:Ljdv;

    .line 10
    const/4 v0, 0x4

    new-array v0, v0, [Ljdv;

    sget-object v1, Ljdv;->MAIOR_VALOR:Ljdv;

    aput-object v1, v0, v3

    sget-object v1, Ljdv;->MENOR_VALOR:Ljdv;

    aput-object v1, v0, v4

    sget-object v1, Ljdv;->MAIOR_RENTABILIDADE:Ljdv;

    aput-object v1, v0, v5

    sget-object v1, Ljdv;->MENOR_RENTABILIDADE:Ljdv;

    aput-object v1, v0, v6

    sput-object v0, Ljdv;->$VALUES:[Ljdv;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput-object p3, p0, Ljdv;->value:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljdv;
    .locals 1

    .prologue
    .line 10
    const-class v0, Ljdv;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljdv;

    return-object v0
.end method

.method public static values()[Ljdv;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Ljdv;->$VALUES:[Ljdv;

    invoke-virtual {v0}, [Ljdv;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljdv;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Ljdv;->value:Ljava/lang/String;

    return-object v0
.end method
