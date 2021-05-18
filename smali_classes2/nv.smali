.class public Lnv;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lnw;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lace;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lod;

.field private c:Landroid/app/Activity;

.field private d:Lacg;

.field private e:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lacg;Ljava/lang/Boolean;Lod;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 38
    iput-object p4, p0, Lnv;->b:Lod;

    .line 39
    invoke-virtual {p2}, Lacg;->u()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lnv;->a:Ljava/util/List;

    .line 40
    iput-object p1, p0, Lnv;->c:Landroid/app/Activity;

    .line 41
    iput-object p2, p0, Lnv;->d:Lacg;

    .line 42
    iput-object p3, p0, Lnv;->e:Ljava/lang/Boolean;

    .line 43
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 87
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    :goto_0
    return-object p1

    :cond_0
    const-string p1, "Nova aplica\u00e7\u00e3o"

    goto :goto_0
.end method

.method private a(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 96
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 98
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 99
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, p3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 101
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    iget-object v5, p0, Lnv;->b:Lod;

    invoke-virtual {v5}, Lod;->e()Lack;

    move-result-object v5

    invoke-virtual {v5}, Lack;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lkx;->inv_black_four:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2, v4, v7, v1, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 102
    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 104
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    iget-object v2, p0, Lnv;->b:Lod;

    invoke-virtual {v2}, Lod;->e()Lack;

    move-result-object v2

    invoke-virtual {v2}, Lack;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lkx;->inv_warm_grey:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v3, v1, v7, v2, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 105
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 107
    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 109
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lnw;
    .locals 4

    .prologue
    .line 47
    new-instance v0, Lnw;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Llc;->layout_item_comprovante_efetivacao_v1_5:I

    const/4 v3, 0x0

    .line 48
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lnw;-><init>(Lnv;Landroid/view/View;)V

    .line 47
    return-object v0
.end method

.method public a(Lnw;I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 53
    iget-object v0, p0, Lnv;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lace;

    iput-object v0, p1, Lnw;->a:Lace;

    .line 54
    iget-object v0, p1, Lnw;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lnv;->b:Lod;

    invoke-virtual {v2}, Lod;->e()Lack;

    move-result-object v2

    invoke-virtual {v2}, Lack;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Llg;->label_produto:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lnw;->a:Lace;

    invoke-virtual {v3}, Lace;->f()Lto;

    move-result-object v3

    invoke-virtual {v3}, Lto;->k()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lnv;->a(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lnv;->d:Lacg;

    invoke-virtual {v0}, Lacg;->p()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnv;->d:Lacg;

    .line 57
    invoke-virtual {v0}, Lacg;->p()Ljava/lang/String;

    move-result-object v0

    const-string v2, "POUPANCA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnv;->d:Lacg;

    .line 58
    invoke-virtual {v0}, Lacg;->p()Ljava/lang/String;

    move-result-object v0

    const-string v2, "POUPAN\u00c7A"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    :cond_0
    iget-object v0, p1, Lnw;->f:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lnw;->a:Lace;

    .line 61
    invoke-virtual {v3}, Lace;->f()Lto;

    move-result-object v3

    invoke-virtual {v3}, Lto;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lnw;->a:Lace;

    .line 62
    invoke-virtual {v3}, Lace;->r()Llm;

    move-result-object v3

    invoke-virtual {v3}, Llm;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laat;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 60
    invoke-direct {p0, v0, v2, v3}, Lnv;->a(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :goto_0
    iget-object v2, p1, Lnw;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lnv;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 71
    iget-object v0, p1, Lnw;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 72
    iget-object v0, p1, Lnw;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lnv;->b:Lod;

    invoke-virtual {v1}, Lod;->e()Lack;

    move-result-object v1

    invoke-virtual {v1}, Lack;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Llg;->label_titular:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnv;->d:Lacg;

    invoke-virtual {v2}, Lacg;->B()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lnv;->a(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, p1, Lnw;->i:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Lnv;->c:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 75
    iget-object v0, p1, Lnw;->i:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 77
    iget-object v0, p1, Lnw;->a:Lace;

    invoke-virtual {v0}, Lace;->r()Llm;

    move-result-object v0

    invoke-virtual {v0}, Llm;->k()Labz;

    move-result-object v0

    invoke-virtual {v0}, Labz;->d()Ljava/util/List;

    move-result-object v0

    .line 78
    iget-object v1, p1, Lnw;->i:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lnx;

    invoke-direct {v2, v0}, Lnx;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 81
    iget-object v0, p1, Lnw;->d:Landroid/widget/TextView;

    iget-object v1, p1, Lnw;->a:Lace;

    invoke-virtual {v1}, Lace;->s()Lsk;

    move-result-object v1

    invoke-virtual {v1}, Lsk;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v0, p1, Lnw;->e:Landroid/widget/TextView;

    iget-object v1, p1, Lnw;->a:Lace;

    invoke-virtual {v1}, Lace;->s()Lsk;

    move-result-object v1

    invoke-virtual {v1}, Lsk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    return-void

    .line 65
    :cond_1
    iget-object v0, p1, Lnw;->f:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lnw;->a:Lace;

    .line 66
    invoke-virtual {v3}, Lace;->f()Lto;

    move-result-object v3

    invoke-virtual {v3}, Lto;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lnw;->a:Lace;

    .line 67
    invoke-virtual {v3}, Lace;->r()Llm;

    move-result-object v3

    invoke-virtual {v3}, Llm;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lnv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 65
    invoke-direct {p0, v0, v2, v3}, Lnv;->a(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    move v0, v1

    .line 70
    goto/16 :goto_1
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lnv;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 29
    check-cast p1, Lnw;

    invoke-virtual {p0, p1, p2}, Lnv;->a(Lnw;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lnv;->a(Landroid/view/ViewGroup;I)Lnw;

    move-result-object v0

    return-object v0
.end method
