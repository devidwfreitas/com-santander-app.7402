.class public Lcom/santander/app/components/view/PlayGifView/PlayGifView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lgrl;


# static fields
.field private static final a:I = 0x3e8


# instance fields
.field private b:I

.field private c:Landroid/graphics/Movie;

.field private d:J

.field private e:I

.field private f:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->d:J

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->e:I

    .line 29
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->f:Ljava/lang/Boolean;

    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 40
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 42
    :cond_0
    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 100
    iget-object v0, p0, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->c:Landroid/graphics/Movie;

    iget v1, p0, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->e:I

    invoke-virtual {v0, v1}, Landroid/graphics/Movie;->setTime(I)Z

    .line 101
    iget-object v0, p0, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->c:Landroid/graphics/Movie;

    invoke-virtual {v0, p1, v2, v2}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    .line 102
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 103
    return-void
.end method

.method private b()V
    .locals 6

    .prologue
    .line 87
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 89
    iget-wide v0, p0, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->d:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 90
    iput-wide v2, p0, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->d:J

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->c:Landroid/graphics/Movie;

    invoke-virtual {v0}, Landroid/graphics/Movie;->duration()I

    move-result v0

    .line 93
    if-nez v0, :cond_1

    .line 94
    const/16 v0, 0x3e8

    .line 96
    :cond_1
    iget-wide v4, p0, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->d:J

    sub-long/2addr v2, v4

    int-to-long v0, v0

    rem-long v0, v2, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->e:I

    .line 97
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->f:Ljava/lang/Boolean;

    .line 113
    :goto_0
    return-void

    .line 110
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->f:Ljava/lang/Boolean;

    .line 111
    invoke-virtual {p0}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->invalidate()V

    goto :goto_0
.end method

.method public a(I)V
    .locals 4

    .prologue
    .line 117
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->f:Ljava/lang/Boolean;

    .line 118
    invoke-virtual {p0}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->invalidate()V

    .line 119
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lgrn;

    invoke-direct {v1, p0}, Lgrn;-><init>(Lcom/santander/app/components/view/PlayGifView/PlayGifView;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 124
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->c:Landroid/graphics/Movie;

    if-eqz v0, :cond_1

    .line 76
    invoke-direct {p0}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->b()V

    .line 77
    invoke-direct {p0, p1}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->a(Landroid/graphics/Canvas;)V

    .line 78
    iget-object v0, p0, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->invalidate()V

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    invoke-direct {p0, p1}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->a(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->c:Landroid/graphics/Movie;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->c:Landroid/graphics/Movie;

    invoke-virtual {v0}, Landroid/graphics/Movie;->width()I

    move-result v0

    iget-object v1, p0, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->c:Landroid/graphics/Movie;

    invoke-virtual {v1}, Landroid/graphics/Movie;->height()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->setMeasuredDimension(II)V

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public setGifResource(I)V
    .locals 2

    .prologue
    .line 46
    iput p1, p0, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->b:I

    .line 47
    invoke-virtual {p0}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->b:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->c:Landroid/graphics/Movie;

    .line 48
    invoke-virtual {p0}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->requestLayout()V

    .line 49
    return-void
.end method

.method public setGifResourceWithDuration(II)V
    .locals 4

    .prologue
    .line 53
    iput p1, p0, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->b:I

    .line 54
    invoke-virtual {p0}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->b:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->c:Landroid/graphics/Movie;

    .line 55
    invoke-virtual {p0}, Lcom/santander/app/components/view/PlayGifView/PlayGifView;->requestLayout()V

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lgrm;

    invoke-direct {v1, p0}, Lgrm;-><init>(Lcom/santander/app/components/view/PlayGifView/PlayGifView;)V

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 62
    return-void
.end method
