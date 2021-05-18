.class public final enum Lgty;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lgty;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lgty;

.field public static final enum USER_SANTANDER:Lgty;

.field public static final enum USER_SELECT:Lgty;

.field public static final enum USER_UNIVERSIDADES:Lgty;

.field public static final enum USER_VAN_GOGH:Lgty;

.field public static final enum USER_VAN_GOGH_UNIVERSIDADES:Lgty;

.field private static map:Ljava/util/Map;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 14
    new-instance v1, Lgty;

    const-string v2, "USER_SANTANDER"

    invoke-direct {v1, v2, v0, v4}, Lgty;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lgty;->USER_SANTANDER:Lgty;

    .line 15
    new-instance v1, Lgty;

    const-string v2, "USER_VAN_GOGH"

    invoke-direct {v1, v2, v4, v5}, Lgty;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lgty;->USER_VAN_GOGH:Lgty;

    .line 16
    new-instance v1, Lgty;

    const-string v2, "USER_SELECT"

    invoke-direct {v1, v2, v5, v6}, Lgty;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lgty;->USER_SELECT:Lgty;

    .line 17
    new-instance v1, Lgty;

    const-string v2, "USER_UNIVERSIDADES"

    invoke-direct {v1, v2, v6, v7}, Lgty;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lgty;->USER_UNIVERSIDADES:Lgty;

    .line 18
    new-instance v1, Lgty;

    const-string v2, "USER_VAN_GOGH_UNIVERSIDADES"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v7, v3}, Lgty;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lgty;->USER_VAN_GOGH_UNIVERSIDADES:Lgty;

    .line 13
    const/4 v1, 0x5

    new-array v1, v1, [Lgty;

    sget-object v2, Lgty;->USER_SANTANDER:Lgty;

    aput-object v2, v1, v0

    sget-object v2, Lgty;->USER_VAN_GOGH:Lgty;

    aput-object v2, v1, v4

    sget-object v2, Lgty;->USER_SELECT:Lgty;

    aput-object v2, v1, v5

    sget-object v2, Lgty;->USER_UNIVERSIDADES:Lgty;

    aput-object v2, v1, v6

    sget-object v2, Lgty;->USER_VAN_GOGH_UNIVERSIDADES:Lgty;

    aput-object v2, v1, v7

    sput-object v1, Lgty;->$VALUES:[Lgty;

    .line 24
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lgty;->map:Ljava/util/Map;

    .line 27
    invoke-static {}, Lgty;->values()[Lgty;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 28
    sget-object v4, Lgty;->map:Ljava/util/Map;

    iget v5, v3, Lgty;->value:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput p3, p0, Lgty;->value:I

    .line 22
    return-void
.end method

.method public static valueOf(I)Lgty;
    .locals 2

    .prologue
    .line 33
    sget-object v0, Lgty;->map:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgty;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lgty;
    .locals 1

    .prologue
    .line 13
    const-class v0, Lgty;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lgty;

    return-object v0
.end method

.method public static values()[Lgty;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lgty;->$VALUES:[Lgty;

    invoke-virtual {v0}, [Lgty;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgty;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lgty;->value:I

    return v0
.end method
