.class public final enum Lbln;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbln;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbln;

.field public static final enum NO_CONNECTIVITY:Lbln;

.field public static final enum SERVER_ERROR:Lbln;

.field public static final enum SUCCESS:Lbln;

.field public static final enum UNKNOWN_ERROR:Lbln;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lbln;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v2}, Lbln;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbln;->SUCCESS:Lbln;

    .line 25
    new-instance v0, Lbln;

    const-string v1, "SERVER_ERROR"

    invoke-direct {v0, v1, v3}, Lbln;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbln;->SERVER_ERROR:Lbln;

    .line 26
    new-instance v0, Lbln;

    const-string v1, "NO_CONNECTIVITY"

    invoke-direct {v0, v1, v4}, Lbln;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbln;->NO_CONNECTIVITY:Lbln;

    .line 27
    new-instance v0, Lbln;

    const-string v1, "UNKNOWN_ERROR"

    invoke-direct {v0, v1, v5}, Lbln;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbln;->UNKNOWN_ERROR:Lbln;

    .line 23
    const/4 v0, 0x4

    new-array v0, v0, [Lbln;

    sget-object v1, Lbln;->SUCCESS:Lbln;

    aput-object v1, v0, v2

    sget-object v1, Lbln;->SERVER_ERROR:Lbln;

    aput-object v1, v0, v3

    sget-object v1, Lbln;->NO_CONNECTIVITY:Lbln;

    aput-object v1, v0, v4

    sget-object v1, Lbln;->UNKNOWN_ERROR:Lbln;

    aput-object v1, v0, v5

    sput-object v0, Lbln;->$VALUES:[Lbln;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbln;
    .locals 1

    .prologue
    .line 23
    const-class v0, Lbln;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbln;

    return-object v0
.end method

.method public static values()[Lbln;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lbln;->$VALUES:[Lbln;

    invoke-virtual {v0}, [Lbln;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbln;

    return-object v0
.end method
