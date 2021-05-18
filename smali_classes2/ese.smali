.class public final Lese;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zxing_camera_preview:[I

.field public static final zxing_camera_preview_zxing_framing_rect_height:I = 0x1

.field public static final zxing_camera_preview_zxing_framing_rect_width:I = 0x0

.field public static final zxing_camera_preview_zxing_preview_scaling_strategy:I = 0x3

.field public static final zxing_camera_preview_zxing_use_texture_view:I = 0x2

.field public static final zxing_finder:[I

.field public static final zxing_finder_zxing_possible_result_points:I = 0x0

.field public static final zxing_finder_zxing_result_view:I = 0x1

.field public static final zxing_finder_zxing_viewfinder_laser:I = 0x2

.field public static final zxing_finder_zxing_viewfinder_mask:I = 0x3

.field public static final zxing_view:[I

.field public static final zxing_view_zxing_scanner_layout:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x4

    .line 67
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lese;->zxing_camera_preview:[I

    .line 72
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lese;->zxing_finder:[I

    .line 77
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f010250

    aput v2, v0, v1

    sput-object v0, Lese;->zxing_view:[I

    return-void

    .line 67
    nop

    :array_0
    .array-data 4
        0x7f010248
        0x7f010249
        0x7f01024a
        0x7f01024b
    .end array-data

    .line 72
    :array_1
    .array-data 4
        0x7f01024c
        0x7f01024d
        0x7f01024e
        0x7f01024f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
