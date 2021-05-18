.class public Latl;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 24
    sget v0, Lapi;->client_text_tv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Latl;->a:Landroid/widget/TextView;

    .line 25
    sget v0, Lapi;->client_time_tv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Latl;->b:Landroid/widget/TextView;

    .line 26
    sget v0, Lapi;->status_msg_imv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Latl;->c:Landroid/widget/ImageView;

    .line 27
    sget v0, Lapi;->client_msg_error_imv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Latl;->d:Landroid/widget/ImageView;

    .line 28
    return-void
.end method


# virtual methods
.method public a()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Latl;->d:Landroid/widget/ImageView;

    return-object v0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Latl;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 40
    return-void
.end method

.method public a(Lark;)V
    .locals 2

    .prologue
    .line 43
    iget-object v1, p0, Latl;->c:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lark;->o()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    invoke-virtual {p1}, Lark;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x8

    .line 43
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 45
    return-void

    .line 44
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Latl;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    return-void
.end method

.method public b(Lark;)V
    .locals 2

    .prologue
    .line 52
    iget-object v1, p0, Latl;->d:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lark;->o()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    invoke-virtual {p1}, Lark;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 52
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 54
    return-void

    .line 53
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Latl;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    return-void
.end method
