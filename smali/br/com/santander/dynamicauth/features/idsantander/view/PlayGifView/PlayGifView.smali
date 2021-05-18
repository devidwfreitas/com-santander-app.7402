.class public Lbr/com/santander/dynamicauth/features/idsantander/view/PlayGifView/PlayGifView;
.super Landroid/view/View;


# instance fields
.field private a:I

.field private b:Landroid/graphics/Movie;

.field private c:J

.field private d:I

.field private e:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v2, 0x1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lbr/com/santander/dynamicauth/features/idsantander/view/PlayGifView/PlayGifView;->c:J

    const/4 v0, 0x0

    iput v0, p0, Lbr/com/santander/dynamicauth/features/idsantander/view/PlayGifView/PlayGifView;->d:I

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lbr/com/santander/dynamicauth/features/idsantander/view/PlayGifView/PlayGifView;->e:Ljava/lang/Boolean;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lbr/com/santander/dynamicauth/features/idsantander/view/PlayGifView/PlayGifView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private a()V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v0, p0, Lbr/com/santander/dynamicauth/features/idsantander/view/PlayGifView/PlayGifView;->c:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    iput-wide v2, p0, Lbr/com/santander/dynamicauth/features/idsantander/view/PlayGifView/PlayGifView;->c:J

    :cond_0
    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/idsantander/view/PlayGifView/PlayGifView;->b:Landroid/graphics/Movie;

    invoke-virtual {v0}, Landroid/graphics/Movie;->duration()I

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x3e8

    :cond_1
    iget-wide v4, p0, Lbr/com/santander/dynamicauth/features/idsantander/view/PlayGifView/PlayGifView;->c:J

    sub-long/2addr v2, v4

    int-to-long v0, v0

    rem-long v0, v2, v0

    long-to-int v0, v0

    iput v0, p0, Lbr/com/santander/dynamicauth/features/idsantander/view/PlayGifView/PlayGifView;->d:I

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/idsantander/view/PlayGifView/PlayGifView;->b:Landroid/graphics/Movie;

    iget v1, p0, Lbr/com/santander/dynamicauth/features/idsantander/view/PlayGifView/PlayGifView;->d:I

    invoke-virtual {v0, v1}, Landroid/graphics/Movie;->setTime(I)Z

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/idsantander/view/PlayGifView/PlayGifView;->b:Landroid/graphics/Movie;

    invoke-virtual {v0, p1, v2, v2}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/idsantander/view/PlayGifView/PlayGifView;->b:Landroid/graphics/Movie;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lbr/com/santander/dynamicauth/features/idsantander/view/PlayGifView/PlayGifView;->a()V

    invoke-direct {p0, p1}, Lbr/com/santander/dynamicauth/features/idsantander/view/PlayGifView/PlayGifView;->a(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/idsantander/view/PlayGifView/PlayGifView;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbr/com/santander/dynamicauth/features/idsantander/view/PlayGifView/PlayGifView;->invalidate()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lbr/com/santander/dynamicauth/features/idsantander/view/PlayGifView/PlayGifView;->a(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/idsantander/view/PlayGifView/PlayGifView;->b:Landroid/graphics/Movie;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbr/com/santander/dynamicauth/features/idsantander/view/PlayGifView/PlayGifView;->b:Landroid/graphics/Movie;

    invoke-virtual {v0}, Landroid/graphics/Movie;->width()I

    move-result v0

    iget-object v1, p0, Lbr/com/santander/dynamicauth/features/idsantander/view/PlayGifView/PlayGifView;->b:Landroid/graphics/Movie;

    invoke-virtual {v1}, Landroid/graphics/Movie;->height()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lbr/com/santander/dynamicauth/features/idsantander/view/PlayGifView/PlayGifView;->setMeasuredDimension(II)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lbr/com/santander/dynamicauth/features/idsantander/view/PlayGifView/PlayGifView;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-virtual {p0}, Lbr/com/santander/dynamicauth/features/idsantander/view/PlayGifView/PlayGifView;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lbr/com/santander/dynamicauth/features/idsantander/view/PlayGifView/PlayGifView;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public setGifResource(I)V
    .locals 2

    iput p1, p0, Lbr/com/santander/dynamicauth/features/idsantander/view/PlayGifView/PlayGifView;->a:I

    invoke-virtual {p0}, Lbr/com/santander/dynamicauth/features/idsantander/view/PlayGifView/PlayGifView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lbr/com/santander/dynamicauth/features/idsantander/view/PlayGifView/PlayGifView;->a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v0

    iput-object v0, p0, Lbr/com/santander/dynamicauth/features/idsantander/view/PlayGifView/PlayGifView;->b:Landroid/graphics/Movie;

    invoke-virtual {p0}, Lbr/com/santander/dynamicauth/features/idsantander/view/PlayGifView/PlayGifView;->requestLayout()V

    return-void
.end method
