.class Ltv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field final synthetic c:Ltu;


# direct methods
.method constructor <init>(Ltu;ILandroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Ltv;->c:Ltu;

    iput p2, p0, Ltv;->a:I

    iput-object p3, p0, Ltv;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Ltv;->c:Ltu;

    iget-object v0, v0, Ltu;->a:Ljava/util/List;

    iget v1, p0, Ltv;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsy;

    invoke-virtual {v0}, Lsy;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Ltv;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    check-cast v0, Ltz;

    iget-object v0, v0, Ltz;->l:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Laaz;->a(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
