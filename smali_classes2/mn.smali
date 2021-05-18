.class public Lmn;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Llx;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Landroid/widget/Button;

.field private d:[Ljava/lang/Boolean;

.field private e:Lacg;

.field private f:Ljava/lang/Boolean;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;Lacg;Ljava/lang/Boolean;Landroid/widget/Button;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Llx;",
            ">;",
            "Landroid/content/Context;",
            "Lacg;",
            "Ljava/lang/Boolean;",
            "Landroid/widget/Button;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 34
    iput-object p1, p0, Lmn;->a:Ljava/util/List;

    .line 35
    iput-object p2, p0, Lmn;->b:Landroid/content/Context;

    .line 36
    iput-object p5, p0, Lmn;->c:Landroid/widget/Button;

    .line 37
    iput-object p3, p0, Lmn;->e:Lacg;

    .line 38
    iput-object p4, p0, Lmn;->f:Ljava/lang/Boolean;

    .line 39
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Boolean;

    iput-object v0, p0, Lmn;->d:[Ljava/lang/Boolean;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmn;->g:Ljava/util/List;

    .line 41
    return-void
.end method

.method static synthetic a(Lmn;)[Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lmn;->d:[Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic b(Lmn;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lmn;->f:Ljava/lang/Boolean;

    return-object v0
.end method

.method private b()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 130
    const/4 v0, 0x1

    move v1, v2

    move v3, v0

    .line 132
    :goto_0
    iget-object v0, p0, Lmn;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 135
    :try_start_0
    iget-object v0, p0, Lmn;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llx;

    invoke-virtual {v0}, Llx;->d()Ljava/lang/String;

    move-result-object v0

    const-string v4, "S"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 140
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lmn;->d:[Ljava/lang/Boolean;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    move v3, v2

    .line 132
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    .line 147
    :cond_1
    iget-object v0, p0, Lmn;->c:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 149
    if-eqz v3, :cond_2

    .line 150
    iget-object v0, p0, Lmn;->c:Landroid/widget/Button;

    iget-object v1, p0, Lmn;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lkx;->inv_white_three:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 152
    :cond_2
    return-void
.end method

.method static synthetic c(Lmn;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lmn;->b()V

    return-void
.end method

.method static synthetic d(Lmn;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lmn;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lmn;)Ljava/util/List;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lmn;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lmn;)Ljava/util/List;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lmn;->g:Ljava/util/List;

    return-object v0
.end method

.method static synthetic g(Lmn;)Lacg;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lmn;->e:Lacg;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lmn;->g:Ljava/util/List;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lmn;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    .prologue
    .line 64
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    .line 66
    iget-object v0, p0, Lmn;->d:[Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    move-object v0, p1

    .line 67
    check-cast v0, Lmq;

    invoke-static {v0}, Lmq;->a(Lmq;)Landroid/widget/CheckBox;

    move-result-object v0

    new-instance v2, Lmo;

    invoke-direct {v2, p0, v1}, Lmo;-><init>(Lmn;I)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 96
    iget-object v0, p0, Lmn;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llx;

    invoke-virtual {v0}, Llx;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "{0}"

    iget-object v0, p0, Lmn;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llx;

    invoke-virtual {v0}, Llx;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 97
    iget-object v0, p0, Lmn;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llx;

    invoke-virtual {v0}, Llx;->b()Ljava/lang/String;

    move-result-object v3

    .line 99
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p1

    .line 100
    check-cast v0, Lmq;

    invoke-static {v0}, Lmq;->b(Lmq;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v2, v3}, Laat;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    check-cast p1, Lmq;

    invoke-static {p1}, Lmq;->b(Lmq;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v2, Lmp;

    invoke-direct {v2, p0, v1}, Lmp;-><init>(Lmn;I)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_0
    check-cast p1, Lmq;

    invoke-static {p1}, Lmq;->b(Lmq;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4

    .prologue
    .line 57
    new-instance v0, Lmq;

    .line 58
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 57
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Llc;->layout_termos_condicoes:I

    const/4 v3, 0x0

    .line 58
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmq;-><init>(Landroid/view/View;Lmo;)V

    .line 57
    return-object v0
.end method
