.class public final enum Lggn;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lggn;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lggn;

.field public static final enum CARTEIRA_DIARIA_INVESTMENT_PORTFOLIO:Lggn;


# instance fields
.field private endpoint:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 12
    new-instance v0, Lggn;

    const-string v1, "CARTEIRA_DIARIA_INVESTMENT_PORTFOLIO"

    const-string v2, "investment-portfolio/v1/0"

    invoke-direct {v0, v1, v3, v2}, Lggn;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lggn;->CARTEIRA_DIARIA_INVESTMENT_PORTFOLIO:Lggn;

    .line 10
    const/4 v0, 0x1

    new-array v0, v0, [Lggn;

    sget-object v1, Lggn;->CARTEIRA_DIARIA_INVESTMENT_PORTFOLIO:Lggn;

    aput-object v1, v0, v3

    sput-object v0, Lggn;->$VALUES:[Lggn;

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
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput-object p3, p0, Lggn;->endpoint:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lggn;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lggn;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lggn;

    return-object v0
.end method

.method public static values()[Lggn;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lggn;->$VALUES:[Lggn;

    invoke-virtual {v0}, [Lggn;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lggn;

    return-object v0
.end method


# virtual methods
.method public getEndpoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lggn;->endpoint:Ljava/lang/String;

    return-object v0
.end method
