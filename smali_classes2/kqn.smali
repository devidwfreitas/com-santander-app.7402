.class public final enum Lkqn;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lkqn;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkqn;

.field public static final enum ACIDENTES_PESSOAIS:Lkqn;

.field public static final enum DEFAULT:Lkqn;

.field public static final enum VAN_GOGH:Lkqn;

.field public static final enum VIDA:Lkqn;

.field public static final enum VIDA_HOMEM:Lkqn;

.field public static final enum VIDA_MULHER:Lkqn;

.field public static final enum VIDA_SELECT:Lkqn;


# instance fields
.field private code:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 12
    new-instance v0, Lkqn;

    const-string v1, "VIDA_SELECT"

    const-string v2, "571740"

    invoke-direct {v0, v1, v4, v2}, Lkqn;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkqn;->VIDA_SELECT:Lkqn;

    new-instance v0, Lkqn;

    const-string v1, "VAN_GOGH"

    const-string v2, "571676"

    invoke-direct {v0, v1, v5, v2}, Lkqn;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkqn;->VAN_GOGH:Lkqn;

    new-instance v0, Lkqn;

    const-string v1, "VIDA_HOMEM"

    const-string v2, "571814"

    invoke-direct {v0, v1, v6, v2}, Lkqn;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkqn;->VIDA_HOMEM:Lkqn;

    new-instance v0, Lkqn;

    const-string v1, "VIDA_MULHER"

    const-string v2, "571815"

    invoke-direct {v0, v1, v7, v2}, Lkqn;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkqn;->VIDA_MULHER:Lkqn;

    new-instance v0, Lkqn;

    const-string v1, "VIDA"

    const-string v2, ""

    invoke-direct {v0, v1, v8, v2}, Lkqn;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkqn;->VIDA:Lkqn;

    new-instance v0, Lkqn;

    const-string v1, "ACIDENTES_PESSOAIS"

    const/4 v2, 0x5

    const-string v3, "571813"

    invoke-direct {v0, v1, v2, v3}, Lkqn;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkqn;->ACIDENTES_PESSOAIS:Lkqn;

    new-instance v0, Lkqn;

    const-string v1, "DEFAULT"

    const/4 v2, 0x6

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lkqn;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lkqn;->DEFAULT:Lkqn;

    .line 10
    const/4 v0, 0x7

    new-array v0, v0, [Lkqn;

    sget-object v1, Lkqn;->VIDA_SELECT:Lkqn;

    aput-object v1, v0, v4

    sget-object v1, Lkqn;->VAN_GOGH:Lkqn;

    aput-object v1, v0, v5

    sget-object v1, Lkqn;->VIDA_HOMEM:Lkqn;

    aput-object v1, v0, v6

    sget-object v1, Lkqn;->VIDA_MULHER:Lkqn;

    aput-object v1, v0, v7

    sget-object v1, Lkqn;->VIDA:Lkqn;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lkqn;->ACIDENTES_PESSOAIS:Lkqn;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lkqn;->DEFAULT:Lkqn;

    aput-object v2, v0, v1

    sput-object v0, Lkqn;->$VALUES:[Lkqn;

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
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput-object p3, p0, Lkqn;->code:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkqn;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lkqn;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lkqn;

    return-object v0
.end method

.method public static values()[Lkqn;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lkqn;->$VALUES:[Lkqn;

    invoke-virtual {v0}, [Lkqn;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkqn;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lkqn;->code:Ljava/lang/String;

    return-object v0
.end method
