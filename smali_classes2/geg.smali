.class public Lgeg;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lgei;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lgec;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lgec;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 27
    iput-object p1, p0, Lgeg;->a:Ljava/util/List;

    .line 28
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lgei;
    .locals 3

    .prologue
    .line 32
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0402bb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 33
    new-instance v1, Lgei;

    invoke-direct {v1, p0, v0}, Lgei;-><init>(Lgeg;Landroid/view/View;)V

    return-object v1
.end method

.method public a(Lgei;I)V
    .locals 3

    .prologue
    .line 38
    iget-object v0, p0, Lgeg;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgec;

    .line 39
    invoke-static {p1}, Lgei;->a(Lgei;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lgec;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    invoke-static {p1}, Lgei;->b(Lgei;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lgec;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v1, p1, Lgei;->itemView:Landroid/view/View;

    new-instance v2, Lgeh;

    invoke-direct {v2, p0, v0}, Lgeh;-><init>(Lgeg;Lgec;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lgeg;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 22
    check-cast p1, Lgei;

    invoke-virtual {p0, p1, p2}, Lgeg;->a(Lgei;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1, p2}, Lgeg;->a(Landroid/view/ViewGroup;I)Lgei;

    move-result-object v0

    return-object v0
.end method
