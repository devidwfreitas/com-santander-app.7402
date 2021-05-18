.class final enum Leyu;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Leyu;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Leyu;

.field public static final enum ALPHA:Leyu;

.field public static final enum ALPHA_SHIFT:Leyu;

.field public static final enum LOWER:Leyu;

.field public static final enum MIXED:Leyu;

.field public static final enum PUNCT:Leyu;

.field public static final enum PUNCT_SHIFT:Leyu;


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
    new-instance v0, Leyu;

    const-string v1, "ALPHA"

    invoke-direct {v0, v1, v3}, Leyu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leyu;->ALPHA:Leyu;

    .line 39
    new-instance v0, Leyu;

    const-string v1, "LOWER"

    invoke-direct {v0, v1, v4}, Leyu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leyu;->LOWER:Leyu;

    .line 40
    new-instance v0, Leyu;

    const-string v1, "MIXED"

    invoke-direct {v0, v1, v5}, Leyu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leyu;->MIXED:Leyu;

    .line 41
    new-instance v0, Leyu;

    const-string v1, "PUNCT"

    invoke-direct {v0, v1, v6}, Leyu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leyu;->PUNCT:Leyu;

    .line 42
    new-instance v0, Leyu;

    const-string v1, "ALPHA_SHIFT"

    invoke-direct {v0, v1, v7}, Leyu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leyu;->ALPHA_SHIFT:Leyu;

    .line 43
    new-instance v0, Leyu;

    const-string v1, "PUNCT_SHIFT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Leyu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leyu;->PUNCT_SHIFT:Leyu;

    .line 37
    const/4 v0, 0x6

    new-array v0, v0, [Leyu;

    sget-object v1, Leyu;->ALPHA:Leyu;

    aput-object v1, v0, v3

    sget-object v1, Leyu;->LOWER:Leyu;

    aput-object v1, v0, v4

    sget-object v1, Leyu;->MIXED:Leyu;

    aput-object v1, v0, v5

    sget-object v1, Leyu;->PUNCT:Leyu;

    aput-object v1, v0, v6

    sget-object v1, Leyu;->ALPHA_SHIFT:Leyu;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Leyu;->PUNCT_SHIFT:Leyu;

    aput-object v2, v0, v1

    sput-object v0, Leyu;->$VALUES:[Leyu;

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

.method public static valueOf(Ljava/lang/String;)Leyu;
    .locals 1

    .prologue
    .line 37
    const-class v0, Leyu;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Leyu;

    return-object v0
.end method

.method public static values()[Leyu;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Leyu;->$VALUES:[Leyu;

    invoke-virtual {v0}, [Leyu;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Leyu;

    return-object v0
.end method
