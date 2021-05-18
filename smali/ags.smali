.class public Lags;
.super Lakb;


# instance fields
.field private a:Landroid/support/v7/widget/RecyclerView;

.field private b:Lagp;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lajn;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/app/Activity;

.field private e:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field private f:Ljava/lang/String;

.field private g:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lajn;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lakb;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lags;->d:Landroid/app/Activity;

    iput-object p2, p0, Lags;->c:Ljava/util/List;

    iput-object p3, p0, Lags;->f:Ljava/lang/String;

    invoke-virtual {p0}, Lags;->a()V

    return-void
.end method

.method static synthetic a(Lags;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lags;->d:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lags;->d:Landroid/app/Activity;

    sget v1, Lagg;->header_titulo:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lags;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lags;->d:Landroid/app/Activity;

    sget v1, Lagg;->conheca_oferta_button:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lags;->g:Landroid/widget/Button;

    iget-object v0, p0, Lags;->g:Landroid/widget/Button;

    new-instance v1, Lagt;

    invoke-direct {v1, p0}, Lagt;-><init>(Lags;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lags;->d:Landroid/app/Activity;

    sget v1, Lagg;->contracts_recyclerview:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lags;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lags;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, p0, Lags;->d:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lags;->e:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v0, p0, Lags;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lags;->e:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Lagp;

    iget-object v1, p0, Lags;->c:Ljava/util/List;

    iget-object v2, p0, Lags;->d:Landroid/app/Activity;

    invoke-direct {v0, v1, v2}, Lagp;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object v0, p0, Lags;->b:Lagp;

    iget-object v0, p0, Lags;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lags;->b:Lagp;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method
