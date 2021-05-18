.class public final enum Lgvg;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lgvg;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lgvg;

.field public static final enum APLICACAO_CDB:Lgvg;

.field public static final enum APLICACAO_FUNDOS:Lgvg;

.field public static final enum APLICACAO_POUPANCA:Lgvg;

.field public static final enum FATURA_CARTAO:Lgvg;

.field public static final enum PAGAMENTO_CONTAS:Lgvg;

.field public static final enum PAGAMENTO_TITULO:Lgvg;

.field public static final enum REAPLICACAO_FUNDOS:Lgvg;

.field public static final enum REGARGA_CELULAR:Lgvg;

.field public static final enum RESGATE_PARCIAL_CDB:Lgvg;

.field public static final enum RESGATE_PARCIAL_FUNDOS:Lgvg;

.field public static final enum RESGATE_PARCIAL_POUPANCA:Lgvg;

.field public static final enum RESGATE_TOTAL_CDB:Lgvg;

.field public static final enum RESGATE_TOTAL_FUNDOS:Lgvg;

.field public static final enum RESGATE_TOTAL_POUPANCA:Lgvg;

.field public static final enum TRANSFERENCIA_DOC_D:Lgvg;

.field public static final enum TRANSFERENCIA_DOC_E:Lgvg;

.field public static final enum TRANSFERENCIA_ENTRE_CONTAS:Lgvg;

.field public static final enum TRANSFERENCIA_TED:Lgvg;


# instance fields
.field private final valor:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 79
    new-instance v0, Lgvg;

    const-string v1, "TRANSFERENCIA_ENTRE_CONTAS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lgvg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgvg;->TRANSFERENCIA_ENTRE_CONTAS:Lgvg;

    new-instance v0, Lgvg;

    const-string v1, "APLICACAO_POUPANCA"

    invoke-direct {v0, v1, v4, v5}, Lgvg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgvg;->APLICACAO_POUPANCA:Lgvg;

    new-instance v0, Lgvg;

    const-string v1, "RESGATE_PARCIAL_POUPANCA"

    invoke-direct {v0, v1, v5, v6}, Lgvg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgvg;->RESGATE_PARCIAL_POUPANCA:Lgvg;

    new-instance v0, Lgvg;

    const-string v1, "RESGATE_TOTAL_POUPANCA"

    invoke-direct {v0, v1, v6, v7}, Lgvg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgvg;->RESGATE_TOTAL_POUPANCA:Lgvg;

    new-instance v0, Lgvg;

    const-string v1, "FATURA_CARTAO"

    invoke-direct {v0, v1, v7, v8}, Lgvg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgvg;->FATURA_CARTAO:Lgvg;

    new-instance v0, Lgvg;

    const-string v1, "APLICACAO_FUNDOS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lgvg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgvg;->APLICACAO_FUNDOS:Lgvg;

    new-instance v0, Lgvg;

    const-string v1, "REAPLICACAO_FUNDOS"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lgvg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgvg;->REAPLICACAO_FUNDOS:Lgvg;

    new-instance v0, Lgvg;

    const-string v1, "RESGATE_PARCIAL_FUNDOS"

    const/4 v2, 0x7

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lgvg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgvg;->RESGATE_PARCIAL_FUNDOS:Lgvg;

    new-instance v0, Lgvg;

    const-string v1, "RESGATE_TOTAL_FUNDOS"

    const/16 v2, 0x8

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lgvg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgvg;->RESGATE_TOTAL_FUNDOS:Lgvg;

    .line 80
    new-instance v0, Lgvg;

    const-string v1, "PAGAMENTO_CONTAS"

    const/16 v2, 0x9

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lgvg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgvg;->PAGAMENTO_CONTAS:Lgvg;

    new-instance v0, Lgvg;

    const-string v1, "REGARGA_CELULAR"

    const/16 v2, 0xa

    const/16 v3, 0x22

    invoke-direct {v0, v1, v2, v3}, Lgvg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgvg;->REGARGA_CELULAR:Lgvg;

    new-instance v0, Lgvg;

    const-string v1, "PAGAMENTO_TITULO"

    const/16 v2, 0xb

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lgvg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgvg;->PAGAMENTO_TITULO:Lgvg;

    new-instance v0, Lgvg;

    const-string v1, "TRANSFERENCIA_DOC_D"

    const/16 v2, 0xc

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lgvg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgvg;->TRANSFERENCIA_DOC_D:Lgvg;

    new-instance v0, Lgvg;

    const-string v1, "TRANSFERENCIA_DOC_E"

    const/16 v2, 0xd

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lgvg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgvg;->TRANSFERENCIA_DOC_E:Lgvg;

    new-instance v0, Lgvg;

    const-string v1, "TRANSFERENCIA_TED"

    const/16 v2, 0xe

    const/16 v3, 0x12

    invoke-direct {v0, v1, v2, v3}, Lgvg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgvg;->TRANSFERENCIA_TED:Lgvg;

    new-instance v0, Lgvg;

    const-string v1, "APLICACAO_CDB"

    const/16 v2, 0xf

    const/16 v3, 0x18

    invoke-direct {v0, v1, v2, v3}, Lgvg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgvg;->APLICACAO_CDB:Lgvg;

    new-instance v0, Lgvg;

    const-string v1, "RESGATE_PARCIAL_CDB"

    const/16 v2, 0x10

    const/16 v3, 0x19

    invoke-direct {v0, v1, v2, v3}, Lgvg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgvg;->RESGATE_PARCIAL_CDB:Lgvg;

    new-instance v0, Lgvg;

    const-string v1, "RESGATE_TOTAL_CDB"

    const/16 v2, 0x11

    const/16 v3, 0x1a

    invoke-direct {v0, v1, v2, v3}, Lgvg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgvg;->RESGATE_TOTAL_CDB:Lgvg;

    .line 78
    const/16 v0, 0x12

    new-array v0, v0, [Lgvg;

    const/4 v1, 0x0

    sget-object v2, Lgvg;->TRANSFERENCIA_ENTRE_CONTAS:Lgvg;

    aput-object v2, v0, v1

    sget-object v1, Lgvg;->APLICACAO_POUPANCA:Lgvg;

    aput-object v1, v0, v4

    sget-object v1, Lgvg;->RESGATE_PARCIAL_POUPANCA:Lgvg;

    aput-object v1, v0, v5

    sget-object v1, Lgvg;->RESGATE_TOTAL_POUPANCA:Lgvg;

    aput-object v1, v0, v6

    sget-object v1, Lgvg;->FATURA_CARTAO:Lgvg;

    aput-object v1, v0, v7

    sget-object v1, Lgvg;->APLICACAO_FUNDOS:Lgvg;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lgvg;->REAPLICACAO_FUNDOS:Lgvg;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lgvg;->RESGATE_PARCIAL_FUNDOS:Lgvg;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lgvg;->RESGATE_TOTAL_FUNDOS:Lgvg;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lgvg;->PAGAMENTO_CONTAS:Lgvg;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lgvg;->REGARGA_CELULAR:Lgvg;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lgvg;->PAGAMENTO_TITULO:Lgvg;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lgvg;->TRANSFERENCIA_DOC_D:Lgvg;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lgvg;->TRANSFERENCIA_DOC_E:Lgvg;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lgvg;->TRANSFERENCIA_TED:Lgvg;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lgvg;->APLICACAO_CDB:Lgvg;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lgvg;->RESGATE_PARCIAL_CDB:Lgvg;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lgvg;->RESGATE_TOTAL_CDB:Lgvg;

    aput-object v2, v0, v1

    sput-object v0, Lgvg;->$VALUES:[Lgvg;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 85
    iput p3, p0, Lgvg;->valor:I

    .line 86
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lgvg;
    .locals 1

    .prologue
    .line 78
    const-class v0, Lgvg;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lgvg;

    return-object v0
.end method

.method public static values()[Lgvg;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lgvg;->$VALUES:[Lgvg;

    invoke-virtual {v0}, [Lgvg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgvg;

    return-object v0
.end method


# virtual methods
.method public getValor()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lgvg;->valor:I

    return v0
.end method
