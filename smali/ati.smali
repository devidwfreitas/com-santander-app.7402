.class public Lati;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lasz;

.field private b:Landroid/widget/FrameLayout;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/ProgressBar;

.field private j:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lasz;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 38
    iput-object p2, p0, Lati;->a:Lasz;

    .line 39
    sget v0, Lapi;->agent_file_fl:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lati;->b:Landroid/widget/FrameLayout;

    .line 40
    sget v0, Lapi;->agent_name_text_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lati;->c:Landroid/widget/TextView;

    .line 41
    sget v0, Lapi;->agent_image_received_imv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lati;->d:Landroid/widget/ImageView;

    .line 42
    sget v0, Lapi;->agent_file_name_new_tv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lati;->e:Landroid/widget/TextView;

    .line 43
    sget v0, Lapi;->agent_file_size_new_tv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lati;->f:Landroid/widget/TextView;

    .line 44
    sget v0, Lapi;->agent_cancel_receiving_image_imv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lati;->g:Landroid/widget/ImageView;

    .line 45
    sget v0, Lapi;->agent_start_download_image_imv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lati;->h:Landroid/widget/ImageView;

    .line 46
    sget v0, Lapi;->agent_file_pb:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lati;->i:Landroid/widget/ProgressBar;

    .line 47
    sget v0, Lapi;->agent_time_file_tv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lati;->j:Landroid/widget/TextView;

    .line 49
    iget-object v0, p0, Lati;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object v0, p0, Lati;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object v0, p0, Lati;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lati;->i:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 95
    return-void
.end method

.method public a(Lark;)V
    .locals 3

    .prologue
    const/16 v0, 0x8

    .line 88
    iget-object v1, p0, Lati;->i:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Lark;->l()Larj;

    move-result-object v2

    invoke-virtual {v2}, Larj;->g()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    invoke-static {v1, v0}, Lcom/ca/android/app/CaMDOProgressBar;->setVisibility(Landroid/widget/ProgressBar;I)V

    .line 91
    return-void

    .line 89
    :cond_1
    invoke-virtual {p1}, Lark;->l()Larj;

    move-result-object v2

    invoke-virtual {v2}, Larj;->o()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lark;Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 56
    invoke-virtual {p1}, Lark;->l()Larj;

    move-result-object v0

    invoke-virtual {v0}, Larj;->c()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p1}, Lark;->l()Larj;

    move-result-object v0

    invoke-virtual {v0}, Larj;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lark;->l()Larj;

    move-result-object v0

    invoke-virtual {v0}, Larj;->g()Z

    move-result v0

    if-nez v0, :cond_1

    .line 58
    iget-object v0, p0, Lati;->d:Landroid/widget/ImageView;

    sget v1, Laph;->thumbnail_download_fail:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    invoke-virtual {p1}, Lark;->l()Larj;

    move-result-object v0

    invoke-virtual {v0}, Larj;->y()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lark;->l()Larj;

    move-result-object v0

    invoke-virtual {v0}, Larj;->g()Z

    move-result v0

    if-nez v0, :cond_2

    .line 61
    invoke-virtual {p1}, Lark;->l()Larj;

    move-result-object v0

    invoke-virtual {v0}, Larj;->z()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laqs;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lati;->d:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 64
    :cond_2
    invoke-virtual {p1}, Lark;->l()Larj;

    move-result-object v0

    invoke-virtual {v0}, Larj;->c()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laqs;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lati;->d:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lati;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    return-void
.end method

.method public b(Lark;)V
    .locals 3

    .prologue
    const/16 v0, 0x8

    .line 98
    iget-object v1, p0, Lati;->h:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lark;->l()Larj;

    move-result-object v2

    invoke-virtual {v2}, Larj;->g()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 101
    return-void

    .line 99
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

    .line 100
    invoke-virtual {p1}, Lark;->v()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lati;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    return-void
.end method

.method public c(Lark;)V
    .locals 3

    .prologue
    const/16 v0, 0x8

    .line 104
    iget-object v1, p0, Lati;->g:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lark;->l()Larj;

    move-result-object v2

    invoke-virtual {v2}, Larj;->g()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 107
    return-void

    .line 105
    :cond_1
    invoke-virtual {p1}, Lark;->l()Larj;

    move-result-object v2

    invoke-virtual {v2}, Larj;->o()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lati;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lati;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 111
    invoke-virtual {p0}, Lati;->getAdapterPosition()I

    move-result v0

    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lapi;->agent_start_download_image_imv:I

    if-ne v1, v2, :cond_1

    .line 114
    iget-object v1, p0, Lati;->a:Lasz;

    invoke-interface {v1, v0}, Lasz;->h(I)V

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lapi;->agent_cancel_receiving_image_imv:I

    if-ne v1, v2, :cond_2

    .line 116
    iget-object v1, p0, Lati;->a:Lasz;

    invoke-interface {v1, v0}, Lasz;->e(I)V

    goto :goto_0

    .line 117
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lapi;->agent_file_fl:I

    if-ne v1, v2, :cond_0

    .line 118
    iget-object v1, p0, Lati;->a:Lasz;

    invoke-interface {v1, v0}, Lasz;->g(I)V

    goto :goto_0
.end method
