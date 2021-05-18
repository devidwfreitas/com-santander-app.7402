.class public Llig;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Llii;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lknz;",
            ">;"
        }
    .end annotation
.end field

.field private b:Llij;

.field private c:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lknz;",
            ">;",
            "Landroid/support/v7/widget/RecyclerView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 31
    iput-object p1, p0, Llig;->a:Ljava/util/List;

    .line 32
    iput-object p2, p0, Llig;->c:Landroid/support/v7/widget/RecyclerView;

    .line 33
    return-void
.end method

.method static synthetic a(Llig;)Llij;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Llig;->b:Llij;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Llii;
    .locals 3

    .prologue
    .line 37
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040160

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 38
    new-instance v1, Llii;

    invoke-direct {v1, p0, v0}, Llii;-><init>(Llig;Landroid/view/View;)V

    return-object v1
.end method

.method public a()Llij;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Llig;->b:Llij;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llig;->b:Llij;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Llii;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 43
    iget-object v0, p0, Llig;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lknz;

    .line 44
    invoke-virtual {v0}, Lknz;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    iget-object v0, p1, Llii;->a:Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->setText(Ljava/lang/String;)V

    .line 46
    iget-object v0, p1, Llii;->a:Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;

    invoke-virtual {v0, v2}, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iget-object v0, p1, Llii;->a:Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->setClickable(Z)V

    .line 48
    iget-object v0, p1, Llii;->a:Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;

    invoke-virtual {v0, v2}, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->setImage(Landroid/graphics/Bitmap;)V

    .line 83
    :goto_0
    return-void

    .line 50
    :cond_0
    iget-object v1, p0, Llig;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lknz;->a(Landroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 51
    iget-object v2, p1, Llii;->a:Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;

    invoke-virtual {v2, v1}, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->setImage(Landroid/graphics/Bitmap;)V

    .line 52
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 54
    iget-object v1, p1, Llii;->a:Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;

    invoke-virtual {v0}, Lknz;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->setText(Ljava/lang/String;)V

    .line 55
    iget-object v1, p1, Llii;->a:Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->setClickable(Z)V

    .line 56
    iget-object v1, p1, Llii;->a:Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;

    new-instance v2, Llih;

    invoke-direct {v2, p0, v0}, Llih;-><init>(Llig;Lknz;)V

    invoke-virtual {v1, v2}, Lcom/santander/app/seguros/ui/widgets/TopImageTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public a(Llij;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Llig;->b:Llij;

    .line 123
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Llig;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 24
    check-cast p1, Llii;

    invoke-virtual {p0, p1, p2}, Llig;->a(Llii;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0, p1, p2}, Llig;->a(Landroid/view/ViewGroup;I)Llii;

    move-result-object v0

    return-object v0
.end method
