.class public Latf;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lasz;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/FrameLayout;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/ProgressBar;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/FrameLayout;

.field private m:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/view/View;Lasz;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 37
    iput-object p2, p0, Latf;->a:Lasz;

    .line 38
    sget v0, Lapi;->agent_name_file_tv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Latf;->b:Landroid/widget/TextView;

    .line 39
    sget v0, Lapi;->agent_file_name_tv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Latf;->c:Landroid/widget/TextView;

    .line 40
    sget v0, Lapi;->agent_file_size_tv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Latf;->d:Landroid/widget/TextView;

    .line 41
    sget v0, Lapi;->agent_file_download_fl:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Latf;->e:Landroid/widget/FrameLayout;

    .line 42
    sget v0, Lapi;->agent_start_download_imv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Latf;->f:Landroid/widget/ImageView;

    .line 43
    sget v0, Lapi;->agent_stop_download_imv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Latf;->g:Landroid/widget/ImageView;

    .line 44
    sget v0, Lapi;->agent_file_progress_ll:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Latf;->h:Landroid/widget/LinearLayout;

    .line 45
    sget v0, Lapi;->agent_file_download_pb:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Latf;->i:Landroid/widget/ProgressBar;

    .line 46
    sget v0, Lapi;->agent_file_time_tv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Latf;->j:Landroid/widget/TextView;

    .line 47
    sget v0, Lapi;->agent_file_imv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Latf;->k:Landroid/widget/ImageView;

    .line 48
    sget v0, Lapi;->agent_file_frame_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Latf;->l:Landroid/widget/FrameLayout;

    .line 49
    sget v0, Lapi;->agent_stop_download_ll:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Latf;->m:Landroid/widget/LinearLayout;

    .line 51
    iget-object v0, p0, Latf;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object v0, p0, Latf;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v0, p0, Latf;->l:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Latf;->i:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 75
    return-void
.end method

.method public a(Lark;)V
    .locals 3

    .prologue
    const/16 v0, 0x8

    .line 83
    iget-object v1, p0, Latf;->e:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Lark;->l()Larj;

    move-result-object v2

    invoke-virtual {v2}, Larj;->g()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 86
    return-void

    .line 84
    :cond_1
    invoke-virtual {p1}, Lark;->l()Larj;

    move-result-object v2

    invoke-virtual {v2}, Larj;->o()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lark;->l()Larj;

    move-result-object v2

    invoke-virtual {v2}, Larj;->l()Z

    move-result v2

    if-nez v2, :cond_2

    .line 85
    invoke-virtual {p1}, Lark;->v()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Latf;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    return-void
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Latf;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 80
    return-void
.end method

.method public b(Lark;)V
    .locals 3

    .prologue
    const/16 v0, 0x8

    .line 89
    iget-object v1, p0, Latf;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Lark;->l()Larj;

    move-result-object v2

    invoke-virtual {v2}, Larj;->g()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 92
    return-void

    .line 90
    :cond_1
    invoke-virtual {p1}, Lark;->l()Larj;

    move-result-object v2

    invoke-virtual {v2}, Larj;->o()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lark;->l()Larj;

    move-result-object v2

    invoke-virtual {v2}, Larj;->l()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 91
    invoke-virtual {p1}, Lark;->v()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Latf;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    return-void
.end method

.method public c(Lark;)V
    .locals 3

    .prologue
    const/16 v0, 0x8

    .line 95
    iget-object v1, p0, Latf;->m:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Lark;->l()Larj;

    move-result-object v2

    invoke-virtual {v2}, Larj;->g()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 98
    return-void

    .line 96
    :cond_1
    invoke-virtual {p1}, Lark;->l()Larj;

    move-result-object v2

    invoke-virtual {v2}, Larj;->o()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lark;->l()Larj;

    move-result-object v2

    invoke-virtual {v2}, Larj;->l()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 97
    invoke-virtual {p1}, Lark;->v()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Latf;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Latf;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 103
    invoke-virtual {p0}, Latf;->getAdapterPosition()I

    move-result v0

    .line 105
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lapi;->agent_start_download_imv:I

    if-ne v1, v2, :cond_1

    .line 106
    iget-object v1, p0, Latf;->a:Lasz;

    invoke-interface {v1, v0}, Lasz;->h(I)V

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lapi;->agent_stop_download_imv:I

    if-ne v1, v2, :cond_2

    .line 108
    iget-object v1, p0, Latf;->a:Lasz;

    invoke-interface {v1, v0}, Lasz;->e(I)V

    goto :goto_0

    .line 109
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lapi;->agent_file_frame_layout:I

    if-ne v1, v2, :cond_0

    .line 110
    iget-object v1, p0, Latf;->a:Lasz;

    invoke-interface {v1, v0}, Lasz;->g(I)V

    goto :goto_0
.end method
