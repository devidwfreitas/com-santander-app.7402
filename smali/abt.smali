.class public final enum Labt;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Labt;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Labt;

.field public static final enum ANNUAL_ADMIN_FEE:Labt;

.field public static final enum ANOTHER_DEADLINE_INDEX:Labt;

.field public static final enum DEADLINES_LIST:Labt;

.field public static final enum INVESTMENT_HOUR_LIMIT:Labt;

.field public static final enum INVESTMENT_SCHEDULING_INDEX:Labt;

.field public static final enum MAX_DEADLINE:Labt;

.field public static final enum MIN_DEADLINE:Labt;

.field public static final enum MIN_INITIAL_INVESTMENT:Labt;

.field public static final enum MIN_INJECTION:Labt;

.field public static final enum MIN_MONTHLY_SCHEDULE:Labt;

.field public static final enum MONTHLY_SCHEDULE_INDEX:Labt;

.field public static final enum PROFITABILITY:Labt;

.field public static final enum PROGRESSIVE_INDEX:Labt;

.field public static final enum REDEMPTION_TYPE:Labt;


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

    .line 9
    new-instance v0, Labt;

    const-string v1, "MIN_INJECTION"

    const-string v2, "valorMinimoAporte"

    invoke-direct {v0, v1, v4, v2}, Labt;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Labt;->MIN_INJECTION:Labt;

    .line 10
    new-instance v0, Labt;

    const-string v1, "MIN_INITIAL_INVESTMENT"

    const-string v2, "valorMinimoInvestimentoInicial"

    invoke-direct {v0, v1, v5, v2}, Labt;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Labt;->MIN_INITIAL_INVESTMENT:Labt;

    .line 11
    new-instance v0, Labt;

    const-string v1, "MIN_MONTHLY_SCHEDULE"

    const-string v2, "valorMinimoProgramacaoMensal"

    invoke-direct {v0, v1, v6, v2}, Labt;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Labt;->MIN_MONTHLY_SCHEDULE:Labt;

    .line 12
    new-instance v0, Labt;

    const-string v1, "PROFITABILITY"

    const-string v2, "rentabilidade"

    invoke-direct {v0, v1, v7, v2}, Labt;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Labt;->PROFITABILITY:Labt;

    .line 13
    new-instance v0, Labt;

    const-string v1, "PROGRESSIVE_INDEX"

    const-string v2, "indicadorProgressivo"

    invoke-direct {v0, v1, v8, v2}, Labt;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Labt;->PROGRESSIVE_INDEX:Labt;

    .line 14
    new-instance v0, Labt;

    const-string v1, "MONTHLY_SCHEDULE_INDEX"

    const/4 v2, 0x5

    const-string v3, "indicadorProgramacaoMensal"

    invoke-direct {v0, v1, v2, v3}, Labt;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Labt;->MONTHLY_SCHEDULE_INDEX:Labt;

    .line 15
    new-instance v0, Labt;

    const-string v1, "REDEMPTION_TYPE"

    const/4 v2, 0x6

    const-string v3, "tipoResgate"

    invoke-direct {v0, v1, v2, v3}, Labt;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Labt;->REDEMPTION_TYPE:Labt;

    .line 16
    new-instance v0, Labt;

    const-string v1, "INVESTMENT_SCHEDULING_INDEX"

    const/4 v2, 0x7

    const-string v3, "indicadorAgendamentoAplicacao"

    invoke-direct {v0, v1, v2, v3}, Labt;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Labt;->INVESTMENT_SCHEDULING_INDEX:Labt;

    .line 17
    new-instance v0, Labt;

    const-string v1, "INVESTMENT_HOUR_LIMIT"

    const/16 v2, 0x8

    const-string v3, "horarioLimiteInvestimento"

    invoke-direct {v0, v1, v2, v3}, Labt;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Labt;->INVESTMENT_HOUR_LIMIT:Labt;

    .line 18
    new-instance v0, Labt;

    const-string v1, "ANNUAL_ADMIN_FEE"

    const/16 v2, 0x9

    const-string v3, "taxaAdministracaoAnual"

    invoke-direct {v0, v1, v2, v3}, Labt;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Labt;->ANNUAL_ADMIN_FEE:Labt;

    .line 19
    new-instance v0, Labt;

    const-string v1, "ANOTHER_DEADLINE_INDEX"

    const/16 v2, 0xa

    const-string v3, "indicadorOutroPrazo"

    invoke-direct {v0, v1, v2, v3}, Labt;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Labt;->ANOTHER_DEADLINE_INDEX:Labt;

    .line 20
    new-instance v0, Labt;

    const-string v1, "MAX_DEADLINE"

    const/16 v2, 0xb

    const-string v3, "prazoMaximo"

    invoke-direct {v0, v1, v2, v3}, Labt;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Labt;->MAX_DEADLINE:Labt;

    .line 21
    new-instance v0, Labt;

    const-string v1, "MIN_DEADLINE"

    const/16 v2, 0xc

    const-string v3, "prazoMinimo"

    invoke-direct {v0, v1, v2, v3}, Labt;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Labt;->MIN_DEADLINE:Labt;

    .line 22
    new-instance v0, Labt;

    const-string v1, "DEADLINES_LIST"

    const/16 v2, 0xd

    const-string v3, "listaPrazos"

    invoke-direct {v0, v1, v2, v3}, Labt;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Labt;->DEADLINES_LIST:Labt;

    .line 7
    const/16 v0, 0xe

    new-array v0, v0, [Labt;

    sget-object v1, Labt;->MIN_INJECTION:Labt;

    aput-object v1, v0, v4

    sget-object v1, Labt;->MIN_INITIAL_INVESTMENT:Labt;

    aput-object v1, v0, v5

    sget-object v1, Labt;->MIN_MONTHLY_SCHEDULE:Labt;

    aput-object v1, v0, v6

    sget-object v1, Labt;->PROFITABILITY:Labt;

    aput-object v1, v0, v7

    sget-object v1, Labt;->PROGRESSIVE_INDEX:Labt;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Labt;->MONTHLY_SCHEDULE_INDEX:Labt;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Labt;->REDEMPTION_TYPE:Labt;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Labt;->INVESTMENT_SCHEDULING_INDEX:Labt;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Labt;->INVESTMENT_HOUR_LIMIT:Labt;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Labt;->ANNUAL_ADMIN_FEE:Labt;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Labt;->ANOTHER_DEADLINE_INDEX:Labt;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Labt;->MAX_DEADLINE:Labt;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Labt;->MIN_DEADLINE:Labt;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Labt;->DEADLINES_LIST:Labt;

    aput-object v2, v0, v1

    sput-object v0, Labt;->$VALUES:[Labt;

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
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput-object p3, p0, Labt;->name:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Labt;
    .locals 1

    .prologue
    .line 7
    const-class v0, Labt;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Labt;

    return-object v0
.end method

.method public static values()[Labt;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Labt;->$VALUES:[Labt;

    invoke-virtual {v0}, [Labt;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Labt;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Labt;->name:Ljava/lang/String;

    return-object v0
.end method
