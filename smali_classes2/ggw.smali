.class public final enum Lggw;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lggw;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lggw;

.field public static final enum PERDA:Lggw;

.field public static final enum ROUBO:Lggw;

.field public static final enum SELECIONE_MOTIVO:Lggw;


# instance fields
.field private id:I

.field private label:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 12
    new-instance v0, Lggw;

    const-string v1, "SELECIONE_MOTIVO"

    const-string v2, "Selecione um motivo"

    invoke-direct {v0, v1, v4, v4, v2}, Lggw;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lggw;->SELECIONE_MOTIVO:Lggw;

    .line 13
    new-instance v0, Lggw;

    const-string v1, "PERDA"

    const/16 v2, 0x17

    const-string v3, "Perda"

    invoke-direct {v0, v1, v5, v2, v3}, Lggw;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lggw;->PERDA:Lggw;

    .line 14
    new-instance v0, Lggw;

    const-string v1, "ROUBO"

    const/16 v2, 0x19

    const-string v3, "Roubo"

    invoke-direct {v0, v1, v6, v2, v3}, Lggw;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lggw;->ROUBO:Lggw;

    .line 11
    const/4 v0, 0x3

    new-array v0, v0, [Lggw;

    sget-object v1, Lggw;->SELECIONE_MOTIVO:Lggw;

    aput-object v1, v0, v4

    sget-object v1, Lggw;->PERDA:Lggw;

    aput-object v1, v0, v5

    sget-object v1, Lggw;->ROUBO:Lggw;

    aput-object v1, v0, v6

    sput-object v0, Lggw;->$VALUES:[Lggw;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput p3, p0, Lggw;->id:I

    .line 22
    iput-object p4, p0, Lggw;->label:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lggw;
    .locals 1

    .prologue
    .line 11
    const-class v0, Lggw;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lggw;

    return-object v0
.end method

.method public static values()[Lggw;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lggw;->$VALUES:[Lggw;

    invoke-virtual {v0}, [Lggw;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lggw;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lggw;->id:I

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lggw;->label:Ljava/lang/String;

    return-object v0
.end method
