.class public Latj;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lata;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ProgressBar;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/view/View;Lata;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 38
    iput-object p2, p0, Latj;->a:Lata;

    .line 39
    sget v0, Lapi;->user_msg_error_imv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Latj;->b:Landroid/widget/ImageView;

    .line 40
    sget v0, Lapi;->user_image_sended_imv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Latj;->c:Landroid/widget/ImageView;

    .line 41
    sget v0, Lapi;->user_file_name_tv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Latj;->d:Landroid/widget/TextView;

    .line 42
    sget v0, Lapi;->user_file_size_tv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Latj;->e:Landroid/widget/TextView;

    .line 43
    sget v0, Lapi;->user_cancel_send_image_imv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Latj;->f:Landroid/widget/ImageView;

    .line 44
    sget v0, Lapi;->user_file_pb:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Latj;->g:Landroid/widget/ProgressBar;

    .line 45
    sget v0, Lapi;->user_time_tv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Latj;->h:Landroid/widget/TextView;

    .line 46
    sget v0, Lapi;->user_file_status_msg_imv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Latj;->i:Landroid/widget/ImageView;

    .line 47
    sget v0, Lapi;->user_image_ll:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Latj;->j:Landroid/widget/LinearLayout;

    .line 49
    iget-object v0, p0, Latj;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object v0, p0, Latj;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object v0, p0, Latj;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Latj;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 87
    return-void
.end method

.method public a(Lark;)V
    .locals 2

    .prologue
    .line 55
    iget-object v1, p0, Latj;->b:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lark;->o()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    invoke-virtual {p1}, Lark;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 55
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 57
    return-void

    .line 56
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public a(Lark;Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 61
    invoke-virtual {p1}, Lark;->l()Larj;

    move-result-object v0

    invoke-virtual {v0}, Larj;->c()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laqs;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 62
    iget-object v1, p0, Latj;->c:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Latj;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    return-void
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Latj;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 95
    return-void
.end method

.method public b(Lark;)V
    .locals 2

    .prologue
    .line 74
    iget-object v1, p0, Latj;->f:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lark;->o()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    invoke-virtual {p1}, Lark;->v()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lark;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    invoke-virtual {p1}, Lark;->l()Larj;

    move-result-object v0

    invoke-virtual {v0}, Larj;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x8

    .line 74
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
    .line 70
    iget-object v0, p0, Latj;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    return-void
.end method

.method public c(Lark;)V
    .locals 2

    .prologue
    .line 80
    iget-object v1, p0, Latj;->g:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Lark;->o()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    invoke-virtual {p1}, Lark;->v()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lark;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    invoke-virtual {p1}, Lark;->l()Larj;

    move-result-object v0

    invoke-virtual {v0}, Larj;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x8

    .line 80
    :goto_0
    invoke-static {v1, v0}, Lcom/ca/android/app/CaMDOProgressBar;->setVisibility(Landroid/widget/ProgressBar;I)V

    .line 83
    return-void

    .line 82
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Latj;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    return-void
.end method

.method public d(Lark;)V
    .locals 2

    .prologue
    .line 98
    iget-object v1, p0, Latj;->i:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lark;->o()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    invoke-virtual {p1}, Lark;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x8

    .line 98
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 100
    return-void

    .line 99
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 104
    invoke-virtual {p0}, Latj;->getAdapterPosition()I

    move-result v0

    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lapi;->user_cancel_send_image_imv:I

    if-ne v1, v2, :cond_1

    .line 107
    iget-object v0, p0, Latj;->a:Lata;

    invoke-virtual {p0}, Latj;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Lata;->b(I)V

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lapi;->user_msg_error_imv:I

    if-ne v1, v2, :cond_2

    .line 109
    iget-object v1, p0, Latj;->a:Lata;

    invoke-interface {v1, v0}, Lata;->c(I)V

    goto :goto_0

    .line 110
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lapi;->user_image_ll:I

    if-ne v1, v2, :cond_0

    .line 111
    iget-object v1, p0, Latj;->a:Lata;

    invoke-interface {v1, v0}, Lata;->d(I)V

    goto :goto_0
.end method
