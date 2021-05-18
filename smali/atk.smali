.class public Latk;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lata;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ProgressBar;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/view/View;Lata;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 33
    iput-object p2, p0, Latk;->a:Lata;

    .line 34
    sget v0, Lapi;->client_time_tv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Latk;->d:Landroid/widget/TextView;

    .line 35
    sget v0, Lapi;->client_file_imv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Latk;->b:Landroid/widget/ImageView;

    .line 36
    sget v0, Lapi;->client_file_pb:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Latk;->c:Landroid/widget/ProgressBar;

    .line 37
    sget v0, Lapi;->client_file_name_tv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Latk;->e:Landroid/widget/TextView;

    .line 38
    sget v0, Lapi;->client_file_size_tv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Latk;->g:Landroid/widget/TextView;

    .line 39
    sget v0, Lapi;->stop_upload_imv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Latk;->f:Landroid/widget/ImageView;

    .line 40
    sget v0, Lapi;->status_file_imv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Latk;->h:Landroid/widget/ImageView;

    .line 41
    sget v0, Lapi;->client_file_error_imv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Latk;->i:Landroid/widget/ImageView;

    .line 42
    sget v0, Lapi;->client_file_frame_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Latk;->j:Landroid/widget/FrameLayout;

    .line 44
    iget-object v0, p0, Latk;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object v0, p0, Latk;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iget-object v0, p0, Latk;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Latk;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 51
    return-void
.end method

.method public a(Lark;)V
    .locals 2

    .prologue
    .line 58
    iget-object v1, p0, Latk;->c:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Lark;->o()Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    invoke-virtual {p1}, Lark;->v()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lark;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x8

    .line 58
    :goto_0
    invoke-static {v1, v0}, Lcom/ca/android/app/CaMDOProgressBar;->setVisibility(Landroid/widget/ProgressBar;I)V

    .line 60
    return-void

    .line 59
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Latk;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    return-void
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Latk;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 55
    return-void
.end method

.method public b(Lark;)V
    .locals 2

    .prologue
    .line 75
    iget-object v1, p0, Latk;->h:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lark;->o()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    invoke-virtual {p1}, Lark;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x8

    .line 75
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 77
    return-void

    .line 76
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Latk;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    return-void
.end method

.method public c(I)V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Latk;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 72
    return-void
.end method

.method public c(Lark;)V
    .locals 2

    .prologue
    .line 80
    iget-object v1, p0, Latk;->i:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lark;->o()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    invoke-virtual {p1}, Lark;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 80
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 82
    return-void

    .line 81
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Latk;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    return-void
.end method

.method public d(Lark;)V
    .locals 2

    .prologue
    .line 85
    iget-object v1, p0, Latk;->f:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lark;->o()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    invoke-virtual {p1}, Lark;->v()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lark;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x8

    .line 85
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 87
    return-void

    .line 86
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 95
    invoke-virtual {p0}, Latk;->getAdapterPosition()I

    move-result v0

    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lapi;->stop_upload_imv:I

    if-ne v1, v2, :cond_1

    .line 98
    iget-object v1, p0, Latk;->a:Lata;

    invoke-interface {v1, v0}, Lata;->b(I)V

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lapi;->client_file_error_imv:I

    if-ne v1, v2, :cond_2

    .line 100
    iget-object v1, p0, Latk;->a:Lata;

    invoke-interface {v1, v0}, Lata;->c(I)V

    goto :goto_0

    .line 101
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lapi;->client_file_frame_layout:I

    if-ne v1, v2, :cond_0

    .line 102
    iget-object v1, p0, Latk;->a:Lata;

    invoke-interface {v1, v0}, Lata;->d(I)V

    goto :goto_0
.end method
