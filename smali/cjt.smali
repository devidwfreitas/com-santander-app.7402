.class public abstract Lcjt;
.super Lcke;
.source "SourceFile"


# static fields
.field private static a:F

.field private static b:F

.field private static c:F

.field private static d:F


# instance fields
.field private final e:F

.field protected g:Lcdq;

.field protected h:Landroid/graphics/Paint;

.field protected i:Landroid/graphics/Paint;

.field protected j:Landroid/graphics/Paint;

.field protected k:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 150
    sput v0, Lcjt;->a:F

    .line 151
    sput v0, Lcjt;->b:F

    .line 152
    sput v0, Lcjt;->c:F

    .line 153
    sput v0, Lcjt;->d:F

    return-void
.end method

.method public constructor <init>(Lcdq;Lclh;)V
    .locals 4

    .prologue
    const/16 v3, 0x3f

    const/4 v2, 0x1

    .line 51
    invoke-direct {p0, p2}, Lcke;-><init>(Lclh;)V

    .line 154
    const/high16 v0, 0x425c0000    # 55.0f

    iput v0, p0, Lcjt;->e:F

    .line 52
    iput-object p1, p0, Lcjt;->g:Lcdq;

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcjt;->h:Landroid/graphics/Paint;

    .line 55
    iget-object v0, p0, Lcjt;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcjt;->j:Landroid/graphics/Paint;

    .line 59
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcjt;->k:Landroid/graphics/Paint;

    .line 60
    iget-object v0, p0, Lcjt;->k:Landroid/graphics/Paint;

    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    iget-object v0, p0, Lcjt;->k:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 62
    iget-object v0, p0, Lcjt;->k:Landroid/graphics/Paint;

    const/high16 v1, 0x41100000    # 9.0f

    invoke-static {v1}, Lclg;->a(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 64
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcjt;->i:Landroid/graphics/Paint;

    .line 65
    iget-object v0, p0, Lcjt;->i:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 66
    iget-object v0, p0, Lcjt;->i:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 67
    iget-object v0, p0, Lcjt;->i:Landroid/graphics/Paint;

    const/16 v1, 0xff

    const/16 v2, 0xbb

    const/16 v3, 0x73

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Landroid/graphics/Canvas;)V
.end method

.method public a(Landroid/graphics/Canvas;Lchn;FLcom/github/mikephil/charting/data/Entry;IFFI)V
    .locals 5

    .prologue
    const/high16 v4, 0x425c0000    # 55.0f

    .line 157
    iget-object v0, p0, Lcjt;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, p8}, Landroid/graphics/Paint;->setColor(I)V

    .line 158
    add-float v0, p6, p6

    add-float/2addr v0, v4

    sget v1, Lcjt;->a:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    sget v0, Lcjt;->a:F

    sget v1, Lcjt;->c:F

    add-float/2addr v0, v1

    cmpg-float v0, p6, v0

    if-gtz v0, :cond_0

    add-float v0, p7, p7

    add-float/2addr v0, v4

    sget v1, Lcjt;->d:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    sget v0, Lcjt;->b:F

    sget v1, Lcjt;->d:F

    add-float/2addr v0, v1

    cmpg-float v0, p7, v0

    if-gtz v0, :cond_0

    float-to-double v0, p3

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcjt;->s:Lclh;

    invoke-interface {p2, p3, p4, p5, v0}, Lchn;->a(FLcom/github/mikephil/charting/data/Entry;ILclh;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcjt;->b:F

    add-float/2addr v1, v4

    iget-object v2, p0, Lcjt;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p6, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 163
    sput p6, Lcjt;->a:F

    .line 164
    add-float v0, p7, v4

    sput v0, Lcjt;->b:F

    .line 165
    sget v0, Lcjt;->b:F

    add-float/2addr v0, v4

    sput v0, Lcjt;->d:F

    .line 166
    sget v0, Lcjt;->a:F

    add-float/2addr v0, v4

    sput v0, Lcjt;->c:F

    .line 176
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcjt;->s:Lclh;

    invoke-interface {p2, p3, p4, p5, v0}, Lchn;->a(FLcom/github/mikephil/charting/data/Entry;ILclh;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcjt;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p6, p7, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 170
    sput p6, Lcjt;->a:F

    .line 171
    sput p7, Lcjt;->b:F

    .line 172
    add-float v0, p7, v4

    sput v0, Lcjt;->d:F

    .line 173
    add-float v0, p6, v4

    sput v0, Lcjt;->c:F

    goto :goto_0
.end method

.method public a(Landroid/graphics/Canvas;Lchn;FLcom/github/mikephil/charting/data/Entry;IFFIFF)V
    .locals 5

    .prologue
    const/high16 v4, 0x425c0000    # 55.0f

    .line 179
    iget-object v0, p0, Lcjt;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, p8}, Landroid/graphics/Paint;->setColor(I)V

    .line 180
    add-float v0, p6, p6

    add-float/2addr v0, v4

    sget v1, Lcjt;->a:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    sget v0, Lcjt;->a:F

    sget v1, Lcjt;->c:F

    add-float/2addr v0, v1

    cmpg-float v0, p6, v0

    if-gtz v0, :cond_0

    add-float v0, p7, p7

    add-float/2addr v0, v4

    sget v1, Lcjt;->d:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    sget v0, Lcjt;->b:F

    sget v1, Lcjt;->d:F

    add-float/2addr v0, v1

    cmpg-float v0, p7, v0

    if-gtz v0, :cond_0

    float-to-double v0, p3

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcjt;->s:Lclh;

    invoke-interface {p2, p3, p4, p5, v0}, Lchn;->a(FLcom/github/mikephil/charting/data/Entry;ILclh;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcjt;->b:F

    add-float/2addr v1, v4

    iget-object v2, p0, Lcjt;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p6, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 185
    sput p6, Lcjt;->a:F

    .line 186
    add-float v0, p7, v4

    sput v0, Lcjt;->b:F

    .line 187
    sget v0, Lcjt;->b:F

    add-float/2addr v0, v4

    sput v0, Lcjt;->d:F

    .line 188
    sget v0, Lcjt;->a:F

    add-float/2addr v0, v4

    sput v0, Lcjt;->c:F

    .line 198
    :goto_0
    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lcjt;->s:Lclh;

    invoke-interface {p2, p3, p4, p5, v0}, Lchn;->a(FLcom/github/mikephil/charting/data/Entry;ILclh;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcjt;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p6, p7, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 192
    sput p6, Lcjt;->a:F

    .line 193
    sput p7, Lcjt;->b:F

    .line 194
    add-float v0, p7, v4

    sput v0, Lcjt;->d:F

    .line 195
    add-float v0, p6, v4

    sput v0, Lcjt;->c:F

    goto :goto_0
.end method

.method public abstract a(Landroid/graphics/Canvas;[Lchv;)V
.end method

.method protected a(Lcig;)Z
    .locals 3

    .prologue
    .line 71
    invoke-interface {p1}, Lcig;->aC()Lcgo;

    move-result-object v0

    invoke-virtual {v0}, Lcgo;->n()I

    move-result v0

    int-to-float v0, v0

    invoke-interface {p1}, Lcig;->s()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcjt;->s:Lclh;

    .line 72
    invoke-virtual {v2}, Lclh;->s()F

    move-result v2

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    .line 71
    :goto_0
    return v0

    .line 72
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract b(Landroid/graphics/Canvas;)V
.end method

.method protected b(Lcio;)V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcjt;->k:Landroid/graphics/Paint;

    invoke-interface {p1}, Lcio;->u()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 113
    iget-object v0, p0, Lcjt;->k:Landroid/graphics/Paint;

    invoke-interface {p1}, Lcio;->v()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 114
    return-void
.end method

.method public abstract c(Landroid/graphics/Canvas;)V
.end method

.method public d()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcjt;->k:Landroid/graphics/Paint;

    return-object v0
.end method

.method public e()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcjt;->i:Landroid/graphics/Paint;

    return-object v0
.end method

.method public f()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcjt;->h:Landroid/graphics/Paint;

    return-object v0
.end method
