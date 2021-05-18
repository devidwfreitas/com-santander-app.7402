.class final enum Leqx;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Leqx;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Leqx;

.field public static final enum BINARY:Leqx;

.field public static final enum DIGIT:Leqx;

.field public static final enum LOWER:Leqx;

.field public static final enum MIXED:Leqx;

.field public static final enum PUNCT:Leqx;

.field public static final enum UPPER:Leqx;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 38
    new-instance v0, Leqx;

    const-string v1, "UPPER"

    invoke-direct {v0, v1, v3}, Leqx;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leqx;->UPPER:Leqx;

    .line 39
    new-instance v0, Leqx;

    const-string v1, "LOWER"

    invoke-direct {v0, v1, v4}, Leqx;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leqx;->LOWER:Leqx;

    .line 40
    new-instance v0, Leqx;

    const-string v1, "MIXED"

    invoke-direct {v0, v1, v5}, Leqx;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leqx;->MIXED:Leqx;

    .line 41
    new-instance v0, Leqx;

    const-string v1, "DIGIT"

    invoke-direct {v0, v1, v6}, Leqx;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leqx;->DIGIT:Leqx;

    .line 42
    new-instance v0, Leqx;

    const-string v1, "PUNCT"

    invoke-direct {v0, v1, v7}, Leqx;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leqx;->PUNCT:Leqx;

    .line 43
    new-instance v0, Leqx;

    const-string v1, "BINARY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Leqx;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leqx;->BINARY:Leqx;

    .line 37
    const/4 v0, 0x6

    new-array v0, v0, [Leqx;

    sget-object v1, Leqx;->UPPER:Leqx;

    aput-object v1, v0, v3

    sget-object v1, Leqx;->LOWER:Leqx;

    aput-object v1, v0, v4

    sget-object v1, Leqx;->MIXED:Leqx;

    aput-object v1, v0, v5

    sget-object v1, Leqx;->DIGIT:Leqx;

    aput-object v1, v0, v6

    sget-object v1, Leqx;->PUNCT:Leqx;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Leqx;->BINARY:Leqx;

    aput-object v2, v0, v1

    sput-object v0, Leqx;->$VALUES:[Leqx;

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
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Leqx;
    .locals 1

    .prologue
    .line 37
    const-class v0, Leqx;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Leqx;

    return-object v0
.end method

.method public static values()[Leqx;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Leqx;->$VALUES:[Leqx;

    invoke-virtual {v0}, [Leqx;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Leqx;

    return-object v0
.end method
