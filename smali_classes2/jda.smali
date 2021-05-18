.class public final enum Ljda;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljda;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljda;

.field public static final enum POUPANCA:Ljda;

.field public static final enum PREVIDENCIA:Ljda;

.field public static final enum RENDA_FIXA:Ljda;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Ljda;

    const-string v1, "POUPANCA"

    invoke-direct {v0, v1, v2}, Ljda;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljda;->POUPANCA:Ljda;

    .line 12
    new-instance v0, Ljda;

    const-string v1, "PREVIDENCIA"

    invoke-direct {v0, v1, v3}, Ljda;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljda;->PREVIDENCIA:Ljda;

    .line 13
    new-instance v0, Ljda;

    const-string v1, "RENDA_FIXA"

    invoke-direct {v0, v1, v4}, Ljda;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljda;->RENDA_FIXA:Ljda;

    .line 10
    const/4 v0, 0x3

    new-array v0, v0, [Ljda;

    sget-object v1, Ljda;->POUPANCA:Ljda;

    aput-object v1, v0, v2

    sget-object v1, Ljda;->PREVIDENCIA:Ljda;

    aput-object v1, v0, v3

    sget-object v1, Ljda;->RENDA_FIXA:Ljda;

    aput-object v1, v0, v4

    sput-object v0, Ljda;->$VALUES:[Ljda;

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
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljda;
    .locals 1

    .prologue
    .line 10
    const-class v0, Ljda;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljda;

    return-object v0
.end method

.method public static values()[Ljda;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Ljda;->$VALUES:[Ljda;

    invoke-virtual {v0}, [Ljda;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljda;

    return-object v0
.end method
