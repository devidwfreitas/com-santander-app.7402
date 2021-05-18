.class public Lbet;
.super Landroid/animation/ValueAnimator;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Z

.field private c:F

.field private d:F

.field private e:J

.field private f:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 13
    iput-boolean v0, p0, Lbet;->a:Z

    .line 14
    iput-boolean v0, p0, Lbet;->b:Z

    .line 15
    iput v1, p0, Lbet;->c:F

    .line 16
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lbet;->d:F

    .line 19
    iput v1, p0, Lbet;->f:F

    .line 22
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lbet;->setFloatValues([F)V

    .line 28
    new-instance v0, Lbeu;

    invoke-direct {v0, p0}, Lbeu;-><init>(Lbet;)V

    invoke-virtual {p0, v0}, Lbet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 38
    new-instance v0, Lbev;

    invoke-direct {v0, p0}, Lbev;-><init>(Lbet;)V

    invoke-virtual {p0, v0}, Lbet;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 47
    return-void

    .line 22
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic a(Lbet;)F
    .locals 1

    .prologue
    .line 12
    iget v0, p0, Lbet;->c:F

    return v0
.end method

.method static synthetic a(Lbet;F)F
    .locals 0

    .prologue
    .line 12
    iput p1, p0, Lbet;->f:F

    return p1
.end method

.method static synthetic b(Lbet;)F
    .locals 1

    .prologue
    .line 12
    iget v0, p0, Lbet;->d:F

    return v0
.end method

.method static synthetic c(Lbet;)Z
    .locals 1

    .prologue
    .line 12
    iget-boolean v0, p0, Lbet;->a:Z

    return v0
.end method

.method private d(F)V
    .locals 4
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 88
    iget v0, p0, Lbet;->c:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    .line 89
    iget p1, p0, Lbet;->c:F

    .line 93
    :cond_0
    :goto_0
    iput p1, p0, Lbet;->f:F

    .line 94
    invoke-virtual {p0}, Lbet;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 95
    iget v0, p0, Lbet;->c:F

    sub-float v0, p1, v0

    iget v1, p0, Lbet;->d:F

    iget v2, p0, Lbet;->c:F

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    .line 96
    invoke-virtual {p0}, Lbet;->getDuration()J

    move-result-wide v2

    long-to-float v1, v2

    mul-float/2addr v0, v1

    float-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lbet;->setCurrentPlayTime(J)V

    .line 98
    :cond_1
    return-void

    .line 90
    :cond_2
    iget v0, p0, Lbet;->d:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 91
    iget p1, p0, Lbet;->d:F

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbet;->a:Z

    .line 59
    return-void
.end method

.method public a(F)V
    .locals 1
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 74
    iget v0, p0, Lbet;->f:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 78
    :goto_0
    return-void

    .line 77
    :cond_0
    invoke-direct {p0, p1}, Lbet;->d(F)V

    goto :goto_0
.end method

.method public a(FF)V
    .locals 6

    .prologue
    .line 142
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 143
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 144
    const/4 v0, 0x2

    new-array v3, v0, [F

    const/4 v4, 0x0

    iget-boolean v0, p0, Lbet;->b:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    aput v0, v3, v4

    const/4 v4, 0x1

    iget-boolean v0, p0, Lbet;->b:Z

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    aput v0, v3, v4

    invoke-virtual {p0, v3}, Lbet;->setFloatValues([F)V

    .line 148
    iget-wide v4, p0, Lbet;->e:J

    long-to-float v0, v4

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-long v0, v0

    invoke-super {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 149
    invoke-virtual {p0}, Lbet;->c()F

    move-result v0

    invoke-virtual {p0, v0}, Lbet;->a(F)V

    .line 150
    return-void

    :cond_0
    move v0, v2

    .line 144
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 106
    iput-boolean p1, p0, Lbet;->b:Z

    .line 107
    iget v0, p0, Lbet;->c:F

    iget v1, p0, Lbet;->d:F

    invoke-virtual {p0, v0, v1}, Lbet;->a(FF)V

    .line 108
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lbet;->c()F

    move-result v0

    invoke-direct {p0, v0}, Lbet;->d(F)V

    .line 85
    return-void
.end method

.method public b(F)V
    .locals 1

    .prologue
    .line 111
    iput p1, p0, Lbet;->c:F

    .line 112
    iget v0, p0, Lbet;->d:F

    invoke-virtual {p0, p1, v0}, Lbet;->a(FF)V

    .line 113
    return-void
.end method

.method public c()F
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lbet;->f:F

    return v0
.end method

.method public c(F)V
    .locals 1

    .prologue
    .line 116
    iput p1, p0, Lbet;->d:F

    .line 117
    iget v0, p0, Lbet;->c:F

    invoke-virtual {p0, v0, p1}, Lbet;->a(FF)V

    .line 118
    return-void
.end method

.method public d()F
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lbet;->c:F

    return v0
.end method

.method public e()F
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lbet;->d:F

    return v0
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lbet;->f:F

    .line 130
    invoke-virtual {p0}, Lbet;->start()V

    .line 132
    invoke-virtual {p0, v0}, Lbet;->a(F)V

    .line 133
    return-void
.end method

.method public bridge synthetic setDuration(J)Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0, p1, p2}, Lbet;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public setDuration(J)Landroid/animation/ValueAnimator;
    .locals 3

    .prologue
    .line 62
    iput-wide p1, p0, Lbet;->e:J

    .line 63
    iget v0, p0, Lbet;->c:F

    iget v1, p0, Lbet;->d:F

    invoke-virtual {p0, v0, v1}, Lbet;->a(FF)V

    .line 64
    return-object p0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lbet;->a:Z

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lbet;->e()F

    move-result v0

    invoke-virtual {p0, v0}, Lbet;->a(F)V

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-super {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method
