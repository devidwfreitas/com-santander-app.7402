.class public final enum Lfac;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lfac;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfac;

.field private static final FOR_BITS:[Lfac;

.field public static final enum H:Lfac;

.field public static final enum L:Lfac;

.field public static final enum M:Lfac;

.field public static final enum Q:Lfac;


# instance fields
.field private final bits:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Lfac;

    const-string v1, "L"

    invoke-direct {v0, v1, v2, v3}, Lfac;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfac;->L:Lfac;

    .line 30
    new-instance v0, Lfac;

    const-string v1, "M"

    invoke-direct {v0, v1, v3, v2}, Lfac;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfac;->M:Lfac;

    .line 32
    new-instance v0, Lfac;

    const-string v1, "Q"

    invoke-direct {v0, v1, v4, v5}, Lfac;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfac;->Q:Lfac;

    .line 34
    new-instance v0, Lfac;

    const-string v1, "H"

    invoke-direct {v0, v1, v5, v4}, Lfac;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfac;->H:Lfac;

    .line 25
    new-array v0, v6, [Lfac;

    sget-object v1, Lfac;->L:Lfac;

    aput-object v1, v0, v2

    sget-object v1, Lfac;->M:Lfac;

    aput-object v1, v0, v3

    sget-object v1, Lfac;->Q:Lfac;

    aput-object v1, v0, v4

    sget-object v1, Lfac;->H:Lfac;

    aput-object v1, v0, v5

    sput-object v0, Lfac;->$VALUES:[Lfac;

    .line 36
    new-array v0, v6, [Lfac;

    sget-object v1, Lfac;->M:Lfac;

    aput-object v1, v0, v2

    sget-object v1, Lfac;->L:Lfac;

    aput-object v1, v0, v3

    sget-object v1, Lfac;->H:Lfac;

    aput-object v1, v0, v4

    sget-object v1, Lfac;->Q:Lfac;

    aput-object v1, v0, v5

    sput-object v0, Lfac;->FOR_BITS:[Lfac;

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
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput p3, p0, Lfac;->bits:I

    .line 42
    return-void
.end method

.method public static forBits(I)Lfac;
    .locals 1

    .prologue
    .line 53
    if-ltz p0, :cond_0

    sget-object v0, Lfac;->FOR_BITS:[Lfac;

    array-length v0, v0

    if-lt p0, v0, :cond_1

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 56
    :cond_1
    sget-object v0, Lfac;->FOR_BITS:[Lfac;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lfac;
    .locals 1

    .prologue
    .line 25
    const-class v0, Lfac;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lfac;

    return-object v0
.end method

.method public static values()[Lfac;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lfac;->$VALUES:[Lfac;

    invoke-virtual {v0}, [Lfac;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfac;

    return-object v0
.end method


# virtual methods
.method public getBits()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lfac;->bits:I

    return v0
.end method
