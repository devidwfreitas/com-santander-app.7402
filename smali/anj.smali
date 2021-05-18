.class Lanj;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field final synthetic a:Lani;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lani;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 59
    iput-object p1, p0, Lanj;->a:Lani;

    .line 60
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 61
    new-instance v0, Lank;

    invoke-direct {v0, p0, p1}, Lank;-><init>(Lanj;Lani;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    sget v0, Lals;->views_error_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lanj;->c:Landroid/widget/TextView;

    .line 71
    sget v0, Lals;->views_error_sub_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lanj;->d:Landroid/widget/TextView;

    .line 72
    sget v0, Lals;->view_error_item_image:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lanj;->b:Landroid/widget/ImageView;

    .line 73
    return-void
.end method

.method static synthetic a(Lanj;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lanj;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic b(Lanj;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lanj;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lanj;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lanj;->c:Landroid/widget/TextView;

    return-object v0
.end method
