.class public Lcom/santander/app/components/view/floatingTimer/FloatingTimer;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/RectF;

.field private f:Landroid/graphics/RectF;

.field private g:F

.field private h:F

.field private i:J

.field private j:J

.field private k:Ljava/lang/String;

.field private l:Lgtx;

.field private m:Landroid/os/CountDownTimer;

.field private n:Ljava/text/SimpleDateFormat;

.field private o:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x1

    .line 47
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->e:Landroid/graphics/RectF;

    .line 30
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->f:Landroid/graphics/RectF;

    .line 31
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->g:F

    .line 32
    const/high16 v0, 0x40e00000    # 7.0f

    iput v0, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->h:F

    .line 34
    iput-wide v2, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->i:J

    .line 35
    iput-wide v2, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->j:J

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->k:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->n:Ljava/text/SimpleDateFormat;

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->o:Landroid/graphics/Paint;

    .line 48
    invoke-direct {p0, p1}, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->a(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x1

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->e:Landroid/graphics/RectF;

    .line 30
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->f:Landroid/graphics/RectF;

    .line 31
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->g:F

    .line 32
    const/high16 v0, 0x40e00000    # 7.0f

    iput v0, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->h:F

    .line 34
    iput-wide v2, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->i:J

    .line 35
    iput-wide v2, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->j:J

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->k:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->n:Ljava/text/SimpleDateFormat;

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->o:Landroid/graphics/Paint;

    .line 53
    invoke-direct {p0, p1}, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->a(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x1

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->e:Landroid/graphics/RectF;

    .line 30
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->f:Landroid/graphics/RectF;

    .line 31
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->g:F

    .line 32
    const/high16 v0, 0x40e00000    # 7.0f

    iput v0, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->h:F

    .line 34
    iput-wide v2, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->i:J

    .line 35
    iput-wide v2, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->j:J

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->k:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->n:Ljava/text/SimpleDateFormat;

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->o:Landroid/graphics/Paint;

    .line 58
    invoke-direct {p0, p1}, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->a(Landroid/content/Context;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x1

    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 29
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->e:Landroid/graphics/RectF;

    .line 30
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->f:Landroid/graphics/RectF;

    .line 31
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->g:F

    .line 32
    const/high16 v0, 0x40e00000    # 7.0f

    iput v0, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->h:F

    .line 34
    iput-wide v2, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->i:J

    .line 35
    iput-wide v2, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->j:J

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->k:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->n:Ljava/text/SimpleDateFormat;

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->o:Landroid/graphics/Paint;

    .line 63
    invoke-direct {p0, p1}, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->a(Landroid/content/Context;)V

    .line 64
    return-void
.end method

.method private a(I)I
    .locals 4

    .prologue
    .line 110
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 111
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 112
    const/high16 v1, 0x40000000    # 2.0f

    if-ne v2, v1, :cond_0

    .line 120
    :goto_0
    return v0

    .line 115
    :cond_0
    const/16 v1, 0x64

    .line 116
    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_1

    .line 117
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static synthetic a(Lcom/santander/app/components/view/floatingTimer/FloatingTimer;)Lgtx;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->l:Lgtx;

    return-object v0
.end method

.method private a(J)Ljava/lang/String;
    .locals 3

    .prologue
    .line 154
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 155
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 156
    iget-object v1, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->n:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/high16 v4, -0x10000

    const/4 v3, 0x1

    .line 124
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->a:Landroid/graphics/Paint;

    .line 125
    iget-object v0, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 126
    iget-object v0, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 128
    const/high16 v0, 0x41800000    # 16.0f

    .line 130
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 132
    iget-object v2, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->a:Landroid/graphics/Paint;

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 133
    iget-object v0, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->o:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 134
    const-string v0, "00:00"

    invoke-direct {p0, v0}, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->a(Ljava/lang/String;)V

    .line 136
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->c:Landroid/graphics/Paint;

    .line 137
    iget-object v0, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 138
    iget-object v0, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 139
    iget-object v0, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 140
    iget-object v0, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->c:Landroid/graphics/Paint;

    iget v1, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->g:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 142
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->d:Landroid/graphics/Paint;

    .line 143
    iget-object v0, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 144
    iget-object v0, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 145
    iget-object v0, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 146
    iget-object v0, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->d:Landroid/graphics/Paint;

    iget v1, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->h:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 148
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->b:Landroid/graphics/Paint;

    .line 149
    iget-object v0, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 150
    iget-object v0, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 151
    return-void
.end method

.method public static synthetic a(Lcom/santander/app/components/view/floatingTimer/FloatingTimer;J)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->b(J)V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/components/view/floatingTimer/FloatingTimer;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->k:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public static synthetic b(Lcom/santander/app/components/view/floatingTimer/FloatingTimer;J)Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->a(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(J)V
    .locals 5

    .prologue
    .line 160
    iput-wide p1, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->i:J

    .line 161
    iget-wide v0, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->i:J

    iget-wide v2, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->j:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 162
    iget-wide v0, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->i:J

    iget-wide v2, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->j:J

    rem-long/2addr v0, v2

    iput-wide v0, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->i:J

    .line 164
    :cond_0
    invoke-virtual {p0}, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->invalidate()V

    .line 165
    return-void
.end method

.method private c()F
    .locals 4

    .prologue
    .line 105
    const-wide/16 v0, 0x64

    iget-wide v2, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->i:J

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->j:J

    div-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    .line 181
    iget-wide v0, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->j:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->m:Landroid/os/CountDownTimer;

    if-nez v0, :cond_0

    .line 184
    new-instance v0, Lgtw;

    iget-wide v2, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->j:J

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lgtw;-><init>(Lcom/santander/app/components/view/floatingTimer/FloatingTimer;JJ)V

    iput-object v0, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->m:Landroid/os/CountDownTimer;

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->m:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 203
    :cond_1
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->m:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->m:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 209
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/high16 v2, 0x43340000    # 180.0f

    const/4 v4, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    .line 78
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 80
    const/4 v0, 0x2

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    .line 81
    iget-object v1, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->e:Landroid/graphics/RectF;

    .line 83
    invoke-virtual {p0}, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    .line 84
    invoke-virtual {p0}, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v0

    .line 81
    invoke-virtual {v1, v0, v0, v3, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 85
    iget-object v1, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->f:Landroid/graphics/RectF;

    .line 87
    invoke-virtual {p0}, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    .line 88
    invoke-virtual {p0}, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v0

    .line 85
    invoke-virtual {v1, v0, v0, v3, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 90
    invoke-virtual {p0}, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->g:F

    iget v3, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->h:F

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->g:F

    iget v3, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->h:F

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    div-float/2addr v0, v6

    .line 91
    invoke-virtual {p0}, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v6

    invoke-virtual {p0}, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v6

    iget-object v5, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v0, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 92
    iget-object v1, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->e:Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->c()F

    move-result v3

    iget-object v5, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->c:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 93
    iget-object v1, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->f:Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->c()F

    move-result v0

    add-float/2addr v2, v0

    const/high16 v0, 0x43b40000    # 360.0f

    invoke-direct {p0}, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->c()F

    move-result v3

    sub-float v3, v0, v3

    iget-object v5, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->d:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 96
    iget-object v0, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->k:Ljava/lang/String;

    .line 97
    iget-object v1, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->k:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->a:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    iget-object v2, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->a:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    add-float/2addr v1, v2

    .line 99
    invoke-virtual {p0}, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->a:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v6

    invoke-virtual {p0}, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float v1, v3, v1

    div-float/2addr v1, v6

    iget-object v3, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 102
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->a(I)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->a(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->setMeasuredDimension(II)V

    .line 74
    return-void
.end method

.method public setTempoMaximo(J)V
    .locals 3

    .prologue
    .line 172
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 173
    iput-wide p1, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->j:J

    .line 174
    invoke-direct {p0, p1, p2}, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->b(J)V

    .line 175
    invoke-direct {p0, p1, p2}, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->a(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->invalidate()V

    .line 178
    :cond_0
    return-void
.end method

.method public setTimerInterface(Lgtx;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/santander/app/components/view/floatingTimer/FloatingTimer;->l:Lgtx;

    .line 68
    return-void
.end method
