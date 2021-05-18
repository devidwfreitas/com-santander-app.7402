.class public final enum Laor;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Laor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Laor;

.field public static final enum CONTENT:Laor;

.field public static final enum EMPTY:Laor;

.field public static final enum ERROR:Laor;

.field public static final enum LOADING:Laor;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, Laor;

    const-string v1, "CONTENT"

    invoke-direct {v0, v1, v2}, Laor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laor;->CONTENT:Laor;

    .line 33
    new-instance v0, Laor;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v3}, Laor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laor;->LOADING:Laor;

    .line 34
    new-instance v0, Laor;

    const-string v1, "EMPTY"

    invoke-direct {v0, v1, v4}, Laor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laor;->EMPTY:Laor;

    .line 35
    new-instance v0, Laor;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v5}, Laor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laor;->ERROR:Laor;

    .line 31
    const/4 v0, 0x4

    new-array v0, v0, [Laor;

    sget-object v1, Laor;->CONTENT:Laor;

    aput-object v1, v0, v2

    sget-object v1, Laor;->LOADING:Laor;

    aput-object v1, v0, v3

    sget-object v1, Laor;->EMPTY:Laor;

    aput-object v1, v0, v4

    sget-object v1, Laor;->ERROR:Laor;

    aput-object v1, v0, v5

    sput-object v0, Laor;->$VALUES:[Laor;

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
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Laor;
    .locals 1

    .prologue
    .line 31
    const-class v0, Laor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Laor;

    return-object v0
.end method

.method public static values()[Laor;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Laor;->$VALUES:[Laor;

    invoke-virtual {v0}, [Laor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Laor;

    return-object v0
.end method
