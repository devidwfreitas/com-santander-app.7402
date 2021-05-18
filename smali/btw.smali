.class public final enum Lbtw;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbtw;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbtw;

.field public static final enum COMPOSE_FLOW:Lbtw;

.field public static final enum REPLY_FLOW:Lbtw;

.field public static final enum UNKNOWN:Lbtw;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-instance v0, Lbtw;

    const-string v1, "REPLY_FLOW"

    invoke-direct {v0, v1, v2}, Lbtw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbtw;->REPLY_FLOW:Lbtw;

    .line 43
    new-instance v0, Lbtw;

    const-string v1, "COMPOSE_FLOW"

    invoke-direct {v0, v1, v3}, Lbtw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbtw;->COMPOSE_FLOW:Lbtw;

    .line 48
    new-instance v0, Lbtw;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v4}, Lbtw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbtw;->UNKNOWN:Lbtw;

    .line 34
    const/4 v0, 0x3

    new-array v0, v0, [Lbtw;

    sget-object v1, Lbtw;->REPLY_FLOW:Lbtw;

    aput-object v1, v0, v2

    sget-object v1, Lbtw;->COMPOSE_FLOW:Lbtw;

    aput-object v1, v0, v3

    sget-object v1, Lbtw;->UNKNOWN:Lbtw;

    aput-object v1, v0, v4

    sput-object v0, Lbtw;->$VALUES:[Lbtw;

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
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbtw;
    .locals 1

    .prologue
    .line 34
    const-class v0, Lbtw;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbtw;

    return-object v0
.end method

.method public static values()[Lbtw;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lbtw;->$VALUES:[Lbtw;

    invoke-virtual {v0}, [Lbtw;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbtw;

    return-object v0
.end method
