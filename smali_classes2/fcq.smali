.class public Lfcq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:F = 4.0f

.field private static final d:F = 10.0f


# instance fields
.field protected a:Leqm;

.field protected b:Lfdv;

.field private final e:I


# direct methods
.method public constructor <init>(Leqm;Lfdv;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x2

    iput v0, p0, Lfcq;->e:I

    .line 31
    iput-object p1, p0, Lfcq;->a:Leqm;

    .line 32
    iput-object p2, p0, Lfcq;->b:Lfdv;

    .line 33
    return-void
.end method

.method private static a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Leqo;Leqo;I)V
    .locals 6

    .prologue
    .line 36
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 37
    invoke-virtual {p2}, Leqo;->a()F

    move-result v0

    int-to-float v1, p4

    div-float v1, v0, v1

    .line 38
    invoke-virtual {p2}, Leqo;->b()F

    move-result v0

    int-to-float v2, p4

    div-float v2, v0, v2

    .line 39
    invoke-virtual {p3}, Leqo;->a()F

    move-result v0

    int-to-float v3, p4

    div-float v3, v0, v3

    .line 40
    invoke-virtual {p3}, Leqo;->b()F

    move-result v0

    int-to-float v4, p4

    div-float v4, v0, v4

    move-object v0, p0

    move-object v5, p1

    .line 37
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 43
    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)Landroid/graphics/Bitmap;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x2

    .line 65
    invoke-virtual {p0}, Lfcq;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 67
    iget-object v0, p0, Lfcq;->a:Leqm;

    invoke-virtual {v0}, Leqm;->c()[Leqo;

    move-result-object v3

    .line 69
    if-eqz v3, :cond_5

    array-length v0, v3

    if-lez v0, :cond_5

    if-eqz v1, :cond_5

    .line 70
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 71
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 72
    const/4 v5, 0x0

    invoke-virtual {v4, v1, v6, v6, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 73
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 74
    invoke-virtual {v5, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    array-length v1, v3

    if-ne v1, v7, :cond_1

    .line 76
    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 77
    aget-object v1, v3, v2

    aget-object v2, v3, v9

    invoke-static {v4, v5, v1, v2, v7}, Lfcq;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Leqo;Leqo;I)V

    .line 93
    :cond_0
    :goto_0
    return-object v0

    .line 78
    :cond_1
    array-length v1, v3

    const/4 v6, 0x4

    if-ne v1, v6, :cond_3

    iget-object v1, p0, Lfcq;->a:Leqm;

    .line 79
    invoke-virtual {v1}, Leqm;->d()Lepu;

    move-result-object v1

    sget-object v6, Lepu;->UPC_A:Lepu;

    if-eq v1, v6, :cond_2

    iget-object v1, p0, Lfcq;->a:Leqm;

    .line 80
    invoke-virtual {v1}, Leqm;->d()Lepu;

    move-result-object v1

    sget-object v6, Lepu;->EAN_13:Lepu;

    if-ne v1, v6, :cond_3

    .line 82
    :cond_2
    aget-object v1, v3, v2

    aget-object v2, v3, v9

    invoke-static {v4, v5, v1, v2, v7}, Lfcq;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Leqo;Leqo;I)V

    .line 83
    aget-object v1, v3, v7

    const/4 v2, 0x3

    aget-object v2, v3, v2

    invoke-static {v4, v5, v1, v2, v7}, Lfcq;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Leqo;Leqo;I)V

    goto :goto_0

    .line 85
    :cond_3
    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 86
    array-length v6, v3

    move v1, v2

    :goto_1
    if-ge v1, v6, :cond_0

    aget-object v2, v3, v1

    .line 87
    if-eqz v2, :cond_4

    .line 88
    invoke-virtual {v2}, Leqo;->a()F

    move-result v7

    div-float/2addr v7, v8

    invoke-virtual {v2}, Leqo;->b()F

    move-result v2

    div-float/2addr v2, v8

    invoke-virtual {v4, v7, v2, v5}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 86
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method public a()Leqm;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lfcq;->a:Leqm;

    return-object v0
.end method

.method public b()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lfcq;->b:Lfdv;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lfdv;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x2

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lfcq;->a:Leqm;

    invoke-virtual {v0}, Leqm;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()[B
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lfcq;->a:Leqm;

    invoke-virtual {v0}, Leqm;->b()[B

    move-result-object v0

    return-object v0
.end method

.method public f()[Leqo;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lfcq;->a:Leqm;

    invoke-virtual {v0}, Leqm;->c()[Leqo;

    move-result-object v0

    return-object v0
.end method

.method public g()Lepu;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lfcq;->a:Leqm;

    invoke-virtual {v0}, Leqm;->d()Lepu;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Leqn;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lfcq;->a:Leqm;

    invoke-virtual {v0}, Leqm;->e()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public i()J
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lfcq;->a:Leqm;

    invoke-virtual {v0}, Leqm;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lfcq;->a:Leqm;

    invoke-virtual {v0}, Leqm;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
