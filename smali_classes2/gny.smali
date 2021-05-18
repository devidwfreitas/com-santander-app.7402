.class public final enum Lgny;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lgny;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lgny;

.field public static final enum SECURY_PUBLIC_KEY:Lgny;

.field public static final enum TOKEN_VALIDADE:Lgny;


# instance fields
.field private endpoint:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 13
    new-instance v0, Lgny;

    const-string v1, "TOKEN_VALIDADE"

    const-string v2, "security/v1/token-validate"

    invoke-direct {v0, v1, v3, v2}, Lgny;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lgny;->TOKEN_VALIDADE:Lgny;

    .line 16
    new-instance v0, Lgny;

    const-string v1, "SECURY_PUBLIC_KEY"

    const-string v2, "security/v1/key/public"

    invoke-direct {v0, v1, v4, v2}, Lgny;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lgny;->SECURY_PUBLIC_KEY:Lgny;

    .line 10
    const/4 v0, 0x2

    new-array v0, v0, [Lgny;

    sget-object v1, Lgny;->TOKEN_VALIDADE:Lgny;

    aput-object v1, v0, v3

    sget-object v1, Lgny;->SECURY_PUBLIC_KEY:Lgny;

    aput-object v1, v0, v4

    sput-object v0, Lgny;->$VALUES:[Lgny;

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
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput-object p3, p0, Lgny;->endpoint:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lgny;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lgny;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lgny;

    return-object v0
.end method

.method public static values()[Lgny;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lgny;->$VALUES:[Lgny;

    invoke-virtual {v0}, [Lgny;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgny;

    return-object v0
.end method


# virtual methods
.method public getEndpoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lgny;->endpoint:Ljava/lang/String;

    return-object v0
.end method
