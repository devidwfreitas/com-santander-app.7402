.class public final enum Lkvx;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lkvx;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkvx;

.field public static final enum ADVISED:Lkvx;

.field public static final enum ANALYSIS:Lkvx;

.field public static final enum COMPLETED:Lkvx;

.field public static final enum DOCUMENTATION:Lkvx;

.field public static final enum SURVEY:Lkvx;


# instance fields
.field private statusCheck:Z

.field private step:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 12
    new-instance v0, Lkvx;

    const-string v1, "ADVISED"

    const-string v2, "0"

    invoke-direct {v0, v1, v4, v2, v3}, Lkvx;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lkvx;->ADVISED:Lkvx;

    new-instance v0, Lkvx;

    const-string v1, "SURVEY"

    const-string v2, "1"

    invoke-direct {v0, v1, v3, v2, v3}, Lkvx;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lkvx;->SURVEY:Lkvx;

    new-instance v0, Lkvx;

    const-string v1, "DOCUMENTATION"

    const-string v2, "2"

    invoke-direct {v0, v1, v5, v2, v3}, Lkvx;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lkvx;->DOCUMENTATION:Lkvx;

    new-instance v0, Lkvx;

    const-string v1, "ANALYSIS"

    const-string v2, "3"

    invoke-direct {v0, v1, v6, v2, v3}, Lkvx;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lkvx;->ANALYSIS:Lkvx;

    new-instance v0, Lkvx;

    const-string v1, "COMPLETED"

    const-string v2, "4"

    invoke-direct {v0, v1, v7, v2, v3}, Lkvx;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lkvx;->COMPLETED:Lkvx;

    .line 10
    const/4 v0, 0x5

    new-array v0, v0, [Lkvx;

    sget-object v1, Lkvx;->ADVISED:Lkvx;

    aput-object v1, v0, v4

    sget-object v1, Lkvx;->SURVEY:Lkvx;

    aput-object v1, v0, v3

    sget-object v1, Lkvx;->DOCUMENTATION:Lkvx;

    aput-object v1, v0, v5

    sget-object v1, Lkvx;->ANALYSIS:Lkvx;

    aput-object v1, v0, v6

    sget-object v1, Lkvx;->COMPLETED:Lkvx;

    aput-object v1, v0, v7

    sput-object v0, Lkvx;->$VALUES:[Lkvx;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput-object p3, p0, Lkvx;->step:Ljava/lang/String;

    .line 19
    iput-boolean p4, p0, Lkvx;->statusCheck:Z

    .line 20
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lkvx;
    .locals 5

    .prologue
    .line 27
    if-eqz p0, :cond_1

    .line 28
    invoke-static {}, Lkvx;->values()[Lkvx;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 29
    invoke-virtual {v0}, Lkvx;->getStep()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 34
    :goto_1
    return-object v0

    .line 28
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 34
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lkvx;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lkvx;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lkvx;

    return-object v0
.end method

.method public static values()[Lkvx;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lkvx;->$VALUES:[Lkvx;

    invoke-virtual {v0}, [Lkvx;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkvx;

    return-object v0
.end method


# virtual methods
.method public getStep()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lkvx;->step:Ljava/lang/String;

    return-object v0
.end method
