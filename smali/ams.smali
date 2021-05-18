.class Lams;
.super Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lamr;


# direct methods
.method constructor <init>(Lamr;)V
    .locals 0

    .prologue
    .line 444
    iput-object p1, p0, Lams;->a:Lamr;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 447
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    .line 448
    iget-object v0, p0, Lams;->a:Lamr;

    invoke-static {v0}, Lamr;->d(Lamr;)Lamh;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lams;->a:Lamr;

    invoke-static {v0}, Lamr;->e(Lamr;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 457
    :cond_0
    :goto_0
    return-void

    .line 450
    :cond_1
    iget-object v0, p0, Lams;->a:Lamr;

    invoke-static {v0}, Lamr;->f(Lamr;)V

    .line 452
    iget-object v0, p0, Lams;->a:Lamr;

    invoke-static {v0}, Lamr;->c(Lamr;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 453
    iget-object v0, p0, Lams;->a:Lamr;

    invoke-static {v0}, Lamr;->c(Lamr;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lams;->a:Lamr;

    invoke-static {v1}, Lamr;->a(Lamr;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 454
    iget-object v0, p0, Lams;->a:Lamr;

    invoke-virtual {v0}, Lamr;->notifyDataSetChanged()V

    .line 456
    iget-object v0, p0, Lams;->a:Lamr;

    invoke-static {v0}, Lamr;->d(Lamr;)Lamh;

    move-result-object v0

    invoke-interface {v0}, Lamh;->a()V

    goto :goto_0
.end method
