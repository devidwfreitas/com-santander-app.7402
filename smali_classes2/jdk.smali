.class public final enum Ljdk;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljdk;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljdk;

.field public static final enum APLICAR:Ljdk;

.field public static final enum CANCELAR:Ljdk;

.field public static final enum EXTRATO:Ljdk;

.field public static final enum REAPLICAR:Ljdk;

.field public static final enum RESGATAR:Ljdk;


# instance fields
.field private label:Ljava/lang/String;


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
    new-instance v0, Ljdk;

    const-string v1, "APLICAR"

    const-string v2, "Aplicar"

    invoke-direct {v0, v1, v3, v2}, Ljdk;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ljdk;->APLICAR:Ljdk;

    .line 12
    new-instance v0, Ljdk;

    const-string v1, "REAPLICAR"

    const-string v2, "Aplicar"

    invoke-direct {v0, v1, v4, v2}, Ljdk;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ljdk;->REAPLICAR:Ljdk;

    .line 13
    new-instance v0, Ljdk;

    const-string v1, "EXTRATO"

    const-string v2, "Extrato"

    invoke-direct {v0, v1, v5, v2}, Ljdk;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ljdk;->EXTRATO:Ljdk;

    .line 14
    new-instance v0, Ljdk;

    const-string v1, "CANCELAR"

    const-string v2, "Cancelar"

    invoke-direct {v0, v1, v6, v2}, Ljdk;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ljdk;->CANCELAR:Ljdk;

    .line 15
    new-instance v0, Ljdk;

    const-string v1, "RESGATAR"

    const-string v2, "Resgatar"

    invoke-direct {v0, v1, v7, v2}, Ljdk;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ljdk;->RESGATAR:Ljdk;

    .line 10
    const/4 v0, 0x5

    new-array v0, v0, [Ljdk;

    sget-object v1, Ljdk;->APLICAR:Ljdk;

    aput-object v1, v0, v3

    sget-object v1, Ljdk;->REAPLICAR:Ljdk;

    aput-object v1, v0, v4

    sget-object v1, Ljdk;->EXTRATO:Ljdk;

    aput-object v1, v0, v5

    sget-object v1, Ljdk;->CANCELAR:Ljdk;

    aput-object v1, v0, v6

    sget-object v1, Ljdk;->RESGATAR:Ljdk;

    aput-object v1, v0, v7

    sput-object v0, Ljdk;->$VALUES:[Ljdk;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput-object p3, p0, Ljdk;->label:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljdk;
    .locals 1

    .prologue
    .line 10
    const-class v0, Ljdk;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljdk;

    return-object v0
.end method

.method public static values()[Ljdk;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Ljdk;->$VALUES:[Ljdk;

    invoke-virtual {v0}, [Ljdk;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljdk;

    return-object v0
.end method


# virtual methods
.method public label()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Ljdk;->label:Ljava/lang/String;

    return-object v0
.end method
