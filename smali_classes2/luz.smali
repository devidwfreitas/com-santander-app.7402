.class Lluz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lluy;


# direct methods
.method constructor <init>(Lluy;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lluz;->a:Lluy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lluz;->a:Lluy;

    iget-object v0, v0, Lluy;->a:Lluw;

    iget-object v0, v0, Lluw;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    if-ltz v0, :cond_0

    .line 183
    iget-object v0, p0, Lluz;->a:Lluy;

    iget-object v0, v0, Lluy;->a:Lluw;

    iget-object v0, v0, Lluw;->c:Lluv;

    invoke-static {v0}, Lluv;->e(Lluv;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lluz;->a:Lluy;

    iget-object v1, v1, Lluy;->a:Lluw;

    iget-object v1, v1, Lluw;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 185
    :cond_0
    iget-object v0, p0, Lluz;->a:Lluy;

    iget-object v0, v0, Lluy;->a:Lluw;

    iget-object v0, v0, Lluw;->c:Lluv;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lluv;->b(Lluv;I)I

    .line 186
    return-void
.end method
