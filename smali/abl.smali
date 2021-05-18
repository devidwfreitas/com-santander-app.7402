.class final Labl;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(F)F
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float v0, p0, v0

    return v0
.end method

.method public static a(I)I
    .locals 0

    .prologue
    .line 60
    sparse-switch p0, :sswitch_data_0

    .line 70
    :goto_0
    return p0

    .line 62
    :sswitch_0
    const p0, 0x800005

    goto :goto_0

    .line 64
    :sswitch_1
    const/16 p0, 0x50

    goto :goto_0

    .line 66
    :sswitch_2
    const p0, 0x800003

    goto :goto_0

    .line 68
    :sswitch_3
    const/16 p0, 0x30

    goto :goto_0

    .line 60
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_1
        0x50 -> :sswitch_3
        0x800003 -> :sswitch_0
        0x800005 -> :sswitch_2
    .end sparse-switch
.end method

.method public static a(Landroid/view/View;)Landroid/graphics/RectF;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 40
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 41
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 42
    new-instance v1, Landroid/graphics/RectF;

    aget v2, v0, v4

    int-to-float v2, v2

    aget v3, v0, v6

    int-to-float v3, v3

    aget v4, v0, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    aget v0, v0, v6

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v0, v5

    int-to-float v0, v0

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v1
.end method

.method public static a(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 76
    return-void
.end method

.method public static b(F)F
    .locals 1

    .prologue
    .line 56
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p0

    return v0
.end method

.method public static b(Landroid/view/View;)Landroid/graphics/RectF;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 47
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 48
    new-instance v1, Landroid/graphics/RectF;

    aget v2, v0, v4

    int-to-float v2, v2

    aget v3, v0, v6

    int-to-float v3, v3

    aget v4, v0, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    aget v0, v0, v6

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v0, v5

    int-to-float v0, v0

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v1
.end method
