.class public Laik;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/EditText;

.field public e:Landroid/widget/TextView;

.field final synthetic f:Laij;


# direct methods
.method public constructor <init>(Laij;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Laik;->f:Laij;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    sget v0, Lagg;->product_name_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Laik;->a:Landroid/widget/TextView;

    sget v0, Lagg;->product_specifics_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Laik;->b:Landroid/widget/TextView;

    sget v0, Lagg;->compartilhado_product_specifics_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Laik;->c:Landroid/widget/TextView;

    sget v0, Lagg;->ajuste_limite_edittext:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Laik;->d:Landroid/widget/EditText;

    sget v0, Lagg;->limites_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Laik;->e:Landroid/widget/TextView;

    return-void
.end method
