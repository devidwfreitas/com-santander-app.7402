.class public abstract Lmee;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmdn;
.implements Lmdt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item::",
        "Lmdt;",
        ":",
        "Lmdn;",
        "VH:",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">",
        "Ljava/lang/Object;",
        "Lmdn",
        "<TItem;>;",
        "Lmdt",
        "<TItem;TVH;>;"
    }
.end annotation


# instance fields
.field protected b:J

.field protected c:Ljava/lang/Object;

.field protected d:Z

.field protected e:Z

.field protected f:Z

.field protected g:Lmdg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmdg",
            "<TItem;>;"
        }
    .end annotation
.end field

.field protected h:Lmdg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmdg",
            "<TItem;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lmee;->b:J

    .line 75
    iput-boolean v2, p0, Lmee;->d:Z

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmee;->e:Z

    .line 120
    iput-boolean v2, p0, Lmee;->f:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")TVH;"
        }
    .end annotation

    .prologue
    .line 297
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lmee;->b(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmee;->b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;)Landroid/view/View;
    .locals 2

    .prologue
    .line 263
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmee;->b(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmee;->b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 266
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lmee;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)V

    .line 269
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object v0
.end method

.method public a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .prologue
    .line 281
    invoke-virtual {p0, p1, p2}, Lmee;->b(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmee;->b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 284
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lmee;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)V

    .line 286
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object v0
.end method

.method public synthetic a(J)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lmee;->b(J)Lmdt;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .prologue
    .line 209
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 198
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Lmee;->m()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 199
    return-void
.end method

.method public a(I)Z
    .locals 4

    .prologue
    .line 317
    int-to-long v0, p1

    iget-wide v2, p0, Lmee;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TVH;"
        }
    .end annotation
.end method

.method public b(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 252
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lmee;->c()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lmee;->c(Ljava/lang/Object;)Lmdt;

    move-result-object v0

    return-object v0
.end method

.method public b(J)Lmdt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TItem;"
        }
    .end annotation

    .prologue
    .line 40
    iput-wide p1, p0, Lmee;->b:J

    .line 41
    return-object p0
.end method

.method public b(Lmdg;)Lmdt;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmdg",
            "<TItem;>;)TItem;"
        }
    .end annotation

    .prologue
    .line 154
    iput-object p1, p0, Lmee;->g:Lmdg;

    .line 155
    return-object p0
.end method

.method public b(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .prologue
    .line 219
    return-void
.end method

.method public c(Ljava/lang/Object;)Lmdt;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TItem;"
        }
    .end annotation

    .prologue
    .line 62
    iput-object p1, p0, Lmee;->c:Ljava/lang/Object;

    .line 63
    return-object p0
.end method

.method public c(Lmdg;)Lmdt;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmdg",
            "<TItem;>;)TItem;"
        }
    .end annotation

    .prologue
    .line 177
    iput-object p1, p0, Lmee;->h:Lmdg;

    .line 178
    return-object p0
.end method

.method public c(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .prologue
    .line 229
    return-void
.end method

.method public d()Lmdg;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmdg",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lmee;->h:Lmdg;

    return-object v0
.end method

.method public d(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)Z"
        }
    .end annotation

    .prologue
    .line 240
    const/4 v0, 0x0

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lmee;->f:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 328
    if-ne p0, p1, :cond_1

    .line 331
    :cond_0
    :goto_0
    return v0

    .line 329
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 330
    :cond_3
    check-cast p1, Lmee;

    .line 331
    iget-wide v2, p0, Lmee;->b:J

    iget-wide v4, p1, Lmee;->b:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public synthetic h(Z)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lmee;->k(Z)Lmdt;

    move-result-object v0

    return-object v0
.end method

.method public h()Lmdg;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmdg",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lmee;->g:Lmdg;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 341
    iget-wide v0, p0, Lmee;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    return v0
.end method

.method public synthetic i(Z)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lmee;->l(Z)Lmdt;

    move-result-object v0

    return-object v0
.end method

.method public j()J
    .locals 2

    .prologue
    .line 49
    iget-wide v0, p0, Lmee;->b:J

    return-wide v0
.end method

.method public synthetic j(Z)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lmee;->m(Z)Lmdt;

    move-result-object v0

    return-object v0
.end method

.method public k()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lmee;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public k(Z)Lmdt;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TItem;"
        }
    .end annotation

    .prologue
    .line 84
    iput-boolean p1, p0, Lmee;->d:Z

    .line 85
    return-object p0
.end method

.method public l(Z)Lmdt;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TItem;"
        }
    .end annotation

    .prologue
    .line 107
    iput-boolean p1, p0, Lmee;->e:Z

    .line 108
    return-object p0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lmee;->d:Z

    return v0
.end method

.method public m(Z)Lmdt;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TItem;"
        }
    .end annotation

    .prologue
    .line 130
    iput-boolean p1, p0, Lmee;->f:Z

    .line 131
    return-object p0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lmee;->e:Z

    return v0
.end method
