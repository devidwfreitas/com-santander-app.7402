.class public final Lnnr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CircleIndicator:[I

.field public static final CircleIndicator_ci_animator:I = 0x3

.field public static final CircleIndicator_ci_animator_reverse:I = 0x4

.field public static final CircleIndicator_ci_drawable:I = 0x5

.field public static final CircleIndicator_ci_drawable_unselected:I = 0x6

.field public static final CircleIndicator_ci_gravity:I = 0x8

.field public static final CircleIndicator_ci_height:I = 0x1

.field public static final CircleIndicator_ci_margin:I = 0x2

.field public static final CircleIndicator_ci_orientation:I = 0x7

.field public static final CircleIndicator_ci_width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lnnr;->CircleIndicator:[I

    return-void

    :array_0
    .array-data 4
        0x7f0100c8
        0x7f0100c9
        0x7f0100ca
        0x7f0100cb
        0x7f0100cc
        0x7f0100cd
        0x7f0100ce
        0x7f0100cf
        0x7f0100d0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
