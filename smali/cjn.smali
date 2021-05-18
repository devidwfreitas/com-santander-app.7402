.class public abstract Lcjn;
.super Lcjt;
.source "SourceFile"


# instance fields
.field protected f:Lcjo;


# direct methods
.method public constructor <init>(Lcdq;Lclh;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcjt;-><init>(Lcdq;Lclh;)V

    .line 19
    new-instance v0, Lcjo;

    invoke-direct {v0, p0}, Lcjo;-><init>(Lcjn;)V

    iput-object v0, p0, Lcjn;->f:Lcjo;

    .line 23
    return-void
.end method


# virtual methods
.method protected a(Lcio;)Z
    .locals 1

    .prologue
    .line 32
    invoke-interface {p1}, Lcio;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcio;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lcom/github/mikephil/charting/data/Entry;Lcil;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 44
    if-nez p1, :cond_1

    .line 49
    :cond_0
    :goto_0
    return v0

    .line 47
    :cond_1
    invoke-interface {p2, p1}, Lcil;->h(Lcom/github/mikephil/charting/data/Entry;)I

    move-result v1

    int-to-float v1, v1

    .line 49
    if-eqz p1, :cond_0

    invoke-interface {p2}, Lcil;->I()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcjn;->g:Lcdq;

    invoke-virtual {v3}, Lcdq;->b()F

    move-result v3

    mul-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
