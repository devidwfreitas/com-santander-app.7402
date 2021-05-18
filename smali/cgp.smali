.class public Lcgp;
.super Lcgg;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcgg",
        "<",
        "Lcil",
        "<+",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">;>;"
    }
.end annotation


# instance fields
.field private j:Lcgt;

.field private k:Lcge;

.field private l:Lchd;

.field private m:Lcgm;

.field private n:Lcgk;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcgg;-><init>()V

    .line 28
    return-void
.end method


# virtual methods
.method public a(Lcgo;)I
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0}, Lcgp;->t()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public a()Lcgk;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcgp;->n:Lcgk;

    return-object v0
.end method

.method public a(Lchv;)Lcom/github/mikephil/charting/data/Entry;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 180
    invoke-virtual {p0}, Lcgp;->t()Ljava/util/List;

    move-result-object v0

    .line 182
    invoke-virtual {p1}, Lchv;->e()I

    move-result v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    move-object v0, v1

    .line 200
    :cond_0
    :goto_0
    return-object v0

    .line 185
    :cond_1
    invoke-virtual {p1}, Lchv;->e()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcgo;

    .line 187
    invoke-virtual {p1}, Lchv;->f()I

    move-result v2

    invoke-virtual {v0}, Lcgo;->d()I

    move-result v3

    if-lt v2, v3, :cond_2

    move-object v0, v1

    .line 188
    goto :goto_0

    .line 193
    :cond_2
    invoke-virtual {p1}, Lchv;->f()I

    move-result v2

    invoke-virtual {v0, v2}, Lcgo;->a(I)Lcio;

    move-result-object v0

    .line 194
    invoke-virtual {p1}, Lchv;->a()F

    move-result v2

    invoke-interface {v0, v2}, Lcio;->g(F)Ljava/util/List;

    move-result-object v0

    .line 195
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/Entry;

    .line 196
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v3

    invoke-virtual {p1}, Lchv;->b()F

    move-result v4

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    .line 197
    invoke-virtual {p1}, Lchv;->b()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_4
    move-object v0, v1

    .line 200
    goto :goto_0
.end method

.method public a(Lcge;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcgp;->k:Lcge;

    .line 37
    invoke-virtual {p0}, Lcgp;->b()V

    .line 38
    return-void
.end method

.method public a(Lcgk;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcgp;->n:Lcgk;

    .line 52
    invoke-virtual {p0}, Lcgp;->b()V

    .line 53
    return-void
.end method

.method public a(Lcgm;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcgp;->m:Lcgm;

    .line 47
    invoke-virtual {p0}, Lcgp;->b()V

    .line 48
    return-void
.end method

.method public a(Lcgt;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcgp;->j:Lcgt;

    .line 32
    invoke-virtual {p0}, Lcgp;->b()V

    .line 33
    return-void
.end method

.method public a(Lchd;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcgp;->l:Lchd;

    .line 42
    invoke-virtual {p0}, Lcgp;->b()V

    .line 43
    return-void
.end method

.method public a(FI)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 244
    const-string v0, "MPAndroidChart"

    const-string v1, "removeEntry(...) not supported for CombinedData"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const/4 v0, 0x0

    return v0
.end method

.method public a(Lcil;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcil",
            "<+",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 211
    invoke-virtual {p0}, Lcgp;->t()Ljava/util/List;

    move-result-object v1

    .line 213
    const/4 v0, 0x0

    .line 215
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcgo;

    .line 217
    invoke-virtual {v0, p1}, Lcgo;->b(Lcio;)Z

    move-result v0

    .line 219
    if-eqz v0, :cond_0

    .line 224
    :cond_1
    return v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcgp;->j:Lcgt;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcgp;->j:Lcgt;

    invoke-virtual {v0}, Lcgt;->b()V

    .line 159
    :cond_0
    iget-object v0, p0, Lcgp;->k:Lcge;

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcgp;->k:Lcge;

    invoke-virtual {v0}, Lcge;->b()V

    .line 161
    :cond_1
    iget-object v0, p0, Lcgp;->m:Lcgm;

    if-eqz v0, :cond_2

    .line 162
    iget-object v0, p0, Lcgp;->m:Lcgm;

    invoke-virtual {v0}, Lcgm;->b()V

    .line 163
    :cond_2
    iget-object v0, p0, Lcgp;->l:Lchd;

    if-eqz v0, :cond_3

    .line 164
    iget-object v0, p0, Lcgp;->l:Lchd;

    invoke-virtual {v0}, Lchd;->b()V

    .line 165
    :cond_3
    iget-object v0, p0, Lcgp;->n:Lcgk;

    if-eqz v0, :cond_4

    .line 166
    iget-object v0, p0, Lcgp;->n:Lcgk;

    invoke-virtual {v0}, Lcgk;->b()V

    .line 168
    :cond_4
    invoke-virtual {p0}, Lcgp;->c()V

    .line 169
    return-void
.end method

.method public b(I)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 230
    const-string v0, "MPAndroidChart"

    const-string v1, "removeDataSet(int index) not supported for CombinedData"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic b(Lcio;)Z
    .locals 1

    .prologue
    .line 18
    check-cast p1, Lcil;

    invoke-virtual {p0, p1}, Lcgp;->a(Lcil;)Z

    move-result v0

    return v0
.end method

.method public b(Lcom/github/mikephil/charting/data/Entry;I)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 237
    const-string v0, "MPAndroidChart"

    const-string v1, "removeEntry(...) not supported for CombinedData"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const/4 v0, 0x0

    return v0
.end method

.method public c()V
    .locals 4

    .prologue
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    const v1, -0x800001

    .line 58
    iget-object v0, p0, Lcgp;->i:Ljava/util/List;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcgp;->i:Ljava/util/List;

    .line 61
    :cond_0
    iget-object v0, p0, Lcgp;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 63
    iput v1, p0, Lcgp;->a:F

    .line 64
    iput v2, p0, Lcgp;->b:F

    .line 65
    iput v1, p0, Lcgp;->c:F

    .line 66
    iput v2, p0, Lcgp;->d:F

    .line 68
    iput v1, p0, Lcgp;->e:F

    .line 69
    iput v2, p0, Lcgp;->f:F

    .line 70
    iput v1, p0, Lcgp;->g:F

    .line 71
    iput v2, p0, Lcgp;->h:F

    .line 73
    invoke-virtual {p0}, Lcgp;->t()Ljava/util/List;

    move-result-object v0

    .line 75
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcgo;

    .line 77
    invoke-virtual {v0}, Lcgo;->c()V

    .line 79
    invoke-virtual {v0}, Lcgo;->i()Ljava/util/List;

    move-result-object v2

    .line 80
    iget-object v3, p0, Lcgp;->i:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 82
    invoke-virtual {v0}, Lcgo;->f()F

    move-result v2

    iget v3, p0, Lcgp;->a:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 83
    invoke-virtual {v0}, Lcgo;->f()F

    move-result v2

    iput v2, p0, Lcgp;->a:F

    .line 85
    :cond_2
    invoke-virtual {v0}, Lcgo;->e()F

    move-result v2

    iget v3, p0, Lcgp;->b:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    .line 86
    invoke-virtual {v0}, Lcgo;->e()F

    move-result v2

    iput v2, p0, Lcgp;->b:F

    .line 88
    :cond_3
    invoke-virtual {v0}, Lcgo;->h()F

    move-result v2

    iget v3, p0, Lcgp;->c:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    .line 89
    invoke-virtual {v0}, Lcgo;->h()F

    move-result v2

    iput v2, p0, Lcgp;->c:F

    .line 91
    :cond_4
    invoke-virtual {v0}, Lcgo;->g()F

    move-result v2

    iget v3, p0, Lcgp;->d:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    .line 92
    invoke-virtual {v0}, Lcgo;->g()F

    move-result v2

    iput v2, p0, Lcgp;->d:F

    .line 94
    :cond_5
    iget v2, v0, Lcgo;->e:F

    iget v3, p0, Lcgp;->e:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6

    .line 95
    iget v2, v0, Lcgo;->e:F

    iput v2, p0, Lcgp;->e:F

    .line 97
    :cond_6
    iget v2, v0, Lcgo;->f:F

    iget v3, p0, Lcgp;->f:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_7

    .line 98
    iget v2, v0, Lcgo;->f:F

    iput v2, p0, Lcgp;->f:F

    .line 100
    :cond_7
    iget v2, v0, Lcgo;->g:F

    iget v3, p0, Lcgp;->g:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_8

    .line 101
    iget v2, v0, Lcgo;->g:F

    iput v2, p0, Lcgp;->g:F

    .line 103
    :cond_8
    iget v2, v0, Lcgo;->h:F

    iget v3, p0, Lcgp;->h:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 104
    iget v0, v0, Lcgo;->h:F

    iput v0, p0, Lcgp;->h:F

    goto/16 :goto_0

    .line 107
    :cond_9
    return-void
.end method

.method public d(I)Lcgg;
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0}, Lcgp;->t()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcgg;

    return-object v0
.end method

.method public p()Lcgt;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcgp;->j:Lcgt;

    return-object v0
.end method

.method public q()Lcge;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcgp;->k:Lcge;

    return-object v0
.end method

.method public r()Lchd;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcgp;->l:Lchd;

    return-object v0
.end method

.method public s()Lcgm;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcgp;->m:Lcgm;

    return-object v0
.end method

.method public t()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcgg;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 137
    iget-object v1, p0, Lcgp;->j:Lcgt;

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lcgp;->j:Lcgt;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    :cond_0
    iget-object v1, p0, Lcgp;->k:Lcge;

    if-eqz v1, :cond_1

    .line 140
    iget-object v1, p0, Lcgp;->k:Lcge;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_1
    iget-object v1, p0, Lcgp;->l:Lchd;

    if-eqz v1, :cond_2

    .line 142
    iget-object v1, p0, Lcgp;->l:Lchd;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    :cond_2
    iget-object v1, p0, Lcgp;->m:Lcgm;

    if-eqz v1, :cond_3

    .line 144
    iget-object v1, p0, Lcgp;->m:Lcgm;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_3
    iget-object v1, p0, Lcgp;->n:Lcgk;

    if-eqz v1, :cond_4

    .line 146
    iget-object v1, p0, Lcgp;->n:Lcgk;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_4
    return-object v0
.end method
