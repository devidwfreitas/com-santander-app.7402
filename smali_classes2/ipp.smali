.class public final enum Lipp;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lipp;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lipp;

.field public static final enum BOTAO_PAGAR_CONTA_HOME:Lipp;

.field public static final enum BOTAO_PAGAR_FATURA_HOME:Lipp;

.field public static final enum BOTAO_PARCELAR_FATURA_HOME:Lipp;

.field public static final enum CARTAO_DESBLOQUEIO_MENU_ITEM:Lipp;

.field public static final enum CARTAO_MENU_ITEM:Lipp;

.field public static final enum CARTOES_CARROSSEL_SELECTED:Lipp;

.field public static final enum INVESTIMENTOS:Lipp;

.field public static final enum POUPANCA_CARROSSEL_SELECTED:Lipp;

.field public static final enum POUPANCA_MENU_ITEM:Lipp;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-instance v0, Lipp;

    const-string v1, "POUPANCA_MENU_ITEM"

    invoke-direct {v0, v1, v3}, Lipp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lipp;->POUPANCA_MENU_ITEM:Lipp;

    .line 12
    new-instance v0, Lipp;

    const-string v1, "INVESTIMENTOS"

    invoke-direct {v0, v1, v4}, Lipp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lipp;->INVESTIMENTOS:Lipp;

    .line 13
    new-instance v0, Lipp;

    const-string v1, "POUPANCA_CARROSSEL_SELECTED"

    invoke-direct {v0, v1, v5}, Lipp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lipp;->POUPANCA_CARROSSEL_SELECTED:Lipp;

    .line 14
    new-instance v0, Lipp;

    const-string v1, "CARTOES_CARROSSEL_SELECTED"

    invoke-direct {v0, v1, v6}, Lipp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lipp;->CARTOES_CARROSSEL_SELECTED:Lipp;

    .line 15
    new-instance v0, Lipp;

    const-string v1, "CARTAO_DESBLOQUEIO_MENU_ITEM"

    invoke-direct {v0, v1, v7}, Lipp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lipp;->CARTAO_DESBLOQUEIO_MENU_ITEM:Lipp;

    .line 16
    new-instance v0, Lipp;

    const-string v1, "CARTAO_MENU_ITEM"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lipp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lipp;->CARTAO_MENU_ITEM:Lipp;

    .line 17
    new-instance v0, Lipp;

    const-string v1, "BOTAO_PAGAR_FATURA_HOME"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lipp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lipp;->BOTAO_PAGAR_FATURA_HOME:Lipp;

    .line 18
    new-instance v0, Lipp;

    const-string v1, "BOTAO_PARCELAR_FATURA_HOME"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lipp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lipp;->BOTAO_PARCELAR_FATURA_HOME:Lipp;

    .line 19
    new-instance v0, Lipp;

    const-string v1, "BOTAO_PAGAR_CONTA_HOME"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lipp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lipp;->BOTAO_PAGAR_CONTA_HOME:Lipp;

    .line 10
    const/16 v0, 0x9

    new-array v0, v0, [Lipp;

    sget-object v1, Lipp;->POUPANCA_MENU_ITEM:Lipp;

    aput-object v1, v0, v3

    sget-object v1, Lipp;->INVESTIMENTOS:Lipp;

    aput-object v1, v0, v4

    sget-object v1, Lipp;->POUPANCA_CARROSSEL_SELECTED:Lipp;

    aput-object v1, v0, v5

    sget-object v1, Lipp;->CARTOES_CARROSSEL_SELECTED:Lipp;

    aput-object v1, v0, v6

    sget-object v1, Lipp;->CARTAO_DESBLOQUEIO_MENU_ITEM:Lipp;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lipp;->CARTAO_MENU_ITEM:Lipp;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lipp;->BOTAO_PAGAR_FATURA_HOME:Lipp;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lipp;->BOTAO_PARCELAR_FATURA_HOME:Lipp;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lipp;->BOTAO_PAGAR_CONTA_HOME:Lipp;

    aput-object v2, v0, v1

    sput-object v0, Lipp;->$VALUES:[Lipp;

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

.method public static valueOf(Ljava/lang/String;)Lipp;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lipp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lipp;

    return-object v0
.end method

.method public static values()[Lipp;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lipp;->$VALUES:[Lipp;

    invoke-virtual {v0}, [Lipp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lipp;

    return-object v0
.end method
