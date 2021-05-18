.class public Ljhn;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Ljhq;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljdx;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljdx;

.field private c:Landroid/view/View$OnClickListener;

.field private d:Z


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Ljdx;Landroid/view/View$OnClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljdx;",
            ">;",
            "Ljdx;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljhn;->d:Z

    .line 33
    iput-object p1, p0, Ljhn;->a:Ljava/util/ArrayList;

    .line 34
    iput-object p2, p0, Ljhn;->b:Ljdx;

    .line 35
    iput-object p3, p0, Ljhn;->c:Landroid/view/View$OnClickListener;

    .line 36
    return-void
.end method

.method static synthetic a(Ljhn;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Ljhn;->c:Landroid/view/View$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Ljhq;
    .locals 3

    .prologue
    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400cb

    const/4 v2, 0x0

    .line 42
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 44
    new-instance v1, Ljhq;

    invoke-direct {v1, v0}, Ljhq;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public a(Ljhq;I)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 50
    iget-object v0, p0, Ljhn;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljdx;

    .line 52
    invoke-virtual {v0}, Ljdx;->g()Ljdu;

    move-result-object v1

    if-nez v1, :cond_0

    .line 53
    new-instance v1, Ljdu;

    invoke-direct {v1}, Ljdu;-><init>()V

    .line 54
    invoke-virtual {v0, v1}, Ljdx;->a(Ljdu;)V

    .line 58
    :cond_0
    invoke-virtual {v0}, Ljdx;->g()Ljdu;

    move-result-object v1

    invoke-virtual {v1}, Ljdu;->b()Z

    move-result v1

    if-nez v1, :cond_2

    .line 59
    invoke-static {p1}, Ljhq;->a(Ljhq;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Ljdx;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    sget-object v1, Ljhp;->a:[I

    iget-object v2, p0, Ljhn;->b:Ljdx;

    invoke-virtual {v2}, Ljdx;->t()Ljdk;

    move-result-object v2

    invoke-virtual {v2}, Ljdk;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 81
    :goto_0
    invoke-virtual {v0}, Ljdx;->g()Ljdu;

    move-result-object v1

    invoke-virtual {v1}, Ljdu;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 82
    invoke-virtual {v0}, Ljdx;->g()Ljdu;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljdu;->a(Z)V

    .line 83
    invoke-static {p1}, Ljhq;->g(Ljhq;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 88
    :goto_1
    iget-object v1, p1, Ljhq;->itemView:Landroid/view/View;

    new-instance v2, Ljho;

    invoke-direct {v2, p0, p1, v0}, Ljho;-><init>(Ljhn;Ljhq;Ljdx;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-boolean v1, p0, Ljhn;->d:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Ljhn;->b:Ljdx;

    invoke-virtual {v1}, Ljdx;->g()Ljdu;

    move-result-object v1

    invoke-virtual {v1}, Ljdu;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 102
    invoke-virtual {p0}, Ljhn;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v1, p2, :cond_1

    iget-object v1, p0, Ljhn;->b:Ljdx;

    invoke-virtual {v1}, Ljdx;->g()Ljdu;

    move-result-object v1

    invoke-virtual {v1}, Ljdu;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    invoke-virtual {v0}, Ljdx;->g()Ljdu;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljdu;->a(Z)V

    .line 104
    invoke-static {p1}, Ljhq;->g(Ljhq;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 105
    iput-boolean v3, p0, Ljhn;->d:Z

    .line 115
    :cond_1
    :goto_2
    return-void

    .line 62
    :pswitch_0
    invoke-static {p1}, Ljhq;->b(Ljhq;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "Saldo bruto:"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    invoke-static {p1}, Ljhq;->c(Ljhq;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Ljdx;->X()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    invoke-static {p1}, Ljhq;->d(Ljhq;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 68
    :pswitch_1
    invoke-static {p1}, Ljhq;->b(Ljhq;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "Saldo l\u00edquido:"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    invoke-static {p1}, Ljhq;->c(Ljhq;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Ljdx;->Y()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    invoke-static {p1}, Ljhq;->e(Ljhq;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Ljdx;->C()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnaj;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 75
    :cond_2
    invoke-static {p1}, Ljhq;->f(Ljhq;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 76
    invoke-static {p1}, Ljhq;->d(Ljhq;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 77
    invoke-static {p1}, Ljhq;->b(Ljhq;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "Nova conta fundo"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    invoke-static {p1}, Ljhq;->c(Ljhq;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 86
    :cond_3
    invoke-static {p1}, Ljhq;->g(Ljhq;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 108
    :cond_4
    iget-boolean v1, p0, Ljhn;->d:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Ljhn;->b:Ljdx;

    invoke-virtual {v1}, Ljdx;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljdx;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Ljhn;->b:Ljdx;

    .line 109
    invoke-virtual {v1}, Ljdx;->g()Ljdu;

    move-result-object v1

    invoke-virtual {v1}, Ljdu;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    invoke-virtual {v0}, Ljdx;->g()Ljdu;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljdu;->a(Z)V

    .line 112
    invoke-static {p1}, Ljhq;->g(Ljhq;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 113
    iput-boolean v3, p0, Ljhn;->d:Z

    goto/16 :goto_2

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Ljhn;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 25
    check-cast p1, Ljhq;

    invoke-virtual {p0, p1, p2}, Ljhn;->a(Ljhq;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2}, Ljhn;->a(Landroid/view/ViewGroup;I)Ljhq;

    move-result-object v0

    return-object v0
.end method
