.class public Llev;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Llew;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkqb;",
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
            "Lkqb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 28
    iput-object p1, p0, Llev;->a:Ljava/util/List;

    .line 29
    return-void
.end method

.method private a(Ljava/lang/String;Llew;)V
    .locals 2

    .prologue
    .line 61
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 76
    :goto_1
    return-void

    .line 61
    :sswitch_0
    const-string v1, "Danos el\u00e9tricos"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "Desastres da natureza"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "Inc\u00eandio"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 64
    :pswitch_0
    invoke-static {p2}, Llew;->f(Llew;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0203a5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 67
    :pswitch_1
    invoke-static {p2}, Llew;->f(Llew;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020434

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 70
    :pswitch_2
    invoke-static {p2}, Llew;->f(Llew;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0203da

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 61
    nop

    :sswitch_data_0
    .sparse-switch
        -0xa7bedad -> :sswitch_0
        0x446a781 -> :sswitch_1
        0x10280848 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Llew;
    .locals 3

    .prologue
    .line 33
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040220

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 34
    new-instance v1, Llew;

    invoke-direct {v1, p0, v0}, Llew;-><init>(Llev;Landroid/view/View;)V

    return-object v1
.end method

.method public a(Llew;I)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 40
    iget-object v0, p0, Llev;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkqb;

    .line 42
    invoke-virtual {p1}, Llew;->getAdapterPosition()I

    move-result v1

    if-nez v1, :cond_0

    .line 43
    invoke-static {p1}, Llew;->a(Llew;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 46
    :cond_0
    invoke-virtual {p1}, Llew;->getAdapterPosition()I

    move-result v1

    invoke-virtual {p0}, Llev;->getItemCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_1

    .line 47
    invoke-static {p1}, Llew;->b(Llew;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 50
    :cond_1
    invoke-virtual {v0}, Lkqb;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Llev;->a(Ljava/lang/String;Llew;)V

    .line 53
    invoke-static {p1}, Llew;->c(Llew;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lkqb;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    invoke-static {p1}, Llew;->d(Llew;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lkqb;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    invoke-static {p1}, Llew;->e(Llew;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lkqb;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Llev;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, Llew;

    invoke-virtual {p0, p1, p2}, Llev;->a(Llew;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1, p2}, Llev;->a(Landroid/view/ViewGroup;I)Llew;

    move-result-object v0

    return-object v0
.end method
