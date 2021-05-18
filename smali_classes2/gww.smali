.class public final enum Lgww;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lgww;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lgww;

.field public static final enum Conta:Lgww;

.field public static final enum ContaMovement:Lgww;

.field public static final enum Home:Lgww;

.field public static final enum MeusInvestimentos:Lgww;

.field public static final enum Saldo:Lgww;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lgww;

    const-string v1, "Home"

    invoke-direct {v0, v1, v2}, Lgww;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgww;->Home:Lgww;

    .line 12
    new-instance v0, Lgww;

    const-string v1, "Saldo"

    invoke-direct {v0, v1, v3}, Lgww;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgww;->Saldo:Lgww;

    .line 13
    new-instance v0, Lgww;

    const-string v1, "Conta"

    invoke-direct {v0, v1, v4}, Lgww;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgww;->Conta:Lgww;

    .line 14
    new-instance v0, Lgww;

    const-string v1, "MeusInvestimentos"

    invoke-direct {v0, v1, v5}, Lgww;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgww;->MeusInvestimentos:Lgww;

    .line 15
    new-instance v0, Lgww;

    const-string v1, "ContaMovement"

    invoke-direct {v0, v1, v6}, Lgww;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgww;->ContaMovement:Lgww;

    .line 10
    const/4 v0, 0x5

    new-array v0, v0, [Lgww;

    sget-object v1, Lgww;->Home:Lgww;

    aput-object v1, v0, v2

    sget-object v1, Lgww;->Saldo:Lgww;

    aput-object v1, v0, v3

    sget-object v1, Lgww;->Conta:Lgww;

    aput-object v1, v0, v4

    sget-object v1, Lgww;->MeusInvestimentos:Lgww;

    aput-object v1, v0, v5

    sget-object v1, Lgww;->ContaMovement:Lgww;

    aput-object v1, v0, v6

    sput-object v0, Lgww;->$VALUES:[Lgww;

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

.method public static valueOf(Ljava/lang/String;)Lgww;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lgww;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lgww;

    return-object v0
.end method

.method public static values()[Lgww;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lgww;->$VALUES:[Lgww;

    invoke-virtual {v0}, [Lgww;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgww;

    return-object v0
.end method
