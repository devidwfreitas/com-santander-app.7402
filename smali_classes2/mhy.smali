.class public Lmhy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$PageTransformer;


# static fields
.field private static final a:F = 0.65f


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const v4, 0x3f0ccccd    # 0.55f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 18
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 22
    cmpg-float v1, p2, v3

    if-gtz v1, :cond_0

    .line 23
    const v1, 0x3f266666    # 0.65f

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float v2, v3, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 24
    const/4 v2, 0x0

    cmpg-float v2, p2, v2

    if-gez v2, :cond_1

    .line 25
    div-float/2addr v0, v5

    add-float/2addr v0, v4

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 29
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 30
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 34
    :cond_0
    return-void

    .line 27
    :cond_1
    div-float/2addr v0, v5

    add-float/2addr v0, v4

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0
.end method
