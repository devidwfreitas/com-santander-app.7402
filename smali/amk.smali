.class Lamk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field final synthetic b:Lamj;


# direct methods
.method constructor <init>(Lamj;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lamk;->b:Lamj;

    iput-object p2, p0, Lamk;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lamk;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 159
    iget-object v1, p0, Lamk;->b:Lamj;

    iget-object v1, v1, Lamj;->a:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    iget-object v1, v1, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->a:Lamh;

    invoke-interface {v1, v0}, Lamh;->b(I)V

    .line 160
    return-void
.end method
