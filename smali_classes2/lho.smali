.class public Llho;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Llhq;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkpw;",
            ">;"
        }
    .end annotation
.end field

.field private b:D

.field private c:Llhr;


# direct methods
.method public constructor <init>(Lkpu;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 32
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llho;->a:Ljava/util/List;

    .line 29
    iput-wide v2, p0, Llho;->b:D

    .line 34
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lkpu;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lkpu;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 35
    iget-object v0, p0, Llho;->a:Ljava/util/List;

    invoke-virtual {p1}, Lkpu;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 36
    invoke-virtual {p1}, Lkpu;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Llho;->b:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :cond_0
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 40
    iput-wide v2, p0, Llho;->b:D

    goto :goto_0
.end method

.method static synthetic a(Llho;)Llhr;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Llho;->c:Llhr;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Llhq;
    .locals 3

    .prologue
    .line 46
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040353

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 47
    new-instance v1, Llhq;

    invoke-direct {v1, p0, v0}, Llhq;-><init>(Llho;Landroid/view/View;)V

    return-object v1
.end method

.method public a(Llhq;I)V
    .locals 6

    .prologue
    .line 52
    iget-object v0, p0, Llho;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkpw;

    .line 53
    invoke-static {p1}, Llhq;->a(Llhq;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f0203cc

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 54
    invoke-static {p1}, Llhq;->b(Llhq;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lkpw;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmhj;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    invoke-static {p1}, Llhq;->c(Llhq;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lkpw;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmhj;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-static {p1}, Llhq;->d(Llhq;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "%s%%"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lkpw;->d()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-wide v2, p0, Llho;->b:D

    invoke-virtual {v0}, Lkpw;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Lmhj;->a(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-static {p1}, Llhq;->e(Llhq;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    invoke-static {p1}, Llhq;->f(Llhq;)Landroid/widget/ImageButton;

    move-result-object v1

    const v2, 0x7f0203a4

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 60
    invoke-static {p1}, Llhq;->f(Llhq;)Landroid/widget/ImageButton;

    move-result-object v1

    new-instance v2, Llhp;

    invoke-direct {v2, p0, v0}, Llhp;-><init>(Llho;Lkpw;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    return-void
.end method

.method public a(Llhr;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Llho;->c:Llhr;

    .line 111
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Llho;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 26
    check-cast p1, Llhq;

    invoke-virtual {p0, p1, p2}, Llho;->a(Llhq;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2}, Llho;->a(Landroid/view/ViewGroup;I)Llhq;

    move-result-object v0

    return-object v0
.end method
