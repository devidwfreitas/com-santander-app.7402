.class public Lltm;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Llts;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkut;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lltt;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkut;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lltm;->a:Ljava/util/List;

    .line 35
    iget-object v0, p0, Lltm;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 36
    return-void
.end method

.method static synthetic a(Lltm;)Lltt;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lltm;->b:Lltt;

    return-object v0
.end method

.method private a(Lkus;ILkuu;Landroid/widget/ImageButton;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 90
    if-nez p3, :cond_0

    .line 91
    invoke-virtual {p4, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 92
    invoke-virtual {p4, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 93
    invoke-virtual {p4, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    :goto_0
    return-void

    .line 97
    :cond_0
    sget-object v0, Lltr;->a:[I

    invoke-virtual {p3}, Lkuu;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 141
    :goto_1
    invoke-virtual {p4, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 142
    invoke-virtual {p4, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 143
    invoke-virtual {p4, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 99
    :pswitch_0
    invoke-virtual {p4, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 100
    const v0, 0x7f020355

    invoke-virtual {p4, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 101
    new-instance v0, Llto;

    invoke-direct {v0, p0, p2, p1}, Llto;-><init>(Lltm;ILkus;)V

    invoke-virtual {p4, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 112
    :pswitch_1
    invoke-virtual {p4, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 113
    const v0, 0x7f02047b

    invoke-virtual {p4, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 114
    new-instance v0, Lltp;

    invoke-direct {v0, p0, p2, p1}, Lltp;-><init>(Lltm;ILkus;)V

    invoke-virtual {p4, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 125
    :pswitch_2
    invoke-virtual {p4, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 126
    const v0, 0x7f020489

    invoke-virtual {p4, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 127
    new-instance v0, Lltq;

    invoke-direct {v0, p0, p2, p1}, Lltq;-><init>(Lltm;ILkus;)V

    invoke-virtual {p4, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 137
    :pswitch_3
    invoke-virtual {p4, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 138
    invoke-virtual {p4, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 139
    invoke-virtual {p4, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Llts;
    .locals 3

    .prologue
    .line 40
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0401a4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 41
    new-instance v1, Llts;

    invoke-direct {v1, p0, v0}, Llts;-><init>(Lltm;Landroid/view/View;)V

    return-object v1
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 206
    if-ltz p1, :cond_0

    iget-object v0, p0, Lltm;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    iget-object v0, p0, Lltm;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkut;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lkut;->b(Z)V

    .line 209
    invoke-virtual {p0, p1}, Lltm;->notifyItemChanged(I)V

    goto :goto_0
.end method

.method public a(ILkut;Z)V
    .locals 1

    .prologue
    .line 199
    if-ltz p1, :cond_0

    iget-object v0, p0, Lltm;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    iget-object v0, p0, Lltm;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkut;

    invoke-virtual {v0, p2, p3}, Lkut;->a(Lkut;Z)V

    .line 202
    invoke-virtual {p0, p1}, Lltm;->notifyItemChanged(I)V

    goto :goto_0
.end method

.method public a(Lkuw;)V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lltm;->a:Ljava/util/List;

    invoke-virtual {p0, p1}, Lltm;->b(Lkuw;)Lkut;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    iget-object v0, p0, Lltm;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lltm;->notifyItemChanged(I)V

    .line 215
    return-void
.end method

.method public a(Llts;I)V
    .locals 5

    .prologue
    const/16 v3, 0x8

    .line 46
    iget-object v0, p0, Lltm;->a:Ljava/util/List;

    invoke-virtual {p1}, Llts;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkut;

    .line 48
    invoke-static {p1}, Llts;->a(Llts;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lkut;->f()Lkus;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lkut;->f()Lkus;

    move-result-object v1

    invoke-virtual {v1}, Lkus;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lkut;->f()Lkus;

    move-result-object v1

    invoke-virtual {v1}, Lkus;->b()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-static {p1}, Llts;->b(Llts;)Landroid/widget/FrameLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    invoke-static {p1}, Llts;->b(Llts;)Landroid/widget/FrameLayout;

    move-result-object v1

    new-instance v2, Lltn;

    invoke-direct {v2, p0, p1, v0}, Lltn;-><init>(Lltm;Llts;Lkut;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    invoke-virtual {v0}, Lkut;->f()Lkus;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lkut;->f()Lkus;

    move-result-object v1

    invoke-virtual {v1}, Lkus;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 61
    invoke-static {p1}, Llts;->c(Llts;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lkut;->f()Lkus;

    move-result-object v2

    invoke-virtual {v2}, Lkus;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    :goto_1
    invoke-virtual {v0}, Lkut;->f()Lkus;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lkut;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 67
    invoke-static {p1}, Llts;->d(Llts;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v1

    sget-object v2, Laor;->LOADING:Laor;

    invoke-virtual {v1, v2}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 72
    :goto_2
    invoke-virtual {v0}, Lkut;->f()Lkus;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lkut;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 73
    invoke-static {p1}, Llts;->e(Llts;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    invoke-static {p1}, Llts;->f(Llts;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0e00a5

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 80
    :goto_3
    invoke-virtual {v0}, Lkut;->f()Lkus;

    move-result-object v1

    invoke-virtual {p1}, Llts;->getAdapterPosition()I

    move-result v2

    invoke-virtual {v0}, Lkut;->b()Lkuu;

    move-result-object v3

    invoke-static {p1}, Llts;->g(Llts;)Landroid/widget/ImageButton;

    move-result-object v4

    invoke-direct {p0, v1, v2, v3, v4}, Lltm;->a(Lkus;ILkuu;Landroid/widget/ImageButton;)V

    .line 81
    invoke-virtual {v0}, Lkut;->f()Lkus;

    move-result-object v1

    invoke-virtual {p1}, Llts;->getAdapterPosition()I

    move-result v2

    invoke-virtual {v0}, Lkut;->c()Lkuu;

    move-result-object v0

    invoke-static {p1}, Llts;->h(Llts;)Landroid/widget/ImageButton;

    move-result-object v3

    invoke-direct {p0, v1, v2, v0, v3}, Lltm;->a(Lkus;ILkuu;Landroid/widget/ImageButton;)V

    .line 82
    return-void

    .line 48
    :cond_0
    const-string v1, ""

    goto/16 :goto_0

    .line 63
    :cond_1
    invoke-static {p1}, Llts;->c(Llts;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 69
    :cond_2
    invoke-static {p1}, Llts;->d(Llts;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v1

    sget-object v2, Laor;->CONTENT:Laor;

    invoke-virtual {v1, v2}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    goto :goto_2

    .line 76
    :cond_3
    invoke-static {p1}, Llts;->e(Llts;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    invoke-static {p1}, Llts;->f(Llts;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0e0084

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3
.end method

.method public a(Lltt;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lltm;->b:Lltt;

    .line 196
    return-void
.end method

.method public b(Lkuw;)Lkut;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 218
    new-instance v0, Lkut;

    invoke-direct {v0}, Lkut;-><init>()V

    .line 219
    invoke-virtual {v0, p1}, Lkut;->a(Lkus;)V

    .line 220
    invoke-virtual {v0, v2}, Lkut;->c(Z)V

    .line 221
    sget-object v1, Lkuu;->GONE:Lkuu;

    invoke-virtual {v0, v1}, Lkut;->a(Lkuu;)V

    .line 222
    sget-object v1, Lkuu;->CAMERA:Lkuu;

    invoke-virtual {v0, v1}, Lkut;->b(Lkuu;)V

    .line 223
    invoke-virtual {v0, v2}, Lkut;->b(Z)V

    .line 224
    invoke-virtual {v0, v2}, Lkut;->a(Z)V

    .line 225
    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lltm;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lltm;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 29
    check-cast p1, Llts;

    invoke-virtual {p0, p1, p2}, Lltm;->a(Llts;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lltm;->a(Landroid/view/ViewGroup;I)Llts;

    move-result-object v0

    return-object v0
.end method
