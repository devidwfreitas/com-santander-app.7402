.class public final enum Ljsw;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljsw;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljsw;

.field public static final enum B:Ljsw;

.field public static final enum PF:Ljsw;

.field public static final enum PO:Ljsw;

.field public static final enum S:Ljsw;


# instance fields
.field private indicador:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-instance v0, Ljsw;

    const-string v1, "B"

    const-string v2, "B"

    invoke-direct {v0, v1, v3, v2}, Ljsw;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ljsw;->B:Ljsw;

    .line 12
    new-instance v0, Ljsw;

    const-string v1, "S"

    const-string v2, "S"

    invoke-direct {v0, v1, v4, v2}, Ljsw;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ljsw;->S:Ljsw;

    .line 13
    new-instance v0, Ljsw;

    const-string v1, "PO"

    const-string v2, "PO"

    invoke-direct {v0, v1, v5, v2}, Ljsw;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ljsw;->PO:Ljsw;

    .line 14
    new-instance v0, Ljsw;

    const-string v1, "PF"

    const-string v2, "PF"

    invoke-direct {v0, v1, v6, v2}, Ljsw;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ljsw;->PF:Ljsw;

    .line 10
    const/4 v0, 0x4

    new-array v0, v0, [Ljsw;

    sget-object v1, Ljsw;->B:Ljsw;

    aput-object v1, v0, v3

    sget-object v1, Ljsw;->S:Ljsw;

    aput-object v1, v0, v4

    sget-object v1, Ljsw;->PO:Ljsw;

    aput-object v1, v0, v5

    sget-object v1, Ljsw;->PF:Ljsw;

    aput-object v1, v0, v6

    sput-object v0, Ljsw;->$VALUES:[Ljsw;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput-object p3, p0, Ljsw;->indicador:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljsw;
    .locals 1

    .prologue
    .line 10
    const-class v0, Ljsw;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljsw;

    return-object v0
.end method

.method public static values()[Ljsw;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Ljsw;->$VALUES:[Ljsw;

    invoke-virtual {v0}, [Ljsw;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljsw;

    return-object v0
.end method


# virtual methods
.method public indicador()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Ljsw;->indicador:Ljava/lang/String;

    return-object v0
.end method
