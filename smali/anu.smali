.class public Lanu;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lanw;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lanq;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lanq;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/view/View$OnClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lanq;",
            ">;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 28
    iput-object p1, p0, Lanu;->a:Ljava/util/ArrayList;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lanu;->b:Ljava/util/ArrayList;

    .line 30
    iput-object p2, p0, Lanu;->c:Landroid/view/View$OnClickListener;

    .line 31
    return-void
.end method

.method static synthetic a(Lanu;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lanu;->c:Landroid/view/View$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lanw;
    .locals 3

    .prologue
    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lalu;->santander_adapter_recycler_view:I

    const/4 v2, 0x0

    .line 37
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 39
    new-instance v1, Lanw;

    invoke-direct {v1, v0}, Lanw;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public a(Lanw;I)V
    .locals 3

    .prologue
    .line 45
    iget-object v0, p0, Lanu;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanq;

    .line 47
    invoke-interface {v0}, Lanq;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, ""

    invoke-interface {v0}, Lanq;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 48
    iget-object v1, p1, Lanw;->a:Landroid/widget/TextView;

    invoke-interface {v0}, Lanq;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v1, p1, Lanw;->a:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 52
    :cond_0
    invoke-interface {v0}, Lanq;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, ""

    invoke-interface {v0}, Lanq;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 53
    iget-object v1, p1, Lanw;->b:Landroid/widget/TextView;

    invoke-interface {v0}, Lanq;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    :cond_1
    iget-object v0, p1, Lanw;->itemView:Landroid/view/View;

    new-instance v1, Lanv;

    invoke-direct {v1, p0, p1, p2}, Lanv;-><init>(Lanu;Lanw;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    return-void
.end method

.method public a(Ljava/lang/String;Lanp;)V
    .locals 5

    .prologue
    .line 88
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 90
    iget-object v0, p0, Lanu;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 91
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 92
    iget-object v0, p0, Lanu;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lanu;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 100
    :cond_0
    invoke-virtual {p0}, Lanu;->notifyDataSetChanged()V

    .line 102
    iget-object v0, p0, Lanu;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 103
    invoke-interface {p2}, Lanp;->a()V

    .line 108
    :goto_0
    return-void

    .line 94
    :cond_1
    iget-object v0, p0, Lanu;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanq;

    .line 95
    invoke-interface {v0}, Lanq;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 96
    iget-object v3, p0, Lanu;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 105
    :cond_3
    invoke-interface {p2}, Lanp;->b()V

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lanu;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Lanw;

    invoke-virtual {p0, p1, p2}, Lanu;->a(Lanw;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1, p2}, Lanu;->a(Landroid/view/ViewGroup;I)Lanw;

    move-result-object v0

    return-object v0
.end method
