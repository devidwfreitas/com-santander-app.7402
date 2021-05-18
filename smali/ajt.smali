.class public final enum Lajt;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lajt;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lajt;

.field public static final enum CARTAO:Lajt;

.field public static final enum EMPRESTIMO:Lajt;

.field public static final enum FINANCIAMENTO:Lajt;

.field public static final enum RENEGOCIACAO:Lajt;

.field public static final enum USO_DE_LIMITE_DE_CONTA:Lajt;


# instance fields
.field code:I

.field name:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lajt;

    const-string v1, "USO_DE_LIMITE_DE_CONTA"

    const/16 v2, 0x16

    sget v3, Lagl;->tipo_uso_de_limite_de_conta:I

    invoke-direct {v0, v1, v4, v2, v3}, Lajt;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lajt;->USO_DE_LIMITE_DE_CONTA:Lajt;

    new-instance v0, Lajt;

    const-string v1, "CARTAO"

    const/16 v2, 0x42

    sget v3, Lagl;->tipo_cartao_de_credito:I

    invoke-direct {v0, v1, v5, v2, v3}, Lajt;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lajt;->CARTAO:Lajt;

    new-instance v0, Lajt;

    const-string v1, "EMPRESTIMO"

    const/16 v2, 0x20

    sget v3, Lagl;->tipo_emprestimo:I

    invoke-direct {v0, v1, v6, v2, v3}, Lajt;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lajt;->EMPRESTIMO:Lajt;

    new-instance v0, Lajt;

    const-string v1, "FINANCIAMENTO"

    const/16 v2, 0x56

    sget v3, Lagl;->tipo_financiamento:I

    invoke-direct {v0, v1, v7, v2, v3}, Lajt;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lajt;->FINANCIAMENTO:Lajt;

    new-instance v0, Lajt;

    const-string v1, "RENEGOCIACAO"

    const/16 v2, 0x3e

    sget v3, Lagl;->tipo_renegociacao:I

    invoke-direct {v0, v1, v8, v2, v3}, Lajt;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lajt;->RENEGOCIACAO:Lajt;

    const/4 v0, 0x5

    new-array v0, v0, [Lajt;

    sget-object v1, Lajt;->USO_DE_LIMITE_DE_CONTA:Lajt;

    aput-object v1, v0, v4

    sget-object v1, Lajt;->CARTAO:Lajt;

    aput-object v1, v0, v5

    sget-object v1, Lajt;->EMPRESTIMO:Lajt;

    aput-object v1, v0, v6

    sget-object v1, Lajt;->FINANCIAMENTO:Lajt;

    aput-object v1, v0, v7

    sget-object v1, Lajt;->RENEGOCIACAO:Lajt;

    aput-object v1, v0, v8

    sput-object v0, Lajt;->$VALUES:[Lajt;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lajt;->code:I

    iput p4, p0, Lajt;->name:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lajt;
    .locals 1

    const-class v0, Lajt;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lajt;

    return-object v0
.end method

.method public static values()[Lajt;
    .locals 1

    sget-object v0, Lajt;->$VALUES:[Lajt;

    invoke-virtual {v0}, [Lajt;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lajt;

    return-object v0
.end method


# virtual methods
.method public final getCode()I
    .locals 1

    iget v0, p0, Lajt;->code:I

    return v0
.end method

.method public final getName()I
    .locals 1

    iget v0, p0, Lajt;->name:I

    return v0
.end method
