.class public final enum Lgvu;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lgvu;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lgvu;

.field public static final enum COMPROVANTE_CAMBIO:Lgvu;

.field public static final enum COMPROVANTE_DEFAULT:Lgvu;

.field public static final enum COMPROVANTE_PAGAMENTO:Lgvu;

.field public static final enum COMPROVANTE_PREVIDENCIA:Lgvu;


# instance fields
.field private final valor:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 11
    new-instance v0, Lgvu;

    const-string v1, "COMPROVANTE_DEFAULT"

    invoke-direct {v0, v1, v5, v2}, Lgvu;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgvu;->COMPROVANTE_DEFAULT:Lgvu;

    new-instance v0, Lgvu;

    const-string v1, "COMPROVANTE_CAMBIO"

    invoke-direct {v0, v1, v2, v3}, Lgvu;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgvu;->COMPROVANTE_CAMBIO:Lgvu;

    new-instance v0, Lgvu;

    const-string v1, "COMPROVANTE_PAGAMENTO"

    invoke-direct {v0, v1, v3, v4}, Lgvu;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgvu;->COMPROVANTE_PAGAMENTO:Lgvu;

    new-instance v0, Lgvu;

    const-string v1, "COMPROVANTE_PREVIDENCIA"

    invoke-direct {v0, v1, v4, v6}, Lgvu;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgvu;->COMPROVANTE_PREVIDENCIA:Lgvu;

    .line 10
    new-array v0, v6, [Lgvu;

    sget-object v1, Lgvu;->COMPROVANTE_DEFAULT:Lgvu;

    aput-object v1, v0, v5

    sget-object v1, Lgvu;->COMPROVANTE_CAMBIO:Lgvu;

    aput-object v1, v0, v2

    sget-object v1, Lgvu;->COMPROVANTE_PAGAMENTO:Lgvu;

    aput-object v1, v0, v3

    sget-object v1, Lgvu;->COMPROVANTE_PREVIDENCIA:Lgvu;

    aput-object v1, v0, v4

    sput-object v0, Lgvu;->$VALUES:[Lgvu;

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
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput p3, p0, Lgvu;->valor:I

    .line 16
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lgvu;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lgvu;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lgvu;

    return-object v0
.end method

.method public static values()[Lgvu;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lgvu;->$VALUES:[Lgvu;

    invoke-virtual {v0}, [Lgvu;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgvu;

    return-object v0
.end method


# virtual methods
.method public getValor()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lgvu;->valor:I

    return v0
.end method
