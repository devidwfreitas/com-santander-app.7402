.class public Lchw;
.super Lchs;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcic;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lchs;-><init>(Lcic;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected a(FFFF)F
    .locals 1

    .prologue
    .line 83
    sub-float v0, p2, p4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method public a(FF)Lchv;
    .locals 6

    .prologue
    .line 26
    iget-object v0, p0, Lchw;->a:Lcid;

    check-cast v0, Lcic;

    invoke-interface {v0}, Lcic;->f()Lcge;

    move-result-object v0

    .line 28
    invoke-virtual {p0, p2, p1}, Lchw;->b(FF)Lckz;

    move-result-object v2

    .line 30
    iget-wide v4, v2, Lckz;->b:D

    double-to-float v1, v4

    invoke-virtual {p0, v1, p2, p1}, Lchw;->a(FFF)Lchv;

    move-result-object v1

    .line 31
    if-nez v1, :cond_0

    .line 32
    const/4 v0, 0x0

    .line 45
    :goto_0
    return-object v0

    .line 34
    :cond_0
    invoke-virtual {v1}, Lchv;->f()I

    move-result v3

    invoke-virtual {v0, v3}, Lcge;->a(I)Lcio;

    move-result-object v0

    check-cast v0, Lcik;

    .line 35
    invoke-interface {v0}, Lcik;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 37
    iget-wide v4, v2, Lckz;->b:D

    double-to-float v3, v4

    iget-wide v4, v2, Lckz;->a:D

    double-to-float v2, v4

    invoke-virtual {p0, v1, v0, v3, v2}, Lchw;->a(Lchv;Lcik;FF)Lchv;

    move-result-object v0

    goto :goto_0

    .line 43
    :cond_1
    invoke-static {v2}, Lckz;->a(Lckz;)V

    move-object v0, v1

    .line 45
    goto :goto_0
.end method

.method protected a(Lcio;IFLcgr;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcio;",
            "IF",
            "Lcgr;",
            ")",
            "Ljava/util/List",
            "<",
            "Lchv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 54
    move/from16 v0, p3

    invoke-interface {p1, v0}, Lcio;->g(F)Ljava/util/List;

    move-result-object v2

    .line 55
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 57
    const/high16 v3, 0x7fc00000    # Float.NaN

    move/from16 v0, p3

    move-object/from16 v1, p4

    invoke-interface {p1, v0, v3, v1}, Lcio;->a(FFLcgr;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v3

    .line 58
    if-eqz v3, :cond_0

    .line 61
    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->k()F

    move-result v2

    invoke-interface {p1, v2}, Lcio;->g(F)Ljava/util/List;

    move-result-object v2

    .line 65
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    move-object v2, v9

    .line 78
    :goto_0
    return-object v2

    .line 68
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/github/mikephil/charting/data/Entry;

    .line 69
    iget-object v2, p0, Lchw;->a:Lcid;

    check-cast v2, Lcic;

    .line 70
    invoke-interface {p1}, Lcio;->C()Lcgc;

    move-result-object v3

    .line 69
    invoke-interface {v2, v3}, Lcic;->a(Lcgc;)Lcle;

    move-result-object v2

    .line 70
    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v3

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/Entry;->k()F

    move-result v5

    invoke-virtual {v2, v3, v5}, Lcle;->b(FF)Lckz;

    move-result-object v6

    .line 72
    new-instance v2, Lchv;

    .line 73
    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/Entry;->k()F

    move-result v3

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v4

    iget-wide v12, v6, Lckz;->a:D

    double-to-float v5, v12

    iget-wide v6, v6, Lckz;->b:D

    double-to-float v6, v6

    .line 75
    invoke-interface {p1}, Lcio;->C()Lcgc;

    move-result-object v8

    move/from16 v7, p2

    invoke-direct/range {v2 .. v8}, Lchv;-><init>(FFFFILcgc;)V

    .line 72
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v2, v9

    .line 78
    goto :goto_0
.end method
