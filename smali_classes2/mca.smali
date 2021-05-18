.class public final enum Lmca;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmca;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmca;

.field public static final enum LEFT:Lmca;

.field public static final enum RIGHT:Lmca;


# instance fields
.field private side:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 34
    new-instance v0, Lmca;

    const-string v1, "LEFT"

    const-string v2, "left"

    invoke-direct {v0, v1, v3, v2}, Lmca;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lmca;->LEFT:Lmca;

    .line 35
    new-instance v0, Lmca;

    const-string v1, "RIGHT"

    const-string v2, "right"

    invoke-direct {v0, v1, v4, v2}, Lmca;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lmca;->RIGHT:Lmca;

    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [Lmca;

    sget-object v1, Lmca;->LEFT:Lmca;

    aput-object v1, v0, v3

    sget-object v1, Lmca;->RIGHT:Lmca;

    aput-object v1, v0, v4

    sput-object v0, Lmca;->$VALUES:[Lmca;

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
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput-object p3, p0, Lmca;->side:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmca;
    .locals 1

    .prologue
    .line 32
    const-class v0, Lmca;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmca;

    return-object v0
.end method

.method public static values()[Lmca;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lmca;->$VALUES:[Lmca;

    invoke-virtual {v0}, [Lmca;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmca;

    return-object v0
.end method


# virtual methods
.method public getSide()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lmca;->side:Ljava/lang/String;

    return-object v0
.end method
