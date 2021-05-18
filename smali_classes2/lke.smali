.class public Llke;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Llkg;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkqi;",
            ">;"
        }
    .end annotation
.end field

.field private b:Llkh;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkqi;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 27
    iput-object p1, p0, Llke;->a:Ljava/util/List;

    .line 28
    return-void
.end method

.method static synthetic a(Llke;)Llkh;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Llke;->b:Llkh;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Llkg;
    .locals 3

    .prologue
    .line 42
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04036c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 43
    new-instance v1, Llkg;

    invoke-direct {v1, p0, v0}, Llkg;-><init>(Llke;Landroid/view/View;)V

    return-object v1
.end method

.method public a(Llkg;I)V
    .locals 5

    .prologue
    .line 49
    iget-object v0, p0, Llke;->a:Ljava/util/List;

    invoke-virtual {p1}, Llkg;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkqi;

    .line 51
    invoke-static {p1}, Llkg;->a(Llkg;)Landroid/widget/FrameLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    invoke-static {p1}, Llkg;->a(Llkg;)Landroid/widget/FrameLayout;

    move-result-object v1

    new-instance v2, Llkf;

    invoke-direct {v2, p0, p1, v0}, Llkf;-><init>(Llke;Llkg;Lkqi;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    invoke-static {p1}, Llkg;->b(Llkg;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "XXXX-%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lkqi;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    return-void
.end method

.method public a(Llkh;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Llke;->b:Llkh;

    .line 38
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Llke;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 22
    check-cast p1, Llkg;

    invoke-virtual {p0, p1, p2}, Llke;->a(Llkg;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1, p2}, Llke;->a(Landroid/view/ViewGroup;I)Llkg;

    move-result-object v0

    return-object v0
.end method
