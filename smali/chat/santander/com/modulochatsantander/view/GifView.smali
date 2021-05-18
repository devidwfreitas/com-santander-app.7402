.class Lchat/santander/com/modulochatsantander/view/GifView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public a:Landroid/graphics/Movie;

.field public b:J

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-direct {p0}, Lchat/santander/com/modulochatsantander/view/GifView;->b()V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-direct {p0}, Lchat/santander/com/modulochatsantander/view/GifView;->b()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    invoke-direct {p0}, Lchat/santander/com/modulochatsantander/view/GifView;->b()V

    .line 35
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 38
    invoke-virtual {p0}, Lchat/santander/com/modulochatsantander/view/GifView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lapn;->chat_santander_loading_cinza:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 39
    invoke-static {v0}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v0

    iput-object v0, p0, Lchat/santander/com/modulochatsantander/view/GifView;->a:Landroid/graphics/Movie;

    .line 40
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lchat/santander/com/modulochatsantander/view/GifView;->c:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 70
    iput p1, p0, Lchat/santander/com/modulochatsantander/view/GifView;->c:I

    .line 71
    invoke-direct {p0}, Lchat/santander/com/modulochatsantander/view/GifView;->b()V

    .line 72
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 45
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 46
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 47
    iget-wide v2, p0, Lchat/santander/com/modulochatsantander/view/GifView;->b:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 48
    iput-wide v0, p0, Lchat/santander/com/modulochatsantander/view/GifView;->b:J

    .line 50
    :cond_0
    iget-object v2, p0, Lchat/santander/com/modulochatsantander/view/GifView;->a:Landroid/graphics/Movie;

    if-eqz v2, :cond_1

    .line 51
    iget-wide v2, p0, Lchat/santander/com/modulochatsantander/view/GifView;->b:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lchat/santander/com/modulochatsantander/view/GifView;->a:Landroid/graphics/Movie;

    invoke-virtual {v2}, Landroid/graphics/Movie;->duration()I

    move-result v2

    int-to-long v2, v2

    rem-long/2addr v0, v2

    long-to-int v0, v0

    .line 52
    iget-object v1, p0, Lchat/santander/com/modulochatsantander/view/GifView;->a:Landroid/graphics/Movie;

    invoke-virtual {v1, v0}, Landroid/graphics/Movie;->setTime(I)Z

    .line 53
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/view/GifView;->a:Landroid/graphics/Movie;

    invoke-virtual {p0}, Lchat/santander/com/modulochatsantander/view/GifView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lchat/santander/com/modulochatsantander/view/GifView;->a:Landroid/graphics/Movie;

    invoke-virtual {v2}, Landroid/graphics/Movie;->width()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Lchat/santander/com/modulochatsantander/view/GifView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lchat/santander/com/modulochatsantander/view/GifView;->a:Landroid/graphics/Movie;

    invoke-virtual {v3}, Landroid/graphics/Movie;->height()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    .line 54
    invoke-virtual {p0}, Lchat/santander/com/modulochatsantander/view/GifView;->invalidate()V

    .line 56
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/view/GifView;->a:Landroid/graphics/Movie;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lchat/santander/com/modulochatsantander/view/GifView;->a:Landroid/graphics/Movie;

    invoke-virtual {v0}, Landroid/graphics/Movie;->width()I

    move-result v0

    iget-object v1, p0, Lchat/santander/com/modulochatsantander/view/GifView;->a:Landroid/graphics/Movie;

    invoke-virtual {v1}, Landroid/graphics/Movie;->height()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lchat/santander/com/modulochatsantander/view/GifView;->setMeasuredDimension(II)V

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-virtual {p0}, Lchat/santander/com/modulochatsantander/view/GifView;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-virtual {p0}, Lchat/santander/com/modulochatsantander/view/GifView;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lchat/santander/com/modulochatsantander/view/GifView;->setMeasuredDimension(II)V

    goto :goto_0
.end method
