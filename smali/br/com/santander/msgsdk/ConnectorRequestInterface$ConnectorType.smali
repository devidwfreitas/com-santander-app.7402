.class public final enum Lbr/com/santander/msgsdk/ConnectorRequestInterface$ConnectorType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbr/com/santander/msgsdk/ConnectorRequestInterface$ConnectorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbr/com/santander/msgsdk/ConnectorRequestInterface$ConnectorType;

.field public static final enum DELETE:Lbr/com/santander/msgsdk/ConnectorRequestInterface$ConnectorType;

.field public static final enum GET:Lbr/com/santander/msgsdk/ConnectorRequestInterface$ConnectorType;

.field public static final enum POST:Lbr/com/santander/msgsdk/ConnectorRequestInterface$ConnectorType;

.field public static final enum PUT:Lbr/com/santander/msgsdk/ConnectorRequestInterface$ConnectorType;


# instance fields
.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 15
    new-instance v0, Lbr/com/santander/msgsdk/ConnectorRequestInterface$ConnectorType;

    const-string v1, "GET"

    const-string v2, "GET"

    invoke-direct {v0, v1, v3, v2}, Lbr/com/santander/msgsdk/ConnectorRequestInterface$ConnectorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbr/com/santander/msgsdk/ConnectorRequestInterface$ConnectorType;->GET:Lbr/com/santander/msgsdk/ConnectorRequestInterface$ConnectorType;

    .line 16
    new-instance v0, Lbr/com/santander/msgsdk/ConnectorRequestInterface$ConnectorType;

    const-string v1, "POST"

    const-string v2, "POST"

    invoke-direct {v0, v1, v4, v2}, Lbr/com/santander/msgsdk/ConnectorRequestInterface$ConnectorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbr/com/santander/msgsdk/ConnectorRequestInterface$ConnectorType;->POST:Lbr/com/santander/msgsdk/ConnectorRequestInterface$ConnectorType;

    .line 17
    new-instance v0, Lbr/com/santander/msgsdk/ConnectorRequestInterface$ConnectorType;

    const-string v1, "PUT"

    const-string v2, "PUT"

    invoke-direct {v0, v1, v5, v2}, Lbr/com/santander/msgsdk/ConnectorRequestInterface$ConnectorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbr/com/santander/msgsdk/ConnectorRequestInterface$ConnectorType;->PUT:Lbr/com/santander/msgsdk/ConnectorRequestInterface$ConnectorType;

    .line 18
    new-instance v0, Lbr/com/santander/msgsdk/ConnectorRequestInterface$ConnectorType;

    const-string v1, "DELETE"

    const-string v2, "DELETE"

    invoke-direct {v0, v1, v6, v2}, Lbr/com/santander/msgsdk/ConnectorRequestInterface$ConnectorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbr/com/santander/msgsdk/ConnectorRequestInterface$ConnectorType;->DELETE:Lbr/com/santander/msgsdk/ConnectorRequestInterface$ConnectorType;

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [Lbr/com/santander/msgsdk/ConnectorRequestInterface$ConnectorType;

    sget-object v1, Lbr/com/santander/msgsdk/ConnectorRequestInterface$ConnectorType;->GET:Lbr/com/santander/msgsdk/ConnectorRequestInterface$ConnectorType;

    aput-object v1, v0, v3

    sget-object v1, Lbr/com/santander/msgsdk/ConnectorRequestInterface$ConnectorType;->POST:Lbr/com/santander/msgsdk/ConnectorRequestInterface$ConnectorType;

    aput-object v1, v0, v4

    sget-object v1, Lbr/com/santander/msgsdk/ConnectorRequestInterface$ConnectorType;->PUT:Lbr/com/santander/msgsdk/ConnectorRequestInterface$ConnectorType;

    aput-object v1, v0, v5

    sget-object v1, Lbr/com/santander/msgsdk/ConnectorRequestInterface$ConnectorType;->DELETE:Lbr/com/santander/msgsdk/ConnectorRequestInterface$ConnectorType;

    aput-object v1, v0, v6

    sput-object v0, Lbr/com/santander/msgsdk/ConnectorRequestInterface$ConnectorType;->$VALUES:[Lbr/com/santander/msgsdk/ConnectorRequestInterface$ConnectorType;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput-object p3, p0, Lbr/com/santander/msgsdk/ConnectorRequestInterface$ConnectorType;->type:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbr/com/santander/msgsdk/ConnectorRequestInterface$ConnectorType;
    .locals 1

    .prologue
    .line 14
    const-class v0, Lbr/com/santander/msgsdk/ConnectorRequestInterface$ConnectorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbr/com/santander/msgsdk/ConnectorRequestInterface$ConnectorType;

    return-object v0
.end method

.method public static values()[Lbr/com/santander/msgsdk/ConnectorRequestInterface$ConnectorType;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lbr/com/santander/msgsdk/ConnectorRequestInterface$ConnectorType;->$VALUES:[Lbr/com/santander/msgsdk/ConnectorRequestInterface$ConnectorType;

    invoke-virtual {v0}, [Lbr/com/santander/msgsdk/ConnectorRequestInterface$ConnectorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbr/com/santander/msgsdk/ConnectorRequestInterface$ConnectorType;

    return-object v0
.end method


# virtual methods
.method public getHttpMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lbr/com/santander/msgsdk/ConnectorRequestInterface$ConnectorType;->type:Ljava/lang/String;

    return-object v0
.end method
