.class Lud;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field a:Landroid/widget/RelativeLayout;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/view/View;

.field e:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 57
    sget v0, Lla;->portifolio_produtos_filho_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lud;->a:Landroid/widget/RelativeLayout;

    .line 58
    sget v0, Lla;->portifolio_produtos_filho_nome:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lud;->b:Landroid/widget/TextView;

    .line 59
    sget v0, Lla;->portifolio_produtos_filho_valor:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lud;->c:Landroid/widget/TextView;

    .line 60
    sget v0, Lla;->portifolio_produtos_filho_divider:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lud;->d:Landroid/view/View;

    .line 61
    sget v0, Lla;->app_seta:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lud;->e:Landroid/widget/ImageView;

    .line 62
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Luc;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lud;-><init>(Landroid/view/View;)V

    return-void
.end method
