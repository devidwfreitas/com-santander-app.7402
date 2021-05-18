.class public Lcjr;
.super Lcjt;
.source "SourceFile"


# instance fields
.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcjt;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/github/mikephil/charting/charts/Chart;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lchv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/charts/CombinedChart;Lcdq;Lclh;)V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0, p2, p3}, Lcjt;-><init>(Lcdq;Lclh;)V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcjr;->a:Ljava/util/List;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcjr;->c:Ljava/util/List;

    .line 32
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcjr;->b:Ljava/lang/ref/WeakReference;

    .line 33
    invoke-virtual {p0}, Lcjr;->b()V

    .line 34
    return-void
.end method


# virtual methods
.method public a(I)Lcjt;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcjr;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 149
    :cond_0
    const/4 v0, 0x0

    .line 151
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcjr;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcjt;

    goto :goto_0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcjr;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcjt;

    .line 81
    invoke-virtual {v0}, Lcjt;->a()V

    goto :goto_0

    .line 82
    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcjr;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcjt;

    .line 88
    invoke-virtual {v0, p1}, Lcjt;->a(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 89
    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Canvas;[Lchv;)V
    .locals 9

    .prologue
    const/4 v3, -0x1

    .line 110
    iget-object v0, p0, Lcjr;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/charts/Chart;

    .line 111
    if-nez v0, :cond_1

    .line 139
    :cond_0
    return-void

    .line 113
    :cond_1
    iget-object v1, p0, Lcjr;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcjt;

    .line 114
    const/4 v2, 0x0

    .line 116
    instance-of v4, v1, Lcjm;

    if-eqz v4, :cond_4

    move-object v2, v1

    .line 117
    check-cast v2, Lcjm;

    iget-object v2, v2, Lcjm;->a:Lcic;

    invoke-interface {v2}, Lcic;->f()Lcge;

    move-result-object v2

    move-object v4, v2

    .line 127
    :goto_1
    if-nez v4, :cond_8

    move v2, v3

    .line 130
    :goto_2
    iget-object v4, p0, Lcjr;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 132
    array-length v6, p2

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v6, :cond_9

    aget-object v7, p2, v4

    .line 133
    invoke-virtual {v7}, Lchv;->e()I

    move-result v8

    if-eq v8, v2, :cond_2

    invoke-virtual {v7}, Lchv;->e()I

    move-result v8

    if-ne v8, v3, :cond_3

    .line 134
    :cond_2
    iget-object v8, p0, Lcjr;->c:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 118
    :cond_4
    instance-of v4, v1, Lcjx;

    if-eqz v4, :cond_5

    move-object v2, v1

    .line 119
    check-cast v2, Lcjx;

    iget-object v2, v2, Lcjx;->a:Lcii;

    invoke-interface {v2}, Lcii;->aL()Lcgt;

    move-result-object v2

    move-object v4, v2

    goto :goto_1

    .line 120
    :cond_5
    instance-of v4, v1, Lcjq;

    if-eqz v4, :cond_6

    move-object v2, v1

    .line 121
    check-cast v2, Lcjq;

    iget-object v2, v2, Lcjq;->a:Lcif;

    invoke-interface {v2}, Lcif;->e_()Lcgm;

    move-result-object v2

    move-object v4, v2

    goto :goto_1

    .line 122
    :cond_6
    instance-of v4, v1, Lckf;

    if-eqz v4, :cond_7

    move-object v2, v1

    .line 123
    check-cast v2, Lckf;

    iget-object v2, v2, Lckf;->a:Lcij;

    invoke-interface {v2}, Lcij;->aM()Lchd;

    move-result-object v2

    move-object v4, v2

    goto :goto_1

    .line 124
    :cond_7
    instance-of v4, v1, Lcjp;

    if-eqz v4, :cond_a

    move-object v2, v1

    .line 125
    check-cast v2, Lcjp;

    iget-object v2, v2, Lcjp;->a:Lcie;

    invoke-interface {v2}, Lcie;->c()Lcgk;

    move-result-object v2

    move-object v4, v2

    goto :goto_1

    .line 128
    :cond_8
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->aC()Lcgo;

    move-result-object v2

    check-cast v2, Lcgp;

    invoke-virtual {v2}, Lcgp;->t()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    goto :goto_2

    .line 137
    :cond_9
    iget-object v2, p0, Lcjr;->c:Ljava/util/List;

    iget-object v4, p0, Lcjr;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lchv;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lchv;

    invoke-virtual {v1, p1, v2}, Lcjt;->a(Landroid/graphics/Canvas;[Lchv;)V

    goto/16 :goto_0

    :cond_a
    move-object v4, v2

    goto/16 :goto_1
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcjt;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 164
    iput-object p1, p0, Lcjr;->a:Ljava/util/List;

    .line 165
    return-void
.end method

.method public b()V
    .locals 8

    .prologue
    .line 42
    iget-object v0, p0, Lcjr;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 44
    iget-object v0, p0, Lcjr;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/charts/CombinedChart;

    .line 45
    if-nez v0, :cond_1

    .line 75
    :cond_0
    return-void

    .line 48
    :cond_1
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/CombinedChart;->aN()[Lcff;

    move-result-object v2

    .line 50
    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 52
    sget-object v5, Lcjs;->a:[I

    invoke-virtual {v4}, Lcff;->ordinal()I

    move-result v4

    aget v4, v5, v4

    packed-switch v4, :pswitch_data_0

    .line 50
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 54
    :pswitch_0
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/CombinedChart;->f()Lcge;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 55
    iget-object v4, p0, Lcjr;->a:Ljava/util/List;

    new-instance v5, Lcjm;

    iget-object v6, p0, Lcjr;->g:Lcdq;

    iget-object v7, p0, Lcjr;->s:Lclh;

    invoke-direct {v5, v0, v6, v7}, Lcjm;-><init>(Lcic;Lcdq;Lclh;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 58
    :pswitch_1
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/CombinedChart;->c()Lcgk;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 59
    iget-object v4, p0, Lcjr;->a:Ljava/util/List;

    new-instance v5, Lcjp;

    iget-object v6, p0, Lcjr;->g:Lcdq;

    iget-object v7, p0, Lcjr;->s:Lclh;

    invoke-direct {v5, v0, v6, v7}, Lcjp;-><init>(Lcie;Lcdq;Lclh;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 62
    :pswitch_2
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/CombinedChart;->aL()Lcgt;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 63
    iget-object v4, p0, Lcjr;->a:Ljava/util/List;

    new-instance v5, Lcjx;

    iget-object v6, p0, Lcjr;->g:Lcdq;

    iget-object v7, p0, Lcjr;->s:Lclh;

    invoke-direct {v5, v0, v6, v7}, Lcjx;-><init>(Lcii;Lcdq;Lclh;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 66
    :pswitch_3
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/CombinedChart;->e_()Lcgm;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 67
    iget-object v4, p0, Lcjr;->a:Ljava/util/List;

    new-instance v5, Lcjq;

    iget-object v6, p0, Lcjr;->g:Lcdq;

    iget-object v7, p0, Lcjr;->s:Lclh;

    invoke-direct {v5, v0, v6, v7}, Lcjq;-><init>(Lcif;Lcdq;Lclh;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 70
    :pswitch_4
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/CombinedChart;->aM()Lchd;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 71
    iget-object v4, p0, Lcjr;->a:Ljava/util/List;

    new-instance v5, Lckf;

    iget-object v6, p0, Lcjr;->g:Lcdq;

    iget-object v7, p0, Lcjr;->s:Lclh;

    invoke-direct {v5, v0, v6, v7}, Lckf;-><init>(Lcij;Lcdq;Lclh;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public b(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcjr;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcjt;

    .line 95
    invoke-virtual {v0, p1}, Lcjt;->b(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 96
    :cond_0
    return-void
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcjt;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lcjr;->a:Ljava/util/List;

    return-object v0
.end method

.method public c(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcjr;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcjt;

    .line 102
    invoke-virtual {v0, p1}, Lcjt;->c(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 103
    :cond_0
    return-void
.end method
