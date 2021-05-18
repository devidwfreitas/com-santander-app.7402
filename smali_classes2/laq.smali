.class public Llaq;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Llat;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Llas;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkph;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkph;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 36
    iput-object p1, p0, Llaq;->b:Ljava/util/List;

    .line 37
    return-void
.end method

.method static synthetic a(Llaq;)Llas;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Llaq;->a:Llas;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Llat;
    .locals 3

    .prologue
    .line 41
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Llaq;->c:Landroid/content/Context;

    .line 42
    iget-object v0, p0, Llaq;->c:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 43
    const v1, 0x7f0402b4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 44
    new-instance v1, Llat;

    invoke-direct {v1, v0}, Llat;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public a(Llas;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Llaq;->a:Llas;

    .line 73
    return-void
.end method

.method public a(Llat;I)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 49
    iget-object v0, p0, Llaq;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkph;

    .line 51
    iget-object v1, p1, Llat;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Lkph;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v1, p1, Llat;->d:Landroid/widget/TextView;

    iget-object v2, p0, Llaq;->c:Landroid/content/Context;

    const v3, 0x7f0907f7

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lkph;->b()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v1, p1, Llat;->b:Landroid/widget/TextView;

    iget-object v2, p0, Llaq;->c:Landroid/content/Context;

    const v3, 0x7f090118

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lkph;->i()Lkpm;

    move-result-object v5

    invoke-virtual {v5}, Lkpm;->b()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v1, p1, Llat;->c:Landroid/widget/TextView;

    iget-object v2, p0, Llaq;->c:Landroid/content/Context;

    const v3, 0x7f090877

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lkph;->f()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v1, p1, Llat;->itemView:Landroid/view/View;

    new-instance v2, Llar;

    invoke-direct {v2, p0, v0}, Llar;-><init>(Llaq;Lkph;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Llaq;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 25
    check-cast p1, Llat;

    invoke-virtual {p0, p1, p2}, Llaq;->a(Llat;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2}, Llaq;->a(Landroid/view/ViewGroup;I)Llat;

    move-result-object v0

    return-object v0
.end method
