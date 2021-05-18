.class final Lafr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lafq;


# direct methods
.method constructor <init>(Lafq;)V
    .locals 0

    iput-object p1, p0, Lafr;->a:Lafq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lafr;->a:Lafq;

    iget-object v0, v0, Lafq;->a:Lafh;

    invoke-static {v0}, Lafh;->e(Lafh;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Laey;

    invoke-virtual {v0}, Laey;->getItemCount()I

    move-result v1

    iget-object v2, p0, Lafr;->a:Lafq;

    iget-object v2, v2, Lafq;->a:Lafh;

    invoke-static {v2}, Lafh;->d(Lafh;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Laey;->notifyItemRangeInserted(II)V

    return-void
.end method
