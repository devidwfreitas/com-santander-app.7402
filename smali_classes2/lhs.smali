.class public Llhs;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Llhu;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkpz;",
            ">;"
        }
    .end annotation
.end field

.field private b:D

.field private c:Llhv;


# direct methods
.method public constructor <init>(Lkpv;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 34
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llhs;->a:Ljava/util/List;

    .line 31
    iput-wide v2, p0, Llhs;->b:D

    .line 36
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lkpv;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lkpv;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 37
    iget-object v0, p0, Llhs;->a:Ljava/util/List;

    invoke-virtual {p1}, Lkpv;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 38
    invoke-virtual {p1}, Lkpv;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Llhs;->b:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 42
    iput-wide v2, p0, Llhs;->b:D

    goto :goto_0
.end method

.method static synthetic a(Llhs;)Llhv;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Llhs;->c:Llhv;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Llhu;
    .locals 3

    .prologue
    .line 48
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040353

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 49
    new-instance v1, Llhu;

    invoke-direct {v1, p0, v0}, Llhu;-><init>(Llhs;Landroid/view/View;)V

    return-object v1
.end method

.method public a(Llhu;I)V
    .locals 6

    .prologue
    .line 54
    iget-object v0, p0, Llhs;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkpz;

    invoke-virtual {v0}, Lkpz;->a()Lkqa;

    move-result-object v0

    .line 55
    invoke-static {p1}, Llhu;->a(Llhu;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f0203cc

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 56
    invoke-static {p1}, Llhu;->b(Llhu;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v2

    invoke-virtual {v0}, Lkqa;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmhj;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    invoke-static {p1}, Llhu;->c(Llhu;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lkqa;->g()Lkod;

    move-result-object v2

    invoke-virtual {v2}, Lkod;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmhj;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    invoke-static {p1}, Llhu;->d(Llhu;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "%s%%"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lkqa;->f()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-wide v2, p0, Llhs;->b:D

    invoke-virtual {v0}, Lkqa;->f()Ljava/lang/String;

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

    .line 60
    invoke-static {p1}, Llhu;->e(Llhu;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    invoke-static {p1}, Llhu;->f(Llhu;)Landroid/widget/ImageButton;

    move-result-object v1

    const v2, 0x7f0203a4

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 62
    invoke-static {p1}, Llhu;->f(Llhu;)Landroid/widget/ImageButton;

    move-result-object v1

    new-instance v2, Llht;

    invoke-direct {v2, p0, v0}, Llht;-><init>(Llhs;Lkqa;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    return-void
.end method

.method public a(Llhv;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Llhs;->c:Llhv;

    .line 113
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Llhs;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 28
    check-cast p1, Llhu;

    invoke-virtual {p0, p1, p2}, Llhs;->a(Llhu;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1, p2}, Llhs;->a(Landroid/view/ViewGroup;I)Llhu;

    move-result-object v0

    return-object v0
.end method
