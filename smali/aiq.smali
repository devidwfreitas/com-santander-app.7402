.class public Laiq;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/ProgressBar;

.field final synthetic h:Laip;


# direct methods
.method public constructor <init>(Laip;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Laiq;->h:Laip;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    sget v0, Lagg;->product_name_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Laiq;->a:Landroid/widget/TextView;

    sget v0, Lagg;->product_specifics_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Laiq;->b:Landroid/widget/TextView;

    sget v0, Lagg;->product_specifics_text_shared:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Laiq;->c:Landroid/widget/TextView;

    sget v0, Lagg;->contract_current_limit_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Laiq;->d:Landroid/widget/TextView;

    sget v0, Lagg;->limite_disponivel_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Laiq;->e:Landroid/widget/TextView;

    sget v0, Lagg;->alterar_contract_button:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Laiq;->f:Landroid/widget/TextView;

    sget v0, Lagg;->contract_status_bar:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Laiq;->g:Landroid/widget/ProgressBar;

    return-void
.end method
