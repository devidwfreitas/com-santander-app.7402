.class public final enum Lbjb;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbjb;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbjb;

.field public static final enum APP_EVENTS:Lbjb;

.field public static final enum CACHE:Lbjb;

.field public static final enum DEVELOPER_ERRORS:Lbjb;

.field public static final enum GRAPH_API_DEBUG_INFO:Lbjb;

.field public static final enum GRAPH_API_DEBUG_WARNING:Lbjb;

.field public static final enum INCLUDE_ACCESS_TOKENS:Lbjb;

.field public static final enum INCLUDE_RAW_RESPONSES:Lbjb;

.field public static final enum REQUESTS:Lbjb;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 32
    new-instance v0, Lbjb;

    const-string v1, "REQUESTS"

    invoke-direct {v0, v1, v3}, Lbjb;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbjb;->REQUESTS:Lbjb;

    .line 37
    new-instance v0, Lbjb;

    const-string v1, "INCLUDE_ACCESS_TOKENS"

    invoke-direct {v0, v1, v4}, Lbjb;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbjb;->INCLUDE_ACCESS_TOKENS:Lbjb;

    .line 41
    new-instance v0, Lbjb;

    const-string v1, "INCLUDE_RAW_RESPONSES"

    invoke-direct {v0, v1, v5}, Lbjb;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbjb;->INCLUDE_RAW_RESPONSES:Lbjb;

    .line 45
    new-instance v0, Lbjb;

    const-string v1, "CACHE"

    invoke-direct {v0, v1, v6}, Lbjb;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbjb;->CACHE:Lbjb;

    .line 49
    new-instance v0, Lbjb;

    const-string v1, "APP_EVENTS"

    invoke-direct {v0, v1, v7}, Lbjb;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbjb;->APP_EVENTS:Lbjb;

    .line 54
    new-instance v0, Lbjb;

    const-string v1, "DEVELOPER_ERRORS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lbjb;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbjb;->DEVELOPER_ERRORS:Lbjb;

    .line 60
    new-instance v0, Lbjb;

    const-string v1, "GRAPH_API_DEBUG_WARNING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lbjb;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbjb;->GRAPH_API_DEBUG_WARNING:Lbjb;

    .line 67
    new-instance v0, Lbjb;

    const-string v1, "GRAPH_API_DEBUG_INFO"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lbjb;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbjb;->GRAPH_API_DEBUG_INFO:Lbjb;

    .line 28
    const/16 v0, 0x8

    new-array v0, v0, [Lbjb;

    sget-object v1, Lbjb;->REQUESTS:Lbjb;

    aput-object v1, v0, v3

    sget-object v1, Lbjb;->INCLUDE_ACCESS_TOKENS:Lbjb;

    aput-object v1, v0, v4

    sget-object v1, Lbjb;->INCLUDE_RAW_RESPONSES:Lbjb;

    aput-object v1, v0, v5

    sget-object v1, Lbjb;->CACHE:Lbjb;

    aput-object v1, v0, v6

    sget-object v1, Lbjb;->APP_EVENTS:Lbjb;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lbjb;->DEVELOPER_ERRORS:Lbjb;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lbjb;->GRAPH_API_DEBUG_WARNING:Lbjb;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lbjb;->GRAPH_API_DEBUG_INFO:Lbjb;

    aput-object v2, v0, v1

    sput-object v0, Lbjb;->$VALUES:[Lbjb;

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
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbjb;
    .locals 1

    .prologue
    .line 28
    const-class v0, Lbjb;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbjb;

    return-object v0
.end method

.method public static values()[Lbjb;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lbjb;->$VALUES:[Lbjb;

    invoke-virtual {v0}, [Lbjb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbjb;

    return-object v0
.end method
