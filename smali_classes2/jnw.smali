.class public Ljnw;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Ljny;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Ljnz;


# direct methods
.method public constructor <init>(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 26
    iput-object p1, p0, Ljnw;->a:Ljava/util/List;

    .line 27
    iput-boolean p2, p0, Ljnw;->b:Z

    .line 28
    return-void
.end method

.method private a(I)Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Ljnw;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;

    return-object v0
.end method

.method static synthetic a(Ljnw;I)Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0, p1}, Ljnw;->a(I)Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ljnw;)Ljnz;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Ljnw;->c:Ljnz;

    return-object v0
.end method

.method static synthetic b(Ljnw;)Z
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, Ljnw;->b:Z

    return v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Ljny;
    .locals 3

    .prologue
    .line 42
    new-instance v0, Ljny;

    invoke-direct {v0, p1}, Ljny;-><init>(Landroid/view/ViewGroup;)V

    .line 43
    invoke-static {v0}, Ljny;->a(Ljny;)Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Ljnx;

    invoke-direct {v2, p0, v0}, Ljnx;-><init>(Ljnw;Ljny;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    return-object v0
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Ljnw;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 32
    iget-object v0, p0, Ljnw;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 33
    invoke-virtual {p0}, Ljnw;->notifyDataSetChanged()V

    .line 34
    return-void
.end method

.method public a(Ljny;I)V
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0, p2}, Ljnw;->a(I)Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;

    move-result-object v0

    .line 68
    invoke-static {p1}, Ljny;->a(Ljny;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;->d()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 69
    return-void
.end method

.method public a(Ljnz;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Ljnw;->c:Ljnz;

    .line 38
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Ljnw;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljnw;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 19
    check-cast p1, Ljny;

    invoke-virtual {p0, p1, p2}, Ljnw;->a(Ljny;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1, p2}, Ljnw;->a(Landroid/view/ViewGroup;I)Ljny;

    move-result-object v0

    return-object v0
.end method
