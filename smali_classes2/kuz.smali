.class public final enum Lkuz;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lkuz;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkuz;

.field public static final enum BACK:Lkuz;

.field public static final enum NEXT:Lkuz;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-instance v0, Lkuz;

    const-string v1, "NEXT"

    const-string v2, "NEXT"

    invoke-direct {v0, v1, v3, v2}, Lkuz;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkuz;->NEXT:Lkuz;

    new-instance v0, Lkuz;

    const-string v1, "BACK"

    const-string v2, "BACK"

    invoke-direct {v0, v1, v4, v2}, Lkuz;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkuz;->BACK:Lkuz;

    .line 10
    const/4 v0, 0x2

    new-array v0, v0, [Lkuz;

    sget-object v1, Lkuz;->NEXT:Lkuz;

    aput-object v1, v0, v3

    sget-object v1, Lkuz;->BACK:Lkuz;

    aput-object v1, v0, v4

    sput-object v0, Lkuz;->$VALUES:[Lkuz;

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
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkuz;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lkuz;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lkuz;

    return-object v0
.end method

.method public static values()[Lkuz;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lkuz;->$VALUES:[Lkuz;

    invoke-virtual {v0}, [Lkuz;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkuz;

    return-object v0
.end method
