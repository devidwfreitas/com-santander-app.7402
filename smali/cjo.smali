.class public Lcjo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field final synthetic d:Lcjn;


# direct methods
.method protected constructor <init>(Lcjn;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcjo;->d:Lcjn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcid;Lcil;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/high16 v5, 0x7fc00000    # Float.NaN

    .line 79
    const/4 v0, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v3, p0, Lcjo;->d:Lcjn;

    iget-object v3, v3, Lcjn;->g:Lcdq;

    invoke-virtual {v3}, Lcdq;->b()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 81
    invoke-interface {p1}, Lcid;->C()F

    move-result v0

    .line 82
    invoke-interface {p1}, Lcid;->D()F

    move-result v3

    .line 84
    sget-object v4, Lcgr;->DOWN:Lcgr;

    invoke-interface {p2, v0, v5, v4}, Lcil;->a(FFLcgr;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    .line 85
    sget-object v4, Lcgr;->UP:Lcgr;

    invoke-interface {p2, v3, v5, v4}, Lcil;->a(FFLcgr;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v3

    .line 87
    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcjo;->a:I

    .line 88
    if-nez v3, :cond_1

    :goto_1
    iput v1, p0, Lcjo;->b:I

    .line 89
    iget v0, p0, Lcjo;->b:I

    iget v1, p0, Lcjo;->a:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcjo;->c:I

    .line 90
    return-void

    .line 87
    :cond_0
    invoke-interface {p2, v0}, Lcil;->h(Lcom/github/mikephil/charting/data/Entry;)I

    move-result v0

    goto :goto_0

    .line 88
    :cond_1
    invoke-interface {p2, v3}, Lcil;->h(Lcom/github/mikephil/charting/data/Entry;)I

    move-result v1

    goto :goto_1
.end method
