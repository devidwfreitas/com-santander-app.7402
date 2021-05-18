.class public Llme;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Llmg;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkrn;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/view/View;

.field private c:Llmh;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkrn;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 32
    iput-object p1, p0, Llme;->a:Ljava/util/List;

    .line 33
    return-void
.end method

.method static synthetic a(Llme;)Llmh;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Llme;->c:Llmh;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Llmg;
    .locals 3

    .prologue
    .line 37
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04013e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Llme;->b:Landroid/view/View;

    .line 38
    new-instance v0, Llmg;

    iget-object v1, p0, Llme;->b:Landroid/view/View;

    invoke-direct {v0, p0, v1}, Llmg;-><init>(Llme;Landroid/view/View;)V

    return-object v0
.end method

.method public a(Llmg;I)V
    .locals 4

    .prologue
    .line 44
    iget-object v0, p0, Llme;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkrn;

    .line 47
    invoke-virtual {v0}, Lkrn;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lkrn;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lkrn;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x30

    const/16 v2, 0xf

    invoke-static {v0, v1, v2}, Lmhj;->a(Ljava/lang/String;CI)Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-static {p1}, Llmg;->a(Llmg;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "R$ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lmhj;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lmhj;->c(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    :goto_0
    invoke-static {p1}, Llmg;->b(Llmg;)Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Llmf;

    invoke-direct {v1, p0, p2}, Llmf;-><init>(Llme;I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    return-void

    .line 51
    :cond_0
    invoke-static {p1}, Llmg;->a(Llmg;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public a(Llmh;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Llme;->c:Llmh;

    .line 97
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Llme;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 25
    check-cast p1, Llmg;

    invoke-virtual {p0, p1, p2}, Llme;->a(Llmg;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2}, Llme;->a(Landroid/view/ViewGroup;I)Llmg;

    move-result-object v0

    return-object v0
.end method
