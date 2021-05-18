.class public final enum Lapw;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lapw;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lapw;

.field public static final enum Desabilitado:Lapw;

.field public static final enum Disponivel:Lapw;

.field public static final enum ForaHorario:Lapw;

.field public static final enum Indisponivel:Lapw;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 14
    new-instance v0, Lapw;

    const-string v1, "Disponivel"

    const-string v2, "disponivel"

    invoke-direct {v0, v1, v3, v2}, Lapw;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lapw;->Disponivel:Lapw;

    .line 15
    new-instance v0, Lapw;

    const-string v1, "Indisponivel"

    const-string v2, "indisponivel"

    invoke-direct {v0, v1, v4, v2}, Lapw;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lapw;->Indisponivel:Lapw;

    .line 16
    new-instance v0, Lapw;

    const-string v1, "ForaHorario"

    const-string v2, "foraHorario"

    invoke-direct {v0, v1, v5, v2}, Lapw;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lapw;->ForaHorario:Lapw;

    .line 17
    new-instance v0, Lapw;

    const-string v1, "Desabilitado"

    const-string v2, "desabilitado"

    invoke-direct {v0, v1, v6, v2}, Lapw;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lapw;->Desabilitado:Lapw;

    .line 12
    const/4 v0, 0x4

    new-array v0, v0, [Lapw;

    sget-object v1, Lapw;->Disponivel:Lapw;

    aput-object v1, v0, v3

    sget-object v1, Lapw;->Indisponivel:Lapw;

    aput-object v1, v0, v4

    sget-object v1, Lapw;->ForaHorario:Lapw;

    aput-object v1, v0, v5

    sget-object v1, Lapw;->Desabilitado:Lapw;

    aput-object v1, v0, v6

    sput-object v0, Lapw;->$VALUES:[Lapw;

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
    iput-object p3, p0, Lapw;->value:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lapw;
    .locals 5

    .prologue
    .line 30
    if-eqz p0, :cond_1

    .line 31
    invoke-static {}, Lapw;->values()[Lapw;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 32
    iget-object v4, v0, Lapw;->value:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 37
    :goto_1
    return-object v0

    .line 31
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 37
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lapw;
    .locals 1

    .prologue
    .line 12
    const-class v0, Lapw;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lapw;

    return-object v0
.end method

.method public static values()[Lapw;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lapw;->$VALUES:[Lapw;

    invoke-virtual {v0}, [Lapw;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lapw;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lapw;->value:Ljava/lang/String;

    return-object v0
.end method
