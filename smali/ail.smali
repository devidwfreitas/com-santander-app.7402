.class public Lail;
.super Lakb;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/support/v7/widget/RecyclerView;

.field private f:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field private g:Lajv;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lakb;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lail;->a:Landroid/app/Activity;

    invoke-virtual {p0}, Lail;->d()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lagg;->header_titulo:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lagl;->ajustar_limites:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lail;->a:Landroid/app/Activity;

    sget v1, Lagg;->topo_diminuir:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lail;->b:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lail;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lail;->a:Landroid/app/Activity;

    sget v1, Lagg;->diminuir_text_value:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lail;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lail;->a:Landroid/app/Activity;

    sget v1, Lagg;->main_contracts_list:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lail;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lail;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, p0, Lail;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lail;->f:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v0, p0, Lail;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lail;->f:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Laij;

    iget-object v1, p0, Lail;->g:Lajv;

    iget-object v2, p0, Lail;->a:Landroid/app/Activity;

    invoke-direct {v0, v1, v2}, Laij;-><init>(Lajv;Landroid/app/Activity;)V

    iget-object v1, p0, Lail;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method
