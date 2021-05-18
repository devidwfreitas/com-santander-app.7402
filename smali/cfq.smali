.class public final enum Lcfq;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcfq;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcfq;

.field public static final enum CIRCLE:Lcfq;

.field public static final enum DEFAULT:Lcfq;

.field public static final enum EMPTY:Lcfq;

.field public static final enum LINE:Lcfq;

.field public static final enum NONE:Lcfq;

.field public static final enum SQUARE:Lcfq;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 41
    new-instance v0, Lcfq;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcfq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcfq;->NONE:Lcfq;

    .line 46
    new-instance v0, Lcfq;

    const-string v1, "EMPTY"

    invoke-direct {v0, v1, v4}, Lcfq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcfq;->EMPTY:Lcfq;

    .line 51
    new-instance v0, Lcfq;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v5}, Lcfq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcfq;->DEFAULT:Lcfq;

    .line 56
    new-instance v0, Lcfq;

    const-string v1, "SQUARE"

    invoke-direct {v0, v1, v6}, Lcfq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcfq;->SQUARE:Lcfq;

    .line 61
    new-instance v0, Lcfq;

    const-string v1, "CIRCLE"

    invoke-direct {v0, v1, v7}, Lcfq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcfq;->CIRCLE:Lcfq;

    .line 66
    new-instance v0, Lcfq;

    const-string v1, "LINE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcfq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcfq;->LINE:Lcfq;

    .line 37
    const/4 v0, 0x6

    new-array v0, v0, [Lcfq;

    sget-object v1, Lcfq;->NONE:Lcfq;

    aput-object v1, v0, v3

    sget-object v1, Lcfq;->EMPTY:Lcfq;

    aput-object v1, v0, v4

    sget-object v1, Lcfq;->DEFAULT:Lcfq;

    aput-object v1, v0, v5

    sget-object v1, Lcfq;->SQUARE:Lcfq;

    aput-object v1, v0, v6

    sget-object v1, Lcfq;->CIRCLE:Lcfq;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcfq;->LINE:Lcfq;

    aput-object v2, v0, v1

    sput-object v0, Lcfq;->$VALUES:[Lcfq;

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

.method public static valueOf(Ljava/lang/String;)Lcfq;
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcfq;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcfq;

    return-object v0
.end method

.method public static values()[Lcfq;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcfq;->$VALUES:[Lcfq;

    invoke-virtual {v0}, [Lcfq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcfq;

    return-object v0
.end method
