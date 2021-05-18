.class public final Lcnu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LoadingImageView:[I

.field public static final LoadingImageView_circleCrop:I = 0x2

.field public static final LoadingImageView_imageAspectRatio:I = 0x1

.field public static final LoadingImageView_imageAspectRatioAdjust:I = 0x0

.field public static final MapAttrs:[I

.field public static final MapAttrs_ambientEnabled:I = 0x10

.field public static final MapAttrs_cameraBearing:I = 0x1

.field public static final MapAttrs_cameraMaxZoomPreference:I = 0x12

.field public static final MapAttrs_cameraMinZoomPreference:I = 0x11

.field public static final MapAttrs_cameraTargetLat:I = 0x2

.field public static final MapAttrs_cameraTargetLng:I = 0x3

.field public static final MapAttrs_cameraTilt:I = 0x4

.field public static final MapAttrs_cameraZoom:I = 0x5

.field public static final MapAttrs_latLngBoundsNorthEastLatitude:I = 0x15

.field public static final MapAttrs_latLngBoundsNorthEastLongitude:I = 0x16

.field public static final MapAttrs_latLngBoundsSouthWestLatitude:I = 0x13

.field public static final MapAttrs_latLngBoundsSouthWestLongitude:I = 0x14

.field public static final MapAttrs_liteMode:I = 0x6

.field public static final MapAttrs_mapType:I = 0x0

.field public static final MapAttrs_uiCompass:I = 0x7

.field public static final MapAttrs_uiMapToolbar:I = 0xf

.field public static final MapAttrs_uiRotateGestures:I = 0x8

.field public static final MapAttrs_uiScrollGestures:I = 0x9

.field public static final MapAttrs_uiTiltGestures:I = 0xa

.field public static final MapAttrs_uiZoomControls:I = 0xb

.field public static final MapAttrs_uiZoomGestures:I = 0xc

.field public static final MapAttrs_useViewLifecycle:I = 0xd

.field public static final MapAttrs_zOrderOnTop:I = 0xe

.field public static final SignInButton:[I

.field public static final SignInButton_buttonSize:I = 0x0

.field public static final SignInButton_colorScheme:I = 0x1

.field public static final SignInButton_scopeUris:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 132
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcnu;->LoadingImageView:[I

    .line 136
    const/16 v0, 0x17

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcnu;->MapAttrs:[I

    .line 160
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcnu;->SignInButton:[I

    return-void

    .line 132
    nop

    :array_0
    .array-data 4
        0x7f01013a
        0x7f01013b
        0x7f01013c
    .end array-data

    .line 136
    :array_1
    .array-data 4
        0x7f010146
        0x7f010147
        0x7f010148
        0x7f010149
        0x7f01014a
        0x7f01014b
        0x7f01014c
        0x7f01014d
        0x7f01014e
        0x7f01014f
        0x7f010150
        0x7f010151
        0x7f010152
        0x7f010153
        0x7f010154
        0x7f010155
        0x7f010156
        0x7f010157
        0x7f010158
        0x7f010159
        0x7f01015a
        0x7f01015b
        0x7f01015c
    .end array-data

    .line 160
    :array_2
    .array-data 4
        0x7f0101ca
        0x7f0101cb
        0x7f0101cc
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
