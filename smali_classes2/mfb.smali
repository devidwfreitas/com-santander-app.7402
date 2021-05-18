.class final Lmfb;
.super Landroid/support/v7/util/DiffUtil$Callback;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lmey;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/List;Lmey;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lmfb;->a:Ljava/util/List;

    iput-object p2, p0, Lmfb;->b:Ljava/util/List;

    iput-object p3, p0, Lmfb;->c:Lmey;

    invoke-direct {p0}, Landroid/support/v7/util/DiffUtil$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(II)Z
    .locals 3

    .prologue
    .line 61
    iget-object v0, p0, Lmfb;->c:Lmey;

    iget-object v1, p0, Lmfb;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lmfb;->b:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lmey;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public areItemsTheSame(II)Z
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Lmfb;->c:Lmey;

    iget-object v1, p0, Lmfb;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lmfb;->b:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lmey;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getChangePayload(II)Ljava/lang/Object;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lmfb;->c:Lmey;

    iget-object v1, p0, Lmfb;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lmfb;->b:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2, p2}, Lmey;->a(Ljava/lang/Object;ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    .line 68
    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/support/v7/util/DiffUtil$Callback;->getChangePayload(II)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getNewListSize()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lmfb;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getOldListSize()I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lmfb;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
