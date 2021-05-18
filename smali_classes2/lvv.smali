.class public final enum Llvv;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Llvv;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Llvv;

.field public static final enum ENVIAR:Llvv;

.field public static final enum GONE:Llvv;

.field public static final enum REENVIAR:Llvv;

.field public static final enum VISUALIZAR:Llvv;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    new-instance v0, Llvv;

    const-string v1, "ENVIAR"

    invoke-direct {v0, v1, v2}, Llvv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llvv;->ENVIAR:Llvv;

    new-instance v0, Llvv;

    const-string v1, "REENVIAR"

    invoke-direct {v0, v1, v3}, Llvv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llvv;->REENVIAR:Llvv;

    new-instance v0, Llvv;

    const-string v1, "VISUALIZAR"

    invoke-direct {v0, v1, v4}, Llvv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llvv;->VISUALIZAR:Llvv;

    new-instance v0, Llvv;

    const-string v1, "GONE"

    invoke-direct {v0, v1, v5}, Llvv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llvv;->GONE:Llvv;

    .line 36
    const/4 v0, 0x4

    new-array v0, v0, [Llvv;

    sget-object v1, Llvv;->ENVIAR:Llvv;

    aput-object v1, v0, v2

    sget-object v1, Llvv;->REENVIAR:Llvv;

    aput-object v1, v0, v3

    sget-object v1, Llvv;->VISUALIZAR:Llvv;

    aput-object v1, v0, v4

    sget-object v1, Llvv;->GONE:Llvv;

    aput-object v1, v0, v5

    sput-object v0, Llvv;->$VALUES:[Llvv;

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
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Llvv;
    .locals 1

    .prologue
    .line 36
    const-class v0, Llvv;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Llvv;

    return-object v0
.end method

.method public static values()[Llvv;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Llvv;->$VALUES:[Llvv;

    invoke-virtual {v0}, [Llvv;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Llvv;

    return-object v0
.end method
