.class public final enum Lgfg;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lgfg;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lgfg;

.field public static final enum CONTAS_PAGAR_RECEBER:Lgfg;

.field public static final enum CONTA_CORRENTE:Lgfg;

.field public static final enum DERIVATIVOS:Lgfg;

.field public static final enum FUNDOS:Lgfg;

.field public static final enum RENDA_FIXA:Lgfg;

.field public static final enum RENDA_VARIAVEL:Lgfg;

.field public static final enum RENTABILIDADE:Lgfg;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 12
    new-instance v0, Lgfg;

    const-string v1, "CONTA_CORRENTE"

    const-string v2, "Conta-corrente"

    invoke-direct {v0, v1, v4, v2}, Lgfg;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lgfg;->CONTA_CORRENTE:Lgfg;

    .line 13
    new-instance v0, Lgfg;

    const-string v1, "RENDA_FIXA"

    const-string v2, "Renda Fixa"

    invoke-direct {v0, v1, v5, v2}, Lgfg;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lgfg;->RENDA_FIXA:Lgfg;

    .line 14
    new-instance v0, Lgfg;

    const-string v1, "FUNDOS"

    const-string v2, "Fundos"

    invoke-direct {v0, v1, v6, v2}, Lgfg;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lgfg;->FUNDOS:Lgfg;

    .line 15
    new-instance v0, Lgfg;

    const-string v1, "RENDA_VARIAVEL"

    const-string v2, "Renda Vari\u00e1vel"

    invoke-direct {v0, v1, v7, v2}, Lgfg;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lgfg;->RENDA_VARIAVEL:Lgfg;

    .line 16
    new-instance v0, Lgfg;

    const-string v1, "DERIVATIVOS"

    const-string v2, "Derivativos"

    invoke-direct {v0, v1, v8, v2}, Lgfg;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lgfg;->DERIVATIVOS:Lgfg;

    .line 17
    new-instance v0, Lgfg;

    const-string v1, "CONTAS_PAGAR_RECEBER"

    const/4 v2, 0x5

    const-string v3, "Contas a pagar/receber"

    invoke-direct {v0, v1, v2, v3}, Lgfg;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lgfg;->CONTAS_PAGAR_RECEBER:Lgfg;

    .line 18
    new-instance v0, Lgfg;

    const-string v1, "RENTABILIDADE"

    const/4 v2, 0x6

    const-string v3, "Rentabilidade"

    invoke-direct {v0, v1, v2, v3}, Lgfg;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lgfg;->RENTABILIDADE:Lgfg;

    .line 10
    const/4 v0, 0x7

    new-array v0, v0, [Lgfg;

    sget-object v1, Lgfg;->CONTA_CORRENTE:Lgfg;

    aput-object v1, v0, v4

    sget-object v1, Lgfg;->RENDA_FIXA:Lgfg;

    aput-object v1, v0, v5

    sget-object v1, Lgfg;->FUNDOS:Lgfg;

    aput-object v1, v0, v6

    sget-object v1, Lgfg;->RENDA_VARIAVEL:Lgfg;

    aput-object v1, v0, v7

    sget-object v1, Lgfg;->DERIVATIVOS:Lgfg;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lgfg;->CONTAS_PAGAR_RECEBER:Lgfg;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lgfg;->RENTABILIDADE:Lgfg;

    aput-object v2, v0, v1

    sput-object v0, Lgfg;->$VALUES:[Lgfg;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput-object p3, p0, Lgfg;->name:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lgfg;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lgfg;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lgfg;

    return-object v0
.end method

.method public static values()[Lgfg;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lgfg;->$VALUES:[Lgfg;

    invoke-virtual {v0}, [Lgfg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgfg;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lgfg;->name:Ljava/lang/String;

    return-object v0
.end method
