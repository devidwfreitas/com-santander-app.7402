.class public final enum Laiz;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Laiz;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Laiz;

.field public static final enum REMANEJAMENTO:Laiz;

.field public static final enum SALDO:Laiz;


# instance fields
.field private endpoint:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Laiz;

    const-string v1, "SALDO"

    const-string v2, "credit-management/v1/balances/"

    invoke-direct {v0, v1, v3, v2}, Laiz;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Laiz;->SALDO:Laiz;

    new-instance v0, Laiz;

    const-string v1, "REMANEJAMENTO"

    const-string v2, "limit-transfer/v1/searchCreditLimit/A/3/C/"

    invoke-direct {v0, v1, v4, v2}, Laiz;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Laiz;->REMANEJAMENTO:Laiz;

    const/4 v0, 0x2

    new-array v0, v0, [Laiz;

    sget-object v1, Laiz;->SALDO:Laiz;

    aput-object v1, v0, v3

    sget-object v1, Laiz;->REMANEJAMENTO:Laiz;

    aput-object v1, v0, v4

    sput-object v0, Laiz;->$VALUES:[Laiz;

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

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Laiz;->endpoint:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Laiz;
    .locals 1

    const-class v0, Laiz;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Laiz;

    return-object v0
.end method

.method public static values()[Laiz;
    .locals 1

    sget-object v0, Laiz;->$VALUES:[Laiz;

    invoke-virtual {v0}, [Laiz;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Laiz;

    return-object v0
.end method


# virtual methods
.method public final getEndpoint()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Laiz;->endpoint:Ljava/lang/String;

    return-object v0
.end method
