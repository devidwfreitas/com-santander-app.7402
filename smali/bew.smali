.class public Lbew;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:F

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()F
    .locals 2

    .prologue
    .line 21
    iget v0, p0, Lbew;->b:I

    if-nez v0, :cond_0

    .line 22
    const/4 v0, 0x0

    .line 24
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lbew;->a:F

    iget v1, p0, Lbew;->b:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method public a(F)V
    .locals 2

    .prologue
    .line 12
    iget v0, p0, Lbew;->a:F

    add-float/2addr v0, p1

    iput v0, p0, Lbew;->a:F

    .line 13
    iget v0, p0, Lbew;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbew;->b:I

    .line 14
    iget v0, p0, Lbew;->b:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 15
    iget v0, p0, Lbew;->a:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lbew;->a:F

    .line 16
    iget v0, p0, Lbew;->b:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lbew;->b:I

    .line 18
    :cond_0
    return-void
.end method
