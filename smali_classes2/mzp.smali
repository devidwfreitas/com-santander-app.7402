.class public final enum Lmzp;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmzp;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmzp;

.field public static final enum RELOAD_CARTOES:Lmzp;

.field public static final enum RELOAD_CARTOES_DESBLOQUEIO:Lmzp;

.field public static final enum RELOAD_CONTA:Lmzp;

.field public static final enum RELOAD_EMPRESTIMOS:Lmzp;

.field public static final enum RELOAD_INVESTIMENTO:Lmzp;

.field public static final enum RELOAD_POUPANCA:Lmzp;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 18
    new-instance v0, Lmzp;

    const-string v1, "RELOAD_CONTA"

    invoke-direct {v0, v1, v3}, Lmzp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmzp;->RELOAD_CONTA:Lmzp;

    .line 19
    new-instance v0, Lmzp;

    const-string v1, "RELOAD_CARTOES"

    invoke-direct {v0, v1, v4}, Lmzp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmzp;->RELOAD_CARTOES:Lmzp;

    .line 20
    new-instance v0, Lmzp;

    const-string v1, "RELOAD_CARTOES_DESBLOQUEIO"

    invoke-direct {v0, v1, v5}, Lmzp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmzp;->RELOAD_CARTOES_DESBLOQUEIO:Lmzp;

    .line 21
    new-instance v0, Lmzp;

    const-string v1, "RELOAD_INVESTIMENTO"

    invoke-direct {v0, v1, v6}, Lmzp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmzp;->RELOAD_INVESTIMENTO:Lmzp;

    .line 22
    new-instance v0, Lmzp;

    const-string v1, "RELOAD_POUPANCA"

    invoke-direct {v0, v1, v7}, Lmzp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmzp;->RELOAD_POUPANCA:Lmzp;

    .line 23
    new-instance v0, Lmzp;

    const-string v1, "RELOAD_EMPRESTIMOS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lmzp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmzp;->RELOAD_EMPRESTIMOS:Lmzp;

    .line 17
    const/4 v0, 0x6

    new-array v0, v0, [Lmzp;

    sget-object v1, Lmzp;->RELOAD_CONTA:Lmzp;

    aput-object v1, v0, v3

    sget-object v1, Lmzp;->RELOAD_CARTOES:Lmzp;

    aput-object v1, v0, v4

    sget-object v1, Lmzp;->RELOAD_CARTOES_DESBLOQUEIO:Lmzp;

    aput-object v1, v0, v5

    sget-object v1, Lmzp;->RELOAD_INVESTIMENTO:Lmzp;

    aput-object v1, v0, v6

    sget-object v1, Lmzp;->RELOAD_POUPANCA:Lmzp;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lmzp;->RELOAD_EMPRESTIMOS:Lmzp;

    aput-object v2, v0, v1

    sput-object v0, Lmzp;->$VALUES:[Lmzp;

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
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmzp;
    .locals 1

    .prologue
    .line 17
    const-class v0, Lmzp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmzp;

    return-object v0
.end method

.method public static values()[Lmzp;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lmzp;->$VALUES:[Lmzp;

    invoke-virtual {v0}, [Lmzp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmzp;

    return-object v0
.end method
