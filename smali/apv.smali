.class public final enum Lapv;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lapv;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lapv;

.field public static final enum GerenteRelacionamento:Lapv;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 12
    new-instance v0, Lapv;

    const-string v1, "GerenteRelacionamento"

    const-string v2, "0001"

    invoke-direct {v0, v1, v3, v2}, Lapv;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lapv;->GerenteRelacionamento:Lapv;

    .line 10
    const/4 v0, 0x1

    new-array v0, v0, [Lapv;

    sget-object v1, Lapv;->GerenteRelacionamento:Lapv;

    aput-object v1, v0, v3

    sput-object v0, Lapv;->$VALUES:[Lapv;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput-object p3, p0, Lapv;->value:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lapv;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lapv;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lapv;

    return-object v0
.end method

.method public static values()[Lapv;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lapv;->$VALUES:[Lapv;

    invoke-virtual {v0}, [Lapv;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lapv;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lapv;->value:Ljava/lang/String;

    return-object v0
.end method
