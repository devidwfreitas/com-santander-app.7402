.class public Lagp;
.super Landroid/support/v7/widget/RecyclerView$Adapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lagq;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;


# instance fields
.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lajn;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "N"

    sput-object v0, Lagp;->a:Ljava/lang/String;

    const-string v0, "S"

    sput-object v0, Lagp;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lajn;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lagp;->c:Ljava/util/List;

    iput-object p2, p0, Lagp;->d:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lagp;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lagp;->d:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lagq;
    .locals 3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lagi;->contract_list_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lagp;->d:Landroid/content/Context;

    new-instance v1, Lagq;

    invoke-direct {v1, p0, v0}, Lagq;-><init>(Lagp;Landroid/view/View;)V

    return-object v1
.end method

.method public a(Lajn;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Parcela "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lajn;->d()Lajf;

    move-result-object v1

    invoke-virtual {v1}, Lajf;->k()Lajl;

    move-result-object v1

    invoke-virtual {v1}, Lajl;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "^0+(?!$)"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lajn;->d()Lajf;

    move-result-object v1

    invoke-virtual {v1}, Lajf;->k()Lajl;

    move-result-object v1

    invoke-virtual {v1}, Lajl;->g()Ljava/lang/String;

    move-result-object v1

    const-string v2, "^0+(?!$)"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lagq;I)V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x4

    iget-object v0, p0, Lagp;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajn;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lajn;->c()Lajk;

    move-result-object v1

    invoke-virtual {v1}, Lajk;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lagp;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p1, Lagq;->c:Landroid/widget/ImageView;

    sget v2, Lagf;->green_status_bar:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p1, Lagq;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lagp;->d:Landroid/content/Context;

    sget v3, Lagl;->ativo:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lagq;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lagp;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lagd;->status_green:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v1, "0,00"

    invoke-virtual {v0}, Lajn;->d()Lajf;

    move-result-object v2

    invoke-virtual {v2}, Lajf;->k()Lajl;

    move-result-object v2

    invoke-virtual {v2}, Lajl;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p1, Lagq;->f:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lagq;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p1, Lagq;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    iget-object v1, p1, Lagq;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lajn;->c()Lajk;

    move-result-object v2

    invoke-virtual {v2}, Lajk;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lajs;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lagq;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lajn;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lagq;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Lajn;->d()Lajf;

    move-result-object v2

    invoke-virtual {v2}, Lajf;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lajs;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lagq;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Lajn;->d()Lajf;

    move-result-object v2

    invoke-virtual {v2}, Lajf;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v1, p1, Lagq;->itemView:Landroid/view/View;

    new-instance v2, Lagr;

    invoke-direct {v2, p0, v0}, Lagr;-><init>(Lagp;Lajn;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_2
    iget-object v1, p1, Lagq;->e:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lagp;->a(Lajn;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lagq;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Lajn;->d()Lajf;

    move-result-object v2

    invoke-virtual {v2}, Lajf;->k()Lajl;

    move-result-object v2

    invoke-virtual {v2}, Lajl;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lajn;->c()Lajk;

    move-result-object v1

    invoke-virtual {v1}, Lajk;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lagp;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lagq;->e:Landroid/widget/TextView;

    iget-object v2, p0, Lagp;->d:Landroid/content/Context;

    sget v3, Lagl;->card_valor_a_regularizar:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lagq;->c:Landroid/widget/ImageView;

    sget v2, Lagf;->orange_status_bar:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p1, Lagq;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lagp;->d:Landroid/content/Context;

    sget v3, Lagl;->em_atraso:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lagq;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lagp;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lagd;->status_orange:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v1, "0,00"

    invoke-virtual {v0}, Lajn;->d()Lajf;

    move-result-object v2

    invoke-virtual {v2}, Lajf;->k()Lajl;

    move-result-object v2

    invoke-virtual {v2}, Lajl;->h()Lajm;

    move-result-object v2

    invoke-virtual {v2}, Lajm;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p1, Lagq;->f:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lagq;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p1, Lagq;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_4
    iget-object v1, p1, Lagq;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Lajn;->d()Lajf;

    move-result-object v2

    invoke-virtual {v2}, Lajf;->k()Lajl;

    move-result-object v2

    invoke-virtual {v2}, Lajl;->h()Lajm;

    move-result-object v2

    invoke-virtual {v2}, Lajm;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lagp;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lagp;->c:Ljava/util/List;

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

    check-cast p1, Lagq;

    invoke-virtual {p0, p1, p2}, Lagp;->a(Lagq;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lagp;->a(Landroid/view/ViewGroup;I)Lagq;

    move-result-object v0

    return-object v0
.end method
