.class public final enum Lmfn;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmfn;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmfn;

.field public static final enum CHECK_GREEN:Lmfn;

.field public static final enum COMPLETED_GREEN:Lmfn;

.field public static final enum DEFAULT_GRAY:Lmfn;

.field public static final enum WAVE_GREEN_ONE:Lmfn;

.field public static final enum WAVE_GREEN_THREE:Lmfn;

.field public static final enum WAVE_GREEN_TWO:Lmfn;


# instance fields
.field private colorRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 30
    new-instance v0, Lmfn;

    const-string v1, "COMPLETED_GREEN"

    const v2, 0x7f020378

    invoke-direct {v0, v1, v4, v2}, Lmfn;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmfn;->COMPLETED_GREEN:Lmfn;

    .line 31
    new-instance v0, Lmfn;

    const-string v1, "WAVE_GREEN_ONE"

    const v2, 0x7f02049f

    invoke-direct {v0, v1, v5, v2}, Lmfn;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmfn;->WAVE_GREEN_ONE:Lmfn;

    .line 32
    new-instance v0, Lmfn;

    const-string v1, "WAVE_GREEN_TWO"

    const v2, 0x7f0204a0

    invoke-direct {v0, v1, v6, v2}, Lmfn;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmfn;->WAVE_GREEN_TWO:Lmfn;

    .line 33
    new-instance v0, Lmfn;

    const-string v1, "WAVE_GREEN_THREE"

    const v2, 0x7f0204a1

    invoke-direct {v0, v1, v7, v2}, Lmfn;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmfn;->WAVE_GREEN_THREE:Lmfn;

    .line 34
    new-instance v0, Lmfn;

    const-string v1, "DEFAULT_GRAY"

    const v2, 0x7f020373

    invoke-direct {v0, v1, v8, v2}, Lmfn;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmfn;->DEFAULT_GRAY:Lmfn;

    .line 35
    new-instance v0, Lmfn;

    const-string v1, "CHECK_GREEN"

    const/4 v2, 0x5

    const v3, 0x7f02036e

    invoke-direct {v0, v1, v2, v3}, Lmfn;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmfn;->CHECK_GREEN:Lmfn;

    .line 28
    const/4 v0, 0x6

    new-array v0, v0, [Lmfn;

    sget-object v1, Lmfn;->COMPLETED_GREEN:Lmfn;

    aput-object v1, v0, v4

    sget-object v1, Lmfn;->WAVE_GREEN_ONE:Lmfn;

    aput-object v1, v0, v5

    sget-object v1, Lmfn;->WAVE_GREEN_TWO:Lmfn;

    aput-object v1, v0, v6

    sget-object v1, Lmfn;->WAVE_GREEN_THREE:Lmfn;

    aput-object v1, v0, v7

    sget-object v1, Lmfn;->DEFAULT_GRAY:Lmfn;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lmfn;->CHECK_GREEN:Lmfn;

    aput-object v2, v0, v1

    sput-object v0, Lmfn;->$VALUES:[Lmfn;

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
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput p3, p0, Lmfn;->colorRes:I

    .line 41
    return-void
.end method

.method public static synthetic access$000(Lmfn;)I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lmfn;->colorRes:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lmfn;
    .locals 1

    .prologue
    .line 28
    const-class v0, Lmfn;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmfn;

    return-object v0
.end method

.method public static values()[Lmfn;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lmfn;->$VALUES:[Lmfn;

    invoke-virtual {v0}, [Lmfn;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmfn;

    return-object v0
.end method


# virtual methods
.method public getRes()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lmfn;->colorRes:I

    return v0
.end method
