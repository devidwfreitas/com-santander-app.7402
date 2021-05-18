.class public final enum Lbuz;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbuz;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbuz;

.field public static final enum DISABLED:Lbuz;

.field public static final enum NOT_SUPPORTED:Lbuz;

.field public static final enum PERMISSION_DENIED:Lbuz;

.field public static final enum SCAN_ALREADY_IN_PROGRESS:Lbuz;

.field public static final enum TIMEOUT:Lbuz;

.field public static final enum UNKNOWN_ERROR:Lbuz;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 31
    new-instance v0, Lbuz;

    const-string v1, "NOT_SUPPORTED"

    invoke-direct {v0, v1, v3}, Lbuz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbuz;->NOT_SUPPORTED:Lbuz;

    .line 32
    new-instance v0, Lbuz;

    const-string v1, "PERMISSION_DENIED"

    invoke-direct {v0, v1, v4}, Lbuz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbuz;->PERMISSION_DENIED:Lbuz;

    .line 33
    new-instance v0, Lbuz;

    const-string v1, "DISABLED"

    invoke-direct {v0, v1, v5}, Lbuz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbuz;->DISABLED:Lbuz;

    .line 34
    new-instance v0, Lbuz;

    const-string v1, "SCAN_ALREADY_IN_PROGRESS"

    invoke-direct {v0, v1, v6}, Lbuz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbuz;->SCAN_ALREADY_IN_PROGRESS:Lbuz;

    .line 35
    new-instance v0, Lbuz;

    const-string v1, "UNKNOWN_ERROR"

    invoke-direct {v0, v1, v7}, Lbuz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbuz;->UNKNOWN_ERROR:Lbuz;

    .line 36
    new-instance v0, Lbuz;

    const-string v1, "TIMEOUT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lbuz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbuz;->TIMEOUT:Lbuz;

    .line 30
    const/4 v0, 0x6

    new-array v0, v0, [Lbuz;

    sget-object v1, Lbuz;->NOT_SUPPORTED:Lbuz;

    aput-object v1, v0, v3

    sget-object v1, Lbuz;->PERMISSION_DENIED:Lbuz;

    aput-object v1, v0, v4

    sget-object v1, Lbuz;->DISABLED:Lbuz;

    aput-object v1, v0, v5

    sget-object v1, Lbuz;->SCAN_ALREADY_IN_PROGRESS:Lbuz;

    aput-object v1, v0, v6

    sget-object v1, Lbuz;->UNKNOWN_ERROR:Lbuz;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lbuz;->TIMEOUT:Lbuz;

    aput-object v2, v0, v1

    sput-object v0, Lbuz;->$VALUES:[Lbuz;

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
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbuz;
    .locals 1

    .prologue
    .line 30
    const-class v0, Lbuz;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbuz;

    return-object v0
.end method

.method public static values()[Lbuz;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lbuz;->$VALUES:[Lbuz;

    invoke-virtual {v0}, [Lbuz;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbuz;

    return-object v0
.end method
