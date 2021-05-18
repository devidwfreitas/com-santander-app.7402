.class public final enum Lfnw;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lfnw;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfnw;

.field public static final enum CanalBloqueadoPorDemaisMotivos:Lfnw;

.field public static final enum CanalBloqueadoPorFraude:Lfnw;

.field public static final enum CpfNaoCadastradoEmPE:Lfnw;

.field public static final enum ErroAoProcessar:Lfnw;

.field public static final enum FezOptInNoCanal:Lfnw;

.field public static final enum NaoCadastradoNoSN:Lfnw;

.field public static final enum NaoFezOptInNoCanal:Lfnw;

.field public static final enum NaoFezOptInNoCanalComPendencia:Lfnw;

.field public static final enum NaoFezOptInNoCanalSemPendencia:Lfnw;

.field public static final enum SenhaCancelada:Lfnw;

.field public static final enum SenhaElegivelPG:Lfnw;

.field public static final enum SenhaNaoElegivelPG:Lfnw;


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
    new-instance v0, Lfnw;

    const-string v1, "CpfNaoCadastradoEmPE"

    invoke-direct {v0, v1, v3}, Lfnw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfnw;->CpfNaoCadastradoEmPE:Lfnw;

    .line 12
    new-instance v0, Lfnw;

    const-string v1, "SenhaElegivelPG"

    invoke-direct {v0, v1, v4}, Lfnw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfnw;->SenhaElegivelPG:Lfnw;

    .line 13
    new-instance v0, Lfnw;

    const-string v1, "SenhaNaoElegivelPG"

    invoke-direct {v0, v1, v5}, Lfnw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfnw;->SenhaNaoElegivelPG:Lfnw;

    .line 14
    new-instance v0, Lfnw;

    const-string v1, "SenhaCancelada"

    invoke-direct {v0, v1, v6}, Lfnw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfnw;->SenhaCancelada:Lfnw;

    .line 15
    new-instance v0, Lfnw;

    const-string v1, "NaoCadastradoNoSN"

    invoke-direct {v0, v1, v7}, Lfnw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfnw;->NaoCadastradoNoSN:Lfnw;

    .line 16
    new-instance v0, Lfnw;

    const-string v1, "CanalBloqueadoPorFraude"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lfnw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfnw;->CanalBloqueadoPorFraude:Lfnw;

    .line 17
    new-instance v0, Lfnw;

    const-string v1, "CanalBloqueadoPorDemaisMotivos"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lfnw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfnw;->CanalBloqueadoPorDemaisMotivos:Lfnw;

    .line 18
    new-instance v0, Lfnw;

    const-string v1, "FezOptInNoCanal"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lfnw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfnw;->FezOptInNoCanal:Lfnw;

    .line 19
    new-instance v0, Lfnw;

    const-string v1, "NaoFezOptInNoCanal"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lfnw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfnw;->NaoFezOptInNoCanal:Lfnw;

    .line 20
    new-instance v0, Lfnw;

    const-string v1, "ErroAoProcessar"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lfnw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfnw;->ErroAoProcessar:Lfnw;

    .line 21
    new-instance v0, Lfnw;

    const-string v1, "NaoFezOptInNoCanalComPendencia"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lfnw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfnw;->NaoFezOptInNoCanalComPendencia:Lfnw;

    .line 22
    new-instance v0, Lfnw;

    const-string v1, "NaoFezOptInNoCanalSemPendencia"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lfnw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfnw;->NaoFezOptInNoCanalSemPendencia:Lfnw;

    .line 10
    const/16 v0, 0xc

    new-array v0, v0, [Lfnw;

    sget-object v1, Lfnw;->CpfNaoCadastradoEmPE:Lfnw;

    aput-object v1, v0, v3

    sget-object v1, Lfnw;->SenhaElegivelPG:Lfnw;

    aput-object v1, v0, v4

    sget-object v1, Lfnw;->SenhaNaoElegivelPG:Lfnw;

    aput-object v1, v0, v5

    sget-object v1, Lfnw;->SenhaCancelada:Lfnw;

    aput-object v1, v0, v6

    sget-object v1, Lfnw;->NaoCadastradoNoSN:Lfnw;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lfnw;->CanalBloqueadoPorFraude:Lfnw;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lfnw;->CanalBloqueadoPorDemaisMotivos:Lfnw;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lfnw;->FezOptInNoCanal:Lfnw;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lfnw;->NaoFezOptInNoCanal:Lfnw;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lfnw;->ErroAoProcessar:Lfnw;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lfnw;->NaoFezOptInNoCanalComPendencia:Lfnw;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lfnw;->NaoFezOptInNoCanalSemPendencia:Lfnw;

    aput-object v2, v0, v1

    sput-object v0, Lfnw;->$VALUES:[Lfnw;

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

.method public static valueOf(Ljava/lang/String;)Lfnw;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lfnw;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lfnw;

    return-object v0
.end method

.method public static values()[Lfnw;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lfnw;->$VALUES:[Lfnw;

    invoke-virtual {v0}, [Lfnw;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfnw;

    return-object v0
.end method
