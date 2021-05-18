.class public final enum Leqa;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Leqa;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Leqa;

.field public static final enum AZTEC_LAYERS:Leqa;

.field public static final enum CHARACTER_SET:Leqa;

.field public static final enum DATA_MATRIX_SHAPE:Leqa;

.field public static final enum ERROR_CORRECTION:Leqa;

.field public static final enum MARGIN:Leqa;

.field public static final enum MAX_SIZE:Leqa;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum MIN_SIZE:Leqa;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum PDF417_COMPACT:Leqa;

.field public static final enum PDF417_COMPACTION:Leqa;

.field public static final enum PDF417_DIMENSIONS:Leqa;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 34
    new-instance v0, Leqa;

    const-string v1, "ERROR_CORRECTION"

    invoke-direct {v0, v1, v3}, Leqa;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leqa;->ERROR_CORRECTION:Leqa;

    .line 39
    new-instance v0, Leqa;

    const-string v1, "CHARACTER_SET"

    invoke-direct {v0, v1, v4}, Leqa;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leqa;->CHARACTER_SET:Leqa;

    .line 44
    new-instance v0, Leqa;

    const-string v1, "DATA_MATRIX_SHAPE"

    invoke-direct {v0, v1, v5}, Leqa;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leqa;->DATA_MATRIX_SHAPE:Leqa;

    .line 52
    new-instance v0, Leqa;

    const-string v1, "MIN_SIZE"

    invoke-direct {v0, v1, v6}, Leqa;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leqa;->MIN_SIZE:Leqa;

    .line 60
    new-instance v0, Leqa;

    const-string v1, "MAX_SIZE"

    invoke-direct {v0, v1, v7}, Leqa;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leqa;->MAX_SIZE:Leqa;

    .line 68
    new-instance v0, Leqa;

    const-string v1, "MARGIN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Leqa;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leqa;->MARGIN:Leqa;

    .line 73
    new-instance v0, Leqa;

    const-string v1, "PDF417_COMPACT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Leqa;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leqa;->PDF417_COMPACT:Leqa;

    .line 79
    new-instance v0, Leqa;

    const-string v1, "PDF417_COMPACTION"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Leqa;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leqa;->PDF417_COMPACTION:Leqa;

    .line 85
    new-instance v0, Leqa;

    const-string v1, "PDF417_DIMENSIONS"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Leqa;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leqa;->PDF417_DIMENSIONS:Leqa;

    .line 93
    new-instance v0, Leqa;

    const-string v1, "AZTEC_LAYERS"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Leqa;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leqa;->AZTEC_LAYERS:Leqa;

    .line 24
    const/16 v0, 0xa

    new-array v0, v0, [Leqa;

    sget-object v1, Leqa;->ERROR_CORRECTION:Leqa;

    aput-object v1, v0, v3

    sget-object v1, Leqa;->CHARACTER_SET:Leqa;

    aput-object v1, v0, v4

    sget-object v1, Leqa;->DATA_MATRIX_SHAPE:Leqa;

    aput-object v1, v0, v5

    sget-object v1, Leqa;->MIN_SIZE:Leqa;

    aput-object v1, v0, v6

    sget-object v1, Leqa;->MAX_SIZE:Leqa;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Leqa;->MARGIN:Leqa;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Leqa;->PDF417_COMPACT:Leqa;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Leqa;->PDF417_COMPACTION:Leqa;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Leqa;->PDF417_DIMENSIONS:Leqa;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Leqa;->AZTEC_LAYERS:Leqa;

    aput-object v2, v0, v1

    sput-object v0, Leqa;->$VALUES:[Leqa;

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
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Leqa;
    .locals 1

    .prologue
    .line 24
    const-class v0, Leqa;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Leqa;

    return-object v0
.end method

.method public static values()[Leqa;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Leqa;->$VALUES:[Leqa;

    invoke-virtual {v0}, [Leqa;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Leqa;

    return-object v0
.end method
