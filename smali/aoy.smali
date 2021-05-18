.class public final Laoy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MultiStateLayout:[I

.field public static final MultiStateLayout_msl_emptyLayout:I = 0x1

.field public static final MultiStateLayout_msl_errorLayout:I = 0x2

.field public static final MultiStateLayout_msl_loadingLayout:I = 0x0

.field public static final MultiStateLayout_msl_state:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Laoy;->MultiStateLayout:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f01016f
        0x7f010170
        0x7f010171
        0x7f010172
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
