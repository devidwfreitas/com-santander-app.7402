.class public Lcgz;
.super Lcgq;
.source "SourceFile"

# interfaces
.implements Lcis;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcgq",
        "<",
        "Lcom/github/mikephil/charting/data/PieEntry;",
        ">;",
        "Lcis;"
    }
.end annotation


# instance fields
.field private a:F

.field private k:Z

.field private l:F

.field private m:Lcha;

.field private n:Lcha;

.field private o:I

.field private p:F

.field private v:F

.field private w:F

.field private x:F

.field private y:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/data/PieEntry;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcgq;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcgz;->a:F

    .line 17
    const/high16 v0, 0x41900000    # 18.0f

    iput v0, p0, Lcgz;->l:F

    .line 19
    sget-object v0, Lcha;->INSIDE_SLICE:Lcha;

    iput-object v0, p0, Lcgz;->m:Lcha;

    .line 20
    sget-object v0, Lcha;->INSIDE_SLICE:Lcha;

    iput-object v0, p0, Lcgz;->n:Lcha;

    .line 21
    const/high16 v0, -0x1000000

    iput v0, p0, Lcgz;->o:I

    .line 22
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcgz;->p:F

    .line 23
    const/high16 v0, 0x42960000    # 75.0f

    iput v0, p0, Lcgz;->v:F

    .line 24
    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lcgz;->w:F

    .line 25
    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lcgz;->x:F

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcgz;->y:Z

    .line 30
    return-void
.end method


# virtual methods
.method public F()F
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcgz;->x:F

    return v0
.end method

.method public G()Z
    .locals 1

    .prologue
    .line 200
    iget-boolean v0, p0, Lcgz;->y:Z

    return v0
.end method

.method public a()Lcgq;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcgq",
            "<",
            "Lcom/github/mikephil/charting/data/PieEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 37
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcgz;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 38
    iget-object v0, p0, Lcgz;->q:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/PieEntry;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/PieEntry;->d()Lcom/github/mikephil/charting/data/PieEntry;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 41
    :cond_0
    new-instance v0, Lcgz;

    invoke-virtual {p0}, Lcgz;->p()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcgz;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 42
    iget-object v1, p0, Lcgz;->b:Ljava/util/List;

    iput-object v1, v0, Lcgz;->b:Ljava/util/List;

    .line 43
    iget v1, p0, Lcgz;->a:F

    iput v1, v0, Lcgz;->a:F

    .line 44
    iget v1, p0, Lcgz;->l:F

    iput v1, v0, Lcgz;->l:F

    .line 45
    return-object v0
.end method

.method public a(F)V
    .locals 3

    .prologue
    const/high16 v1, 0x41a00000    # 20.0f

    const/4 v0, 0x0

    .line 65
    cmpl-float v2, p1, v1

    if-lez v2, :cond_1

    .line 67
    :goto_0
    cmpg-float v2, v1, v0

    if-gez v2, :cond_0

    .line 70
    :goto_1
    invoke-static {v0}, Lclg;->a(F)F

    move-result v0

    iput v0, p0, Lcgz;->a:F

    .line 71
    return-void

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    move v1, p1

    goto :goto_0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 145
    iput p1, p0, Lcgz;->o:I

    .line 146
    return-void
.end method

.method public a(Lcha;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcgz;->m:Lcha;

    .line 123
    return-void
.end method

.method protected bridge synthetic a(Lcom/github/mikephil/charting/data/Entry;)V
    .locals 0

    .prologue
    .line 10
    check-cast p1, Lcom/github/mikephil/charting/data/PieEntry;

    invoke-virtual {p0, p1}, Lcgz;->a(Lcom/github/mikephil/charting/data/PieEntry;)V

    return-void
.end method

.method protected a(Lcom/github/mikephil/charting/data/PieEntry;)V
    .locals 0

    .prologue
    .line 51
    if-nez p1, :cond_0

    .line 55
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-virtual {p0, p1}, Lcgz;->c(Lcom/github/mikephil/charting/data/Entry;)V

    goto :goto_0
.end method

.method public b()F
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcgz;->a:F

    return v0
.end method

.method public b(Lcha;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcgz;->n:Lcha;

    .line 134
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcgz;->k:Z

    return v0
.end method

.method public d()F
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcgz;->l:F

    return v0
.end method

.method public d(Z)V
    .locals 0

    .prologue
    .line 85
    iput-boolean p1, p0, Lcgz;->k:Z

    .line 86
    return-void
.end method

.method public e()Lcha;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcgz;->m:Lcha;

    return-object v0
.end method

.method public e(Z)V
    .locals 0

    .prologue
    .line 205
    iput-boolean p1, p0, Lcgz;->y:Z

    .line 206
    return-void
.end method

.method public f()Lcha;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcgz;->n:Lcha;

    return-object v0
.end method

.method public f(F)V
    .locals 1

    .prologue
    .line 106
    invoke-static {p1}, Lclg;->a(F)F

    move-result v0

    iput v0, p0, Lcgz;->l:F

    .line 107
    return-void
.end method

.method public g()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcgz;->o:I

    return v0
.end method

.method public h()F
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcgz;->p:F

    return v0
.end method

.method public h(F)V
    .locals 0

    .prologue
    .line 157
    iput p1, p0, Lcgz;->p:F

    .line 158
    return-void
.end method

.method public i()F
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcgz;->v:F

    return v0
.end method

.method public i(F)V
    .locals 0

    .prologue
    .line 169
    iput p1, p0, Lcgz;->v:F

    .line 170
    return-void
.end method

.method public j()F
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcgz;->w:F

    return v0
.end method

.method public j(F)V
    .locals 0

    .prologue
    .line 181
    iput p1, p0, Lcgz;->w:F

    .line 182
    return-void
.end method

.method public k(F)V
    .locals 0

    .prologue
    .line 193
    iput p1, p0, Lcgz;->x:F

    .line 194
    return-void
.end method
