.class public Lazg;
.super Laxz;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Laxz",
        "<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private f:Landroid/graphics/Path;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lawr;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V
    .locals 0
    .param p2    # Landroid/graphics/PointF;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/PointF;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/view/animation/Interpolator;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Float;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 23
    invoke-direct/range {p0 .. p6}, Laxz;-><init>(Lawr;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 24
    return-void
.end method

.method synthetic constructor <init>(Lawr;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/view/animation/Interpolator;FLjava/lang/Float;Lazh;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct/range {p0 .. p6}, Lazg;-><init>(Lawr;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    return-void
.end method

.method static synthetic a(Lazg;Landroid/graphics/Path;)Landroid/graphics/Path;
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lazg;->f:Landroid/graphics/Path;

    return-object p1
.end method


# virtual methods
.method e()Landroid/graphics/Path;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lazg;->f:Landroid/graphics/Path;

    return-object v0
.end method
