.class public Lmen;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs a([Landroid/view/View;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)V
    .locals 4
    .param p0    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Item::",
            "Lmdt;",
            ">(",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            "Ljava/util/List",
            "<",
            "Lmei",
            "<TItem;>;>;)V"
        }
    .end annotation

    .prologue
    .line 36
    if-nez p1, :cond_1

    .line 52
    :cond_0
    return-void

    .line 39
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmei;

    .line 40
    invoke-interface {v0, p0}, Lmei;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/view/View;

    move-result-object v1

    .line 41
    if-eqz v1, :cond_3

    .line 42
    invoke-static {v0, p0, v1}, Lmen;->a(Lmei;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/view/View;)V

    .line 45
    :cond_3
    invoke-interface {v0, p0}, Lmei;->b(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Ljava/util/List;

    move-result-object v1

    .line 46
    if-eqz v1, :cond_2

    .line 47
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 48
    invoke-static {v0, p0, v1}, Lmen;->a(Lmei;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/view/View;)V

    goto :goto_0
.end method

.method public static a(Lmei;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/view/View;)V
    .locals 1
    .param p0    # Lmei;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Item::",
            "Lmdt;",
            ">(",
            "Lmei",
            "<TItem;>;",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 62
    instance-of v0, p0, Lmeg;

    if-eqz v0, :cond_1

    .line 63
    new-instance v0, Lmeo;

    invoke-direct {v0, p1, p0}, Lmeo;-><init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;Lmei;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    instance-of v0, p0, Lmek;

    if-eqz v0, :cond_2

    .line 83
    new-instance v0, Lmep;

    invoke-direct {v0, p1, p0}, Lmep;-><init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;Lmei;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0

    .line 103
    :cond_2
    instance-of v0, p0, Lmel;

    if-eqz v0, :cond_3

    .line 104
    new-instance v0, Lmeq;

    invoke-direct {v0, p1, p0}, Lmeq;-><init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;Lmei;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 124
    :cond_3
    instance-of v0, p0, Lmeh;

    if-eqz v0, :cond_0

    .line 126
    check-cast p0, Lmeh;

    invoke-virtual {p0, p2, p1}, Lmeh;->a(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_0
.end method
