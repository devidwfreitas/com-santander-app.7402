.class public final Lfam;
.super Leqo;
.source "SourceFile"


# instance fields
.field private final a:F

.field private final b:I


# direct methods
.method constructor <init>(FFF)V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lfam;-><init>(FFFI)V

    .line 35
    return-void
.end method

.method private constructor <init>(FFFI)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Leqo;-><init>(FF)V

    .line 39
    iput p3, p0, Lfam;->a:F

    .line 40
    iput p4, p0, Lfam;->b:I

    .line 41
    return-void
.end method


# virtual methods
.method a(FFF)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-virtual {p0}, Lfam;->b()F

    move-result v1

    sub-float v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, p1

    if-gtz v1, :cond_1

    invoke-virtual {p0}, Lfam;->a()F

    move-result v1

    sub-float v1, p3, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, p1

    if-gtz v1, :cond_1

    .line 63
    iget v1, p0, Lfam;->a:F

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 64
    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v1, v2

    if-lez v2, :cond_0

    iget v2, p0, Lfam;->a:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 66
    :cond_1
    return v0
.end method

.method b(FFF)Lfam;
    .locals 5

    .prologue
    .line 75
    iget v0, p0, Lfam;->b:I

    add-int/lit8 v0, v0, 0x1

    .line 76
    iget v1, p0, Lfam;->b:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lfam;->a()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v1, p2

    int-to-float v2, v0

    div-float/2addr v1, v2

    .line 77
    iget v2, p0, Lfam;->b:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lfam;->b()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v2, p1

    int-to-float v3, v0

    div-float/2addr v2, v3

    .line 78
    iget v3, p0, Lfam;->b:I

    int-to-float v3, v3

    iget v4, p0, Lfam;->a:F

    mul-float/2addr v3, v4

    add-float/2addr v3, p3

    int-to-float v4, v0

    div-float/2addr v3, v4

    .line 79
    new-instance v4, Lfam;

    invoke-direct {v4, v1, v2, v3, v0}, Lfam;-><init>(FFFI)V

    return-object v4
.end method

.method public c()F
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lfam;->a:F

    return v0
.end method

.method d()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lfam;->b:I

    return v0
.end method
