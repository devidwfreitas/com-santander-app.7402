.class public Llib;
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


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1


# instance fields
.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Llif;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 41
    iput v0, p0, Llib;->c:I

    .line 42
    iput v0, p0, Llib;->d:I

    .line 43
    iput v0, p0, Llib;->e:I

    .line 44
    iput v0, p0, Llib;->f:I

    .line 45
    iput v0, p0, Llib;->g:I

    .line 46
    iput v0, p0, Llib;->h:I

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llib;->j:Ljava/util/List;

    .line 55
    iput-object p1, p0, Llib;->j:Ljava/util/List;

    .line 56
    return-void
.end method

.method static synthetic a(Llib;)Llif;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Llib;->i:Llif;

    return-object v0
.end method


# virtual methods
.method public a(IIIIII)V
    .locals 0

    .prologue
    .line 59
    iput p1, p0, Llib;->c:I

    .line 60
    iput p2, p0, Llib;->d:I

    .line 61
    iput p3, p0, Llib;->e:I

    .line 62
    iput p4, p0, Llib;->f:I

    .line 63
    iput p5, p0, Llib;->h:I

    .line 64
    iput p6, p0, Llib;->g:I

    .line 65
    return-void
.end method

.method public a(Llif;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Llib;->i:Llif;

    .line 52
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Llib;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Llib;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 70
    const/4 v0, 0x0

    .line 72
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 9

    .prologue
    const/16 v6, 0x8

    const/4 v8, 0x4

    const/4 v2, 0x0

    .line 89
    iget-object v0, p0, Llib;->j:Ljava/util/List;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 90
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_2

    instance-of v1, p1, Llid;

    if-eqz v1, :cond_2

    .line 91
    check-cast v0, Ljava/lang/String;

    .line 92
    check-cast p1, Llid;

    .line 93
    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    iget-object v0, p1, Llid;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    iget-object v0, p1, Llid;->a:Landroid/widget/TextView;

    iget-object v1, p1, Llid;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090119

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    const-string v1, "c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p1, Llid;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    iget-object v0, p1, Llid;->b:Landroid/widget/TextView;

    iget-object v1, p1, Llid;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090573

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p1, Llid;->a:Landroid/widget/TextView;

    iget-object v1, p1, Llid;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0907c7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 101
    :cond_2
    instance-of v1, p1, Llie;

    if-eqz v1, :cond_0

    .line 102
    check-cast p1, Llie;

    .line 103
    invoke-static {p1}, Llie;->a(Llie;)Landroid/widget/ImageButton;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    instance-of v1, v0, Lkny;

    if-eqz v1, :cond_3

    .line 108
    invoke-static {p1}, Llie;->a(Llie;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 109
    iget v4, p0, Llib;->f:I

    .line 110
    iget v3, p0, Llib;->d:I

    .line 111
    iget v1, p0, Llib;->h:I

    .line 112
    check-cast v0, Lkny;

    .line 114
    iget-object v5, p1, Llie;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Lkny;->b()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lmhj;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v5, p1, Llie;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Lkny;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lmhj;->a(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p1, Llie;->c:Lcom/santander/app/seguros/ui/widgets/CircleImageView;

    const v5, 0x7f0203ee

    invoke-virtual {v0, v5}, Lcom/santander/app/seguros/ui/widgets/CircleImageView;->setImageResource(I)V

    .line 117
    iget-object v0, p1, Llie;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    move v0, v1

    move v1, v3

    move v3, v4

    .line 139
    :goto_1
    const/4 v4, 0x1

    if-ne v0, v4, :cond_4

    .line 140
    iget-object v0, p1, Llie;->b:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 141
    iget-object v0, p1, Llie;->d:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 118
    :cond_3
    instance-of v1, v0, Lkps;

    if-eqz v1, :cond_7

    .line 119
    check-cast v0, Lkps;

    .line 120
    invoke-static {p1}, Llie;->a(Llie;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 121
    invoke-static {p1}, Llie;->a(Llie;)Landroid/widget/ImageButton;

    move-result-object v1

    new-instance v3, Llic;

    invoke-direct {v3, p0, v0}, Llic;-><init>(Llib;Lkps;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget v4, p0, Llib;->e:I

    .line 130
    iget v3, p0, Llib;->c:I

    .line 131
    iget v1, p0, Llib;->g:I

    .line 133
    iget-object v5, p1, Llie;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Lkps;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmhj;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, p1, Llie;->g:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v0, p1, Llie;->c:Lcom/santander/app/seguros/ui/widgets/CircleImageView;

    const v5, 0x7f02033a

    invoke-virtual {v0, v5}, Lcom/santander/app/seguros/ui/widgets/CircleImageView;->setImageResource(I)V

    .line 136
    iget-object v0, p1, Llie;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    move v0, v1

    move v1, v3

    move v3, v4

    goto :goto_1

    .line 142
    :cond_4
    invoke-virtual {p1}, Llie;->getAdapterPosition()I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 143
    iget-object v0, p1, Llie;->b:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 144
    iget-object v0, p1, Llie;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 145
    :cond_5
    invoke-virtual {p1}, Llie;->getAdapterPosition()I

    move-result v0

    if-ne v0, v3, :cond_6

    .line 146
    iget-object v0, p1, Llie;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 147
    iget-object v0, p1, Llie;->d:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 149
    :cond_6
    iget-object v0, p1, Llie;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 150
    iget-object v0, p1, Llie;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_7
    move v0, v2

    move v1, v2

    move v3, v2

    goto/16 :goto_1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 79
    if-nez p2, :cond_0

    .line 80
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040363

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 81
    new-instance v0, Llid;

    invoke-direct {v0, p0, v1}, Llid;-><init>(Llib;Landroid/view/View;)V

    .line 84
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Llie;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040355

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Llie;-><init>(Llib;Landroid/view/View;)V

    goto :goto_0
.end method
