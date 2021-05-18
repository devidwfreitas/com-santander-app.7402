.class Lty;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field final synthetic b:Ltu;


# direct methods
.method constructor <init>(Ltu;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lty;->b:Ltu;

    iput-object p2, p0, Lty;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 150
    iget-object v0, p0, Lty;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    check-cast v0, Ltz;

    iget-object v0, v0, Ltz;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lty;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    check-cast v0, Ltz;

    iget-object v0, v0, Ltz;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Llg;->app_ver_produtos:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lty;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    check-cast v0, Ltz;

    iget-object v0, v0, Ltz;->i:Landroid/widget/TextView;

    sget v1, Llg;->app_ocultar_produtos:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 152
    iget-object v0, p0, Lty;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    check-cast v0, Ltz;

    iget-object v0, v0, Ltz;->j:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lty;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    check-cast v0, Ltz;

    iget-object v0, v0, Ltz;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lty;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    check-cast v0, Ltz;

    iget-object v0, v0, Ltz;->g:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 161
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lty;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    check-cast v0, Ltz;

    iget-object v0, v0, Ltz;->i:Landroid/widget/TextView;

    sget v1, Llg;->app_ver_produtos:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 157
    iget-object v0, p0, Lty;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    check-cast v0, Ltz;

    iget-object v0, v0, Ltz;->j:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lty;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    check-cast v0, Ltz;

    iget-object v0, v0, Ltz;->g:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lty;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    check-cast v0, Ltz;

    iget-object v0, v0, Ltz;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method
