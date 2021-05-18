.class public final enum Liut;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Liut;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Liut;

.field public static final enum HABILITACAO:Liut;

.field public static final enum HABILITACAO_ATM:Liut;

.field public static final enum OTIMIZACAO:Liut;

.field public static final enum PROCESSO_INTERROMPIDO:Liut;

.field public static final enum SINCRONIA:Liut;


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
    new-instance v0, Liut;

    const-string v1, "HABILITACAO"

    invoke-direct {v0, v1, v2}, Liut;-><init>(Ljava/lang/String;I)V

    sput-object v0, Liut;->HABILITACAO:Liut;

    .line 12
    new-instance v0, Liut;

    const-string v1, "OTIMIZACAO"

    invoke-direct {v0, v1, v3}, Liut;-><init>(Ljava/lang/String;I)V

    sput-object v0, Liut;->OTIMIZACAO:Liut;

    .line 13
    new-instance v0, Liut;

    const-string v1, "PROCESSO_INTERROMPIDO"

    invoke-direct {v0, v1, v4}, Liut;-><init>(Ljava/lang/String;I)V

    sput-object v0, Liut;->PROCESSO_INTERROMPIDO:Liut;

    .line 14
    new-instance v0, Liut;

    const-string v1, "SINCRONIA"

    invoke-direct {v0, v1, v5}, Liut;-><init>(Ljava/lang/String;I)V

    sput-object v0, Liut;->SINCRONIA:Liut;

    .line 15
    new-instance v0, Liut;

    const-string v1, "HABILITACAO_ATM"

    invoke-direct {v0, v1, v6}, Liut;-><init>(Ljava/lang/String;I)V

    sput-object v0, Liut;->HABILITACAO_ATM:Liut;

    .line 10
    const/4 v0, 0x5

    new-array v0, v0, [Liut;

    sget-object v1, Liut;->HABILITACAO:Liut;

    aput-object v1, v0, v2

    sget-object v1, Liut;->OTIMIZACAO:Liut;

    aput-object v1, v0, v3

    sget-object v1, Liut;->PROCESSO_INTERROMPIDO:Liut;

    aput-object v1, v0, v4

    sget-object v1, Liut;->SINCRONIA:Liut;

    aput-object v1, v0, v5

    sget-object v1, Liut;->HABILITACAO_ATM:Liut;

    aput-object v1, v0, v6

    sput-object v0, Liut;->$VALUES:[Liut;

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

.method public static valueOf(Ljava/lang/String;)Liut;
    .locals 1

    .prologue
    .line 10
    const-class v0, Liut;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Liut;

    return-object v0
.end method

.method public static values()[Liut;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Liut;->$VALUES:[Liut;

    invoke-virtual {v0}, [Liut;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Liut;

    return-object v0
.end method
