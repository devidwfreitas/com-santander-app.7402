.class public abstract Lcgx;
.super Lcgh;
.source "SourceFile"

# interfaces
.implements Lcir;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">",
        "Lcgh",
        "<TT;>;",
        "Lcir",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected v:Z

.field protected w:Z

.field protected x:F

.field protected y:Landroid/graphics/DashPathEffect;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/high16 v1, 0x3f000000    # 0.5f

    .line 26
    invoke-direct {p0, p1, p2}, Lcgh;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 15
    iput-boolean v0, p0, Lcgx;->v:Z

    .line 16
    iput-boolean v0, p0, Lcgx;->w:Z

    .line 19
    iput v1, p0, Lcgx;->x:F

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcgx;->y:Landroid/graphics/DashPathEffect;

    .line 27
    invoke-static {v1}, Lclg;->a(F)F

    move-result v0

    iput v0, p0, Lcgx;->x:F

    .line 28
    return-void
.end method


# virtual methods
.method public ac()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcgx;->v:Z

    return v0
.end method

.method public ad()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcgx;->w:Z

    return v0
.end method

.method public ae()F
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcgx;->x:F

    return v0
.end method

.method public af()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcgx;->y:Landroid/graphics/DashPathEffect;

    .line 96
    return-void
.end method

.method public ag()Z
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcgx;->y:Landroid/graphics/DashPathEffect;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ah()Landroid/graphics/DashPathEffect;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcgx;->y:Landroid/graphics/DashPathEffect;

    return-object v0
.end method

.method public b(FFF)V
    .locals 3

    .prologue
    .line 86
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-direct {v0, v1, p3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iput-object v0, p0, Lcgx;->y:Landroid/graphics/DashPathEffect;

    .line 89
    return-void
.end method

.method public g(Z)V
    .locals 0

    .prologue
    .line 35
    iput-boolean p1, p0, Lcgx;->w:Z

    .line 36
    return-void
.end method

.method public h(Z)V
    .locals 0

    .prologue
    .line 43
    iput-boolean p1, p0, Lcgx;->v:Z

    .line 44
    return-void
.end method

.method public i(Z)V
    .locals 0

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcgx;->h(Z)V

    .line 52
    invoke-virtual {p0, p1}, Lcgx;->g(Z)V

    .line 53
    return-void
.end method

.method public k(F)V
    .locals 1

    .prologue
    .line 70
    invoke-static {p1}, Lclg;->a(F)F

    move-result v0

    iput v0, p0, Lcgx;->x:F

    .line 71
    return-void
.end method
