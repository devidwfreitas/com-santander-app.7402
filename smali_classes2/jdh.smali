.class public final enum Ljdh;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljdh;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljdh;

.field public static final enum FUNDOS:Ljdh;

.field public static final enum POUPANCA:Ljdh;

.field public static final enum PREVIDENCIA:Ljdh;

.field public static final enum RENDA_FIXA:Ljdh;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-instance v0, Ljdh;

    const-string v1, "PREVIDENCIA"

    const-string v2, "PREVIDENCIA"

    invoke-direct {v0, v1, v3, v2}, Ljdh;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ljdh;->PREVIDENCIA:Ljdh;

    .line 12
    new-instance v0, Ljdh;

    const-string v1, "RENDA_FIXA"

    const-string v2, "RENDA_FIXA"

    invoke-direct {v0, v1, v4, v2}, Ljdh;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ljdh;->RENDA_FIXA:Ljdh;

    .line 13
    new-instance v0, Ljdh;

    const-string v1, "FUNDOS"

    const-string v2, "FUNDOS"

    invoke-direct {v0, v1, v5, v2}, Ljdh;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ljdh;->FUNDOS:Ljdh;

    .line 14
    new-instance v0, Ljdh;

    const-string v1, "POUPANCA"

    const-string v2, "POUPANCA"

    invoke-direct {v0, v1, v6, v2}, Ljdh;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ljdh;->POUPANCA:Ljdh;

    .line 10
    const/4 v0, 0x4

    new-array v0, v0, [Ljdh;

    sget-object v1, Ljdh;->PREVIDENCIA:Ljdh;

    aput-object v1, v0, v3

    sget-object v1, Ljdh;->RENDA_FIXA:Ljdh;

    aput-object v1, v0, v4

    sget-object v1, Ljdh;->FUNDOS:Ljdh;

    aput-object v1, v0, v5

    sget-object v1, Ljdh;->POUPANCA:Ljdh;

    aput-object v1, v0, v6

    sput-object v0, Ljdh;->$VALUES:[Ljdh;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput-object p3, p0, Ljdh;->value:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljdh;
    .locals 1

    .prologue
    .line 10
    const-class v0, Ljdh;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljdh;

    return-object v0
.end method

.method public static values()[Ljdh;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Ljdh;->$VALUES:[Ljdh;

    invoke-virtual {v0}, [Ljdh;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljdh;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Ljdh;->value:Ljava/lang/String;

    return-object v0
.end method
