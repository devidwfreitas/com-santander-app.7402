.class public Lyc;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lye;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lyb;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lack;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lyb;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lyc;->a:Ljava/util/List;

    .line 31
    iget-object v0, p0, Lyc;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 32
    check-cast p2, Lack;

    iput-object p2, p0, Lyc;->b:Lack;

    .line 33
    return-void
.end method

.method static synthetic a(Lyc;)Lack;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lyc;->b:Lack;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lye;
    .locals 4

    .prologue
    .line 37
    new-instance v0, Lye;

    .line 38
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Llc;->layout_lista_termos_aceite:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lye;-><init>(Landroid/view/View;Lyd;)V

    .line 37
    return-object v0
.end method

.method public a(Lye;I)V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lyc;->a:Ljava/util/List;

    invoke-virtual {p1}, Lye;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyb;

    invoke-virtual {v0}, Lyb;->a()Lxw;

    move-result-object v0

    iput-object v0, p1, Lye;->c:Lxw;

    .line 45
    iget-object v0, p1, Lye;->b:Landroid/widget/TextView;

    iget-object v1, p1, Lye;->c:Lxw;

    invoke-virtual {v1}, Lxw;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v0, p1, Lye;->a:Landroid/widget/LinearLayout;

    new-instance v1, Lyd;

    invoke-direct {v1, p0, p1}, Lyd;-><init>(Lyc;Lye;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lyc;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 25
    check-cast p1, Lye;

    invoke-virtual {p0, p1, p2}, Lyc;->a(Lye;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2}, Lyc;->a(Landroid/view/ViewGroup;I)Lye;

    move-result-object v0

    return-object v0
.end method
