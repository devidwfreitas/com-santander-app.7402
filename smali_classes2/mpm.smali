.class public Lmpm;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lmpp;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmlr;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/view/View$OnClickListener;

.field private c:Landroid/view/View$OnLongClickListener;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmlr;",
            ">;",
            "Landroid/view/View$OnClickListener;",
            "Landroid/view/View$OnLongClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 30
    iput-object p1, p0, Lmpm;->a:Ljava/util/List;

    .line 31
    iput-object p2, p0, Lmpm;->b:Landroid/view/View$OnClickListener;

    .line 32
    iput-object p3, p0, Lmpm;->c:Landroid/view/View$OnLongClickListener;

    .line 33
    return-void
.end method

.method static synthetic a(Lmpm;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lmpm;->b:Landroid/view/View$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lmpp;
    .locals 3

    .prologue
    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400d5

    const/4 v2, 0x0

    .line 39
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 41
    new-instance v1, Lmpp;

    invoke-direct {v1, v0}, Lmpp;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public a(Lmpp;I)V
    .locals 3

    .prologue
    .line 47
    iget-object v0, p0, Lmpm;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmlr;

    .line 48
    iget-object v1, p1, Lmpp;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lmlr;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v1, p1, Lmpp;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lmlr;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v1, p1, Lmpp;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lmlr;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_0

    .line 53
    iget-object v1, p1, Lmpp;->d:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 55
    :cond_0
    iget-object v1, p1, Lmpp;->itemView:Landroid/view/View;

    new-instance v2, Lmpn;

    invoke-direct {v2, p0, p1, v0}, Lmpn;-><init>(Lmpm;Lmpp;Lmlr;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 64
    iget-object v1, p1, Lmpp;->itemView:Landroid/view/View;

    new-instance v2, Lmpo;

    invoke-direct {v2, p0, p1, v0}, Lmpo;-><init>(Lmpm;Lmpp;Lmlr;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lmpm;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, Lmpp;

    invoke-virtual {p0, p1, p2}, Lmpm;->a(Lmpp;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1, p2}, Lmpm;->a(Landroid/view/ViewGroup;I)Lmpp;

    move-result-object v0

    return-object v0
.end method
