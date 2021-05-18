.class public Lgtr;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/santander/app/components/view/dropuplist/ListDropUp;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/santander/app/components/view/dropuplist/ListDropUp;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lgtr;->a:Lcom/santander/app/components/view/dropuplist/ListDropUp;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    .prologue
    .line 122
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 123
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 3

    .prologue
    .line 127
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 129
    iget-object v0, p0, Lgtr;->a:Lcom/santander/app/components/view/dropuplist/ListDropUp;

    invoke-static {v0}, Lcom/santander/app/components/view/dropuplist/ListDropUp;->g(Lcom/santander/app/components/view/dropuplist/ListDropUp;)Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 131
    if-eqz v0, :cond_1

    .line 132
    iget-object v1, p0, Lgtr;->a:Lcom/santander/app/components/view/dropuplist/ListDropUp;

    invoke-static {v1}, Lcom/santander/app/components/view/dropuplist/ListDropUp;->b(Lcom/santander/app/components/view/dropuplist/ListDropUp;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 137
    :goto_0
    iget v1, p0, Lgtr;->b:I

    if-ge v1, v0, :cond_0

    .line 138
    const-string v1, "SCROLLING DOWN"

    const-string v2, "TRUE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_0
    iput v0, p0, Lgtr;->b:I

    .line 142
    return-void

    .line 134
    :cond_1
    iget-object v1, p0, Lgtr;->a:Lcom/santander/app/components/view/dropuplist/ListDropUp;

    invoke-static {v1}, Lcom/santander/app/components/view/dropuplist/ListDropUp;->b(Lcom/santander/app/components/view/dropuplist/ListDropUp;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method
