.class public Lvf;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lvh;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "7"

.field private static final b:Ljava/lang/String; = "3"

.field private static final c:Ljava/lang/String; = "8"


# instance fields
.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Luz;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Luz;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 35
    iput-object p1, p0, Lvf;->e:Landroid/content/Context;

    .line 37
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luz;

    .line 38
    invoke-virtual {v0}, Luz;->e()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 40
    invoke-virtual {v0}, Luz;->e()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_0

    .line 42
    :cond_1
    iput-object p2, p0, Lvf;->d:Ljava/util/List;

    .line 43
    return-void
.end method

.method private a(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lve;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 100
    iget-object v0, p0, Lvf;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luz;

    invoke-virtual {v0}, Luz;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lvf;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luz;

    invoke-virtual {v0}, Luz;->c()Ljava/lang/String;

    move-result-object v2

    const/4 v0, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    packed-switch v0, :pswitch_data_1

    .line 114
    iget-object v0, p0, Lvf;->d:Ljava/util/List;

    iget-object v2, p0, Lvf;->d:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 122
    :goto_1
    return-object v1

    .line 102
    :pswitch_1
    const-string v3, "7"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_2
    const-string v3, "3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_3
    const-string v3, "8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 105
    :pswitch_4
    new-instance v0, Lve;

    invoke-direct {v0}, Lve;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 108
    :pswitch_5
    new-instance v0, Lve;

    const-string v2, "TESOURO DIRETO"

    invoke-direct {v0, v2}, Lve;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    new-instance v0, Lve;

    const-string v2, "A\u00c7\u00d5ES"

    invoke-direct {v0, v2}, Lve;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    new-instance v0, Lve;

    const-string v2, "DEB\u00caNTURES, FUNDOS IMOBILI\u00c1RIOS, ENTRE OUTROS"

    invoke-direct {v0, v2}, Lve;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 119
    :cond_1
    iget-object v0, p0, Lvf;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luz;

    invoke-virtual {v0}, Luz;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 102
    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic a(Lvf;)Ljava/util/List;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lvf;->d:Ljava/util/List;

    return-object v0
.end method

.method private a(Luz;)Z
    .locals 2

    .prologue
    .line 90
    invoke-virtual {p1}, Luz;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p1}, Luz;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    invoke-virtual {p1}, Luz;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    invoke-virtual {p1}, Luz;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "7"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 90
    :goto_0
    return v0

    .line 93
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lvf;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lvf;->e:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lvh;
    .locals 4

    .prologue
    .line 47
    new-instance v0, Lvh;

    .line 48
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Llc;->layout_listagem_subproduto_familia:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lvh;-><init>(Landroid/view/View;)V

    .line 47
    return-object v0
.end method

.method public a(Lvh;I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 55
    iget-object v0, p0, Lvf;->d:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luz;

    .line 56
    iget-object v1, p1, Lvh;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Luz;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 58
    invoke-virtual {v0}, Luz;->e()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v1

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lve;

    .line 59
    invoke-virtual {v1}, Lve;->k()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 60
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_1
    move-object v2, v1

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {v0}, Luz;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_1

    invoke-direct {p0, v0}, Lvf;->a(Luz;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    iget-object v1, p1, Lvh;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 65
    iget-object v1, p1, Lvh;->b:Landroid/widget/TextView;

    iget-object v2, p1, Lvh;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v2

    or-int/lit8 v2, v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 66
    iget-object v1, p1, Lvh;->b:Landroid/widget/TextView;

    new-instance v2, Lvg;

    invoke-direct {v2, p0, p2, v0}, Lvg;-><init>(Lvf;ILuz;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    :goto_2
    iget-object v0, p1, Lvh;->c:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Lvf;->e:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 85
    iget-object v1, p1, Lvh;->c:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lvi;

    iget-object v3, p0, Lvf;->e:Landroid/content/Context;

    iget-object v0, p0, Lvf;->d:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luz;

    invoke-direct {p0, p2}, Lvf;->a(I)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v3, v0, v4, v5}, Lvi;-><init>(Landroid/content/Context;Luz;Ljava/util/List;Z)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 86
    iget-object v0, p1, Lvh;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 87
    return-void

    .line 80
    :cond_1
    iget-object v0, p1, Lvh;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_2
    move-object v1, v2

    goto :goto_1
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lvf;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 24
    check-cast p1, Lvh;

    invoke-virtual {p0, p1, p2}, Lvf;->a(Lvh;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0, p1, p2}, Lvf;->a(Landroid/view/ViewGroup;I)Lvh;

    move-result-object v0

    return-object v0
.end method
