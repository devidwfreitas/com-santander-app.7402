.class public Lwf;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lwg;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lvx;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 29
    iput-object p1, p0, Lwf;->a:Landroid/content/Context;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lwf;->b:Ljava/util/List;

    .line 31
    return-void
.end method

.method private a(I)Lvx;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lwf;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 88
    iget-object v0, p0, Lwf;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvx;

    .line 91
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lwg;
    .locals 4

    .prologue
    .line 40
    new-instance v0, Lwg;

    .line 42
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 41
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Llc;->recyclerview_recomendacao_investimentos_row:I

    const/4 v3, 0x0

    .line 42
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lwg;-><init>(Landroid/view/View;)V

    .line 40
    return-object v0
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lvx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    iput-object p1, p0, Lwf;->b:Ljava/util/List;

    .line 35
    invoke-virtual {p0}, Lwf;->notifyDataSetChanged()V

    .line 36
    return-void
.end method

.method public a(Lwg;I)V
    .locals 4

    .prologue
    .line 48
    invoke-direct {p0, p2}, Lwf;->a(I)Lvx;

    move-result-object v1

    .line 50
    if-eqz v1, :cond_1

    .line 52
    :try_start_0
    invoke-virtual {p1}, Lwg;->b()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v1}, Lvx;->a()Lwe;

    move-result-object v2

    invoke-virtual {v2}, Lwe;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    invoke-virtual {p1}, Lwg;->c()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v1}, Lvx;->a()Lwe;

    move-result-object v2

    invoke-virtual {v2}, Lwe;->h()Lvy;

    move-result-object v2

    invoke-virtual {v2}, Lvy;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    invoke-virtual {p1}, Lwg;->d()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v1}, Lvx;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    invoke-virtual {p1}, Lwg;->e()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v1}, Lvx;->a()Lwe;

    move-result-object v2

    invoke-virtual {v2}, Lwe;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-virtual {p1}, Lwg;->f()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v1}, Lvx;->c()Ljava/lang/Double;

    move-result-object v2

    invoke-static {v2}, Laat;->a(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {v1}, Lvx;->a()Lwe;

    move-result-object v0

    invoke-virtual {v0}, Lwe;->f()Ljava/lang/String;

    move-result-object v2

    const/4 v0, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_1

    .line 69
    invoke-virtual {p1}, Lwg;->g()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v2, p0, Lwf;->a:Landroid/content/Context;

    sget v3, Lkz;->ic_risco_variavel:I

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    :goto_1
    invoke-virtual {p1}, Lwg;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1}, Lvx;->a()Lwe;

    move-result-object v1

    invoke-virtual {v1}, Lwe;->h()Lvy;

    move-result-object v1

    invoke-virtual {v1}, Lvy;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 79
    :cond_1
    :goto_2
    return-void

    .line 58
    :pswitch_0
    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const-string v3, "3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const-string v3, "4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 60
    :pswitch_3
    invoke-virtual {p1}, Lwg;->g()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v2, p0, Lwf;->a:Landroid/content/Context;

    sget v3, Lkz;->ic_risco_baixo:I

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 74
    :catch_0
    move-exception v0

    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBindViewHolder: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 63
    :pswitch_4
    :try_start_1
    invoke-virtual {p1}, Lwg;->g()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v2, p0, Lwf;->a:Landroid/content/Context;

    sget v3, Lkz;->ic_risco_medio:I

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 66
    :pswitch_5
    invoke-virtual {p1}, Lwg;->g()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v2, p0, Lwf;->a:Landroid/content/Context;

    sget v3, Lkz;->ic_risco_alto:I

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 58
    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lwf;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, Lwg;

    invoke-virtual {p0, p1, p2}, Lwf;->a(Lwg;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1, p2}, Lwf;->a(Landroid/view/ViewGroup;I)Lwg;

    move-result-object v0

    return-object v0
.end method
