.class public Lcfw;
.super Lcfk;
.source "SourceFile"


# instance fields
.field private a:F

.field private b:F

.field private c:I

.field private d:Landroid/graphics/Paint$Style;

.field private e:Ljava/lang/String;

.field private f:Landroid/graphics/DashPathEffect;

.field private g:Lcfx;


# direct methods
.method public constructor <init>(F)V
    .locals 2

    .prologue
    const/16 v1, 0x5b

    .line 51
    invoke-direct {p0}, Lcfk;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcfw;->a:F

    .line 23
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcfw;->b:F

    .line 26
    const/16 v0, 0xed

    invoke-static {v0, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcfw;->c:I

    .line 29
    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    iput-object v0, p0, Lcfw;->d:Landroid/graphics/Paint$Style;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcfw;->e:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcfw;->f:Landroid/graphics/DashPathEffect;

    .line 38
    sget-object v0, Lcfx;->RIGHT_TOP:Lcfx;

    iput-object v0, p0, Lcfw;->g:Lcfx;

    .line 52
    iput p1, p0, Lcfw;->a:F

    .line 53
    return-void
.end method

.method public constructor <init>(FLjava/lang/String;)V
    .locals 2

    .prologue
    const/16 v1, 0x5b

    .line 62
    invoke-direct {p0}, Lcfk;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcfw;->a:F

    .line 23
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcfw;->b:F

    .line 26
    const/16 v0, 0xed

    invoke-static {v0, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcfw;->c:I

    .line 29
    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    iput-object v0, p0, Lcfw;->d:Landroid/graphics/Paint$Style;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcfw;->e:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcfw;->f:Landroid/graphics/DashPathEffect;

    .line 38
    sget-object v0, Lcfx;->RIGHT_TOP:Lcfx;

    iput-object v0, p0, Lcfw;->g:Lcfx;

    .line 63
    iput p1, p0, Lcfw;->a:F

    .line 64
    iput-object p2, p0, Lcfw;->e:Ljava/lang/String;

    .line 65
    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcfw;->a:F

    return v0
.end method

.method public a(F)V
    .locals 3

    .prologue
    const/high16 v0, 0x41400000    # 12.0f

    const v1, 0x3e4ccccd    # 0.2f

    .line 84
    cmpg-float v2, p1, v1

    if-gez v2, :cond_1

    .line 86
    :goto_0
    cmpl-float v2, v1, v0

    if-lez v2, :cond_0

    .line 88
    :goto_1
    invoke-static {v0}, Lclg;->a(F)F

    move-result v0

    iput v0, p0, Lcfw;->b:F

    .line 89
    return-void

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    move v1, p1

    goto :goto_0
.end method

.method public a(FFF)V
    .locals 3

    .prologue
    .line 127
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-direct {v0, v1, p3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iput-object v0, p0, Lcfw;->f:Landroid/graphics/DashPathEffect;

    .line 130
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 107
    iput p1, p0, Lcfw;->c:I

    .line 108
    return-void
.end method

.method public a(Landroid/graphics/Paint$Style;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcfw;->d:Landroid/graphics/Paint$Style;

    .line 166
    return-void
.end method

.method public a(Lcfx;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcfw;->g:Lcfx;

    .line 185
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcfw;->e:Ljava/lang/String;

    .line 204
    return-void
.end method

.method public b()F
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcfw;->b:F

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcfw;->c:I

    return v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcfw;->f:Landroid/graphics/DashPathEffect;

    .line 137
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcfw;->f:Landroid/graphics/DashPathEffect;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Landroid/graphics/DashPathEffect;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcfw;->f:Landroid/graphics/DashPathEffect;

    return-object v0
.end method

.method public g()Landroid/graphics/Paint$Style;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcfw;->d:Landroid/graphics/Paint$Style;

    return-object v0
.end method

.method public h()Lcfx;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcfw;->g:Lcfx;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcfw;->e:Ljava/lang/String;

    return-object v0
.end method
