.class public Llud;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lluf;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkvq;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/view/View;

.field private c:Llug;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkvq;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 31
    iput-object p1, p0, Llud;->a:Ljava/util/List;

    .line 32
    return-void
.end method

.method static synthetic a(Llud;)Llug;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Llud;->c:Llug;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lluf;
    .locals 3

    .prologue
    .line 36
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040391

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Llud;->b:Landroid/view/View;

    .line 37
    new-instance v0, Lluf;

    iget-object v1, p0, Llud;->b:Landroid/view/View;

    invoke-direct {v0, p0, v1}, Lluf;-><init>(Llud;Landroid/view/View;)V

    return-object v0
.end method

.method public a(Lluf;I)V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Llud;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvq;

    .line 45
    invoke-static {p1}, Lluf;->a(Lluf;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lkvq;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    invoke-static {p1}, Lluf;->b(Lluf;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Llue;

    invoke-direct {v1, p0, p2}, Llue;-><init>(Llud;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    return-void
.end method

.method public a(Llug;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Llud;->c:Llug;

    .line 87
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Llud;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 22
    check-cast p1, Lluf;

    invoke-virtual {p0, p1, p2}, Llud;->a(Lluf;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1, p2}, Llud;->a(Landroid/view/ViewGroup;I)Lluf;

    move-result-object v0

    return-object v0
.end method
