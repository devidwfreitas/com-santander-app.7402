.class public Lcgy;
.super Lcgo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcgo",
        "<",
        "Lcis;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcgo;-><init>()V

    .line 19
    return-void
.end method

.method public constructor <init>(Lcis;)V
    .locals 2

    .prologue
    .line 22
    const/4 v0, 0x1

    new-array v0, v0, [Lcis;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lcgo;-><init>([Lcio;)V

    .line 23
    return-void
.end method


# virtual methods
.method public synthetic a(I)Lcio;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcgy;->d(I)Lcis;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Ljava/lang/String;Z)Lcio;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0, p1, p2}, Lcgy;->b(Ljava/lang/String;Z)Lcis;

    move-result-object v0

    return-object v0
.end method

.method public a()Lcis;
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcgy;->i:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcis;

    return-object v0
.end method

.method public a(Lchv;)Lcom/github/mikephil/charting/data/Entry;
    .locals 2

    .prologue
    .line 65
    invoke-virtual {p0}, Lcgy;->a()Lcis;

    move-result-object v0

    invoke-virtual {p1}, Lchv;->a()F

    move-result v1

    float-to-int v1, v1

    invoke-interface {v0, v1}, Lcis;->m(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcis;)V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcgy;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 32
    iget-object v0, p0, Lcgy;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    invoke-virtual {p0}, Lcgy;->b()V

    .line 34
    return-void
.end method

.method public b(Ljava/lang/String;Z)Lcis;
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 59
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcgy;->i:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcis;

    invoke-interface {v0}, Lcis;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcgy;->i:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcis;

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcgy;->i:Ljava/util/List;

    .line 60
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcis;

    invoke-interface {v0}, Lcis;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcgy;->i:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcis;

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public d(I)Lcis;
    .locals 1

    .prologue
    .line 54
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcgy;->a()Lcis;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p()F
    .locals 3

    .prologue
    .line 75
    const/4 v1, 0x0

    .line 77
    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcgy;->a()Lcis;

    move-result-object v0

    invoke-interface {v0}, Lcis;->I()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcgy;->a()Lcis;

    move-result-object v0

    invoke-interface {v0, v1}, Lcis;->m(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/PieEntry;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/PieEntry;->c()F

    move-result v0

    add-float/2addr v2, v0

    .line 77
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 81
    :cond_0
    return v2
.end method
