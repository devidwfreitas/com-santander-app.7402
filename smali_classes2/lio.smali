.class Llio;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmbu;


# instance fields
.field final synthetic a:Lliq;

.field final synthetic b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field final synthetic c:Llik;


# direct methods
.method constructor <init>(Llik;Lliq;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Llio;->c:Llik;

    iput-object p2, p0, Llio;->a:Lliq;

    iput-object p3, p0, Llio;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 0

    .prologue
    .line 155
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Llio;->a:Lliq;

    invoke-static {v0}, Lliq;->b(Lliq;)Landroid/support/v7/widget/CardView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setClickable(Z)V

    .line 160
    iget-object v0, p0, Llio;->c:Llik;

    invoke-static {v0}, Llik;->b(Llik;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Llio;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 161
    return-void
.end method

.method public b(Z)V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Llio;->a:Lliq;

    invoke-static {v0}, Lliq;->b(Lliq;)Landroid/support/v7/widget/CardView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setClickable(Z)V

    .line 166
    return-void
.end method
