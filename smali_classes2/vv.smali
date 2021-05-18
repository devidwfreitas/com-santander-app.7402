.class public Lvv;
.super Lacr;
.source "SourceFile"


# instance fields
.field private a:Luz;

.field private c:Landroid/widget/ImageButton;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/support/v7/widget/RecyclerView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lack;Luz;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lacr;-><init>(Lack;)V

    .line 28
    iput-object p2, p0, Lvv;->a:Luz;

    .line 29
    invoke-direct {p0}, Lvv;->a()V

    .line 30
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lvv;->a:Luz;

    invoke-virtual {v0}, Luz;->e()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 34
    invoke-virtual {p0}, Lvv;->e()Lack;

    move-result-object v0

    sget v1, Lla;->header_cancel:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lvv;->c:Landroid/widget/ImageButton;

    .line 35
    invoke-virtual {p0}, Lvv;->e()Lack;

    move-result-object v0

    sget v1, Lla;->header_titulo:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lvv;->d:Landroid/widget/TextView;

    .line 36
    invoke-virtual {p0}, Lvv;->e()Lack;

    move-result-object v0

    sget v1, Lla;->all_subp_lista_subp:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lvv;->e:Landroid/support/v7/widget/RecyclerView;

    .line 37
    invoke-virtual {p0}, Lvv;->e()Lack;

    move-result-object v0

    sget v1, Lla;->all_subp_family_name:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lvv;->f:Landroid/widget/TextView;

    .line 38
    invoke-virtual {p0}, Lvv;->e()Lack;

    move-result-object v0

    sget v1, Lla;->all_subp_header_text:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lvv;->g:Landroid/widget/TextView;

    .line 39
    invoke-direct {p0}, Lvv;->b()V

    .line 40
    return-void
.end method

.method private b()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 43
    iget-object v0, p0, Lvv;->c:Landroid/widget/ImageButton;

    sget v1, Lkz;->ic_back:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 44
    iget-object v0, p0, Lvv;->c:Landroid/widget/ImageButton;

    new-instance v1, Lvw;

    invoke-direct {v1, p0}, Lvw;-><init>(Lvv;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object v0, p0, Lvv;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lvv;->a:Luz;

    invoke-virtual {v1}, Luz;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v0, p0, Lvv;->e:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lvv;->e()Lack;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 52
    iget-object v0, p0, Lvv;->e:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lvi;

    invoke-virtual {p0}, Lvv;->e()Lack;

    move-result-object v2

    iget-object v3, p0, Lvv;->a:Luz;

    iget-object v4, p0, Lvv;->a:Luz;

    invoke-virtual {v4}, Luz;->e()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, v4, v5}, Lvi;-><init>(Landroid/content/Context;Luz;Ljava/util/List;Z)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 53
    iget-object v0, p0, Lvv;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v6}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 54
    iget-object v0, p0, Lvv;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v6}, Landroid/support/v7/widget/RecyclerView;->setFocusable(Z)V

    .line 55
    iget-object v0, p0, Lvv;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lvv;->a:Luz;

    invoke-virtual {v1}, Luz;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v0, p0, Lvv;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lvv;->a:Luz;

    invoke-virtual {v1}, Luz;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    return-void
.end method
