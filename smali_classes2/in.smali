.class public final enum Lin;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lin;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lin;

.field public static final enum IBJ:Lin;

.field public static final enum MBB:Lin;


# instance fields
.field private system:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8
    new-instance v0, Lin;

    const-string v1, "MBB"

    const-string v2, "MBB"

    invoke-direct {v0, v1, v3, v2}, Lin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lin;->MBB:Lin;

    .line 9
    new-instance v0, Lin;

    const-string v1, "IBJ"

    const-string v2, "IBJ"

    invoke-direct {v0, v1, v4, v2}, Lin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lin;->IBJ:Lin;

    .line 7
    const/4 v0, 0x2

    new-array v0, v0, [Lin;

    sget-object v1, Lin;->MBB:Lin;

    aput-object v1, v0, v3

    sget-object v1, Lin;->IBJ:Lin;

    aput-object v1, v0, v4

    sput-object v0, Lin;->$VALUES:[Lin;

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
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput-object p3, p0, Lin;->system:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lin;
    .locals 1

    .prologue
    .line 7
    const-class v0, Lin;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lin;

    return-object v0
.end method

.method public static values()[Lin;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lin;->$VALUES:[Lin;

    invoke-virtual {v0}, [Lin;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lin;

    return-object v0
.end method


# virtual methods
.method public getSystem()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lin;->system:Ljava/lang/String;

    return-object v0
.end method
