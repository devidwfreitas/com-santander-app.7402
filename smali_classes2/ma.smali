.class public Lma;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lmj;",
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

.field private b:Lmr;

.field private c:Lacg;

.field private d:Landroid/content/Context;

.field private e:Ljava/lang/Boolean;

.field private f:Ljava/lang/String;

.field private g:Z


# direct methods
.method public constructor <init>(Lacg;Lmr;Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 42
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lma;->e:Ljava/lang/Boolean;

    .line 47
    invoke-virtual {p1}, Lacg;->w()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p1}, Lacg;->l()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lma;->a:Ljava/util/List;

    .line 49
    iput-boolean v1, p0, Lma;->g:Z

    .line 55
    :goto_0
    iput-object p2, p0, Lma;->b:Lmr;

    .line 56
    iput-object p1, p0, Lma;->c:Lacg;

    .line 57
    iput-object p3, p0, Lma;->d:Landroid/content/Context;

    .line 58
    return-void

    .line 51
    :cond_0
    invoke-virtual {p1}, Lacg;->w()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lma;->a:Ljava/util/List;

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lma;->g:Z

    goto :goto_0
.end method

.method static synthetic a(Lma;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lma;->f:Ljava/lang/String;

    return-object v0
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lacc;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lacc;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 250
    :try_start_0
    iget-boolean v0, p0, Lma;->g:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lma;->c:Lacg;

    invoke-virtual {v0}, Lacg;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 252
    iget-object v0, p0, Lma;->c:Lacg;

    invoke-virtual {v0}, Lacg;->r()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltk;

    invoke-virtual {v0}, Ltk;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labz;

    .line 253
    if-nez v1, :cond_2

    .line 254
    invoke-virtual {v0}, Labz;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lacc;

    .line 255
    invoke-virtual {v0}, Lacc;->c()Ljava/lang/String;

    move-result-object v4

    const-string v5, "valorTaxaSaida"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 256
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lacc;

    .line 257
    invoke-virtual {v1}, Lacc;->c()Ljava/lang/String;

    move-result-object v4

    const-string v5, "taxaSaidaResgate"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 258
    invoke-virtual {v0}, Lacc;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lacc;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 271
    :catch_0
    move-exception v0

    .line 272
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Erro Sistemico"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 274
    :cond_2
    return-object p1

    .line 261
    :cond_3
    const/4 v0, 0x1

    :goto_2
    move v1, v0

    .line 268
    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method static synthetic a(Lma;Lmj;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lma;->b(Lmj;)V

    return-void
.end method

.method static synthetic b(Lma;)Lacg;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lma;->c:Lacg;

    return-object v0
.end method

.method private b(Lmj;)V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 231
    iget-object v0, p1, Lmj;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 232
    iget-object v0, p1, Lmj;->f:Landroid/widget/TextView;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 233
    iget-object v0, p1, Lmj;->g:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 238
    :goto_0
    return-void

    .line 235
    :cond_0
    iget-object v0, p1, Lmj;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 236
    iget-object v0, p1, Lmj;->g:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic c(Lma;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lma;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lma;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lma;->e:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic e(Lma;)Lmr;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lma;->b:Lmr;

    return-object v0
.end method

.method static synthetic f(Lma;)Ljava/util/List;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lma;->a:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lmj;
    .locals 4

    .prologue
    .line 62
    new-instance v0, Lmj;

    .line 63
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 62
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Llc;->layout_card_carrinho_item:I

    const/4 v3, 0x0

    .line 63
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lmj;-><init>(Lma;Landroid/view/View;)V

    .line 62
    return-object v0
.end method

.method public a(Lmj;)V
    .locals 2

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 71
    iget-object v0, p0, Lma;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lma;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p1, Lmj;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 73
    new-instance v1, Lmb;

    invoke-direct {v1, p0, p1}, Lmb;-><init>(Lma;Lmj;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 86
    :cond_0
    return-void
.end method

.method public a(Lmj;I)V
    .locals 7

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 92
    invoke-virtual {p1}, Lmj;->getAdapterPosition()I

    move-result v3

    .line 94
    iget-object v0, p0, Lma;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lace;

    iput-object v0, p1, Lmj;->a:Lace;

    .line 97
    :try_start_0
    iget-object v0, p1, Lmj;->a:Lace;

    invoke-virtual {v0}, Lace;->r()Llm;

    move-result-object v0

    invoke-virtual {v0}, Llm;->l()Ljava/lang/String;

    move-result-object v0

    const-string v4, "S"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lma;->e:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_0
    iget-object v0, p1, Lmj;->i:Landroid/view/View;

    iget-object v4, p1, Lmj;->a:Lace;

    invoke-virtual {v4}, Lace;->g()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 103
    iget-object v0, p1, Lmj;->b:Landroid/widget/TextView;

    iget-object v4, p1, Lmj;->a:Lace;

    invoke-virtual {v4}, Lace;->f()Lto;

    move-result-object v4

    invoke-virtual {v4}, Lto;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, p1, Lmj;->h:Landroid/widget/TextView;

    new-instance v4, Lmc;

    invoke-direct {v4, p0, p1}, Lmc;-><init>(Lma;Lmj;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v0, p0, Lma;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lace;

    invoke-virtual {v0}, Lace;->r()Llm;

    move-result-object v0

    invoke-virtual {v0}, Llm;->a()Ljava/lang/String;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v0}, Laat;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 125
    :cond_0
    iget-object v0, p1, Lmj;->c:Landroid/widget/TextView;

    iget-object v4, p0, Lma;->d:Landroid/content/Context;

    sget v5, Llg;->cart_novo_contrato:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    :goto_1
    iget-object v0, p1, Lmj;->a:Lace;

    invoke-virtual {v0}, Lace;->A()Z

    move-result v0

    if-nez v0, :cond_7

    .line 144
    iget-object v0, p1, Lmj;->d:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lma;->d:Landroid/content/Context;

    sget v6, Llg;->cart_titular_name:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lma;->c:Lacg;

    invoke-virtual {v5}, Lacg;->B()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v0, p1, Lmj;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    :goto_2
    iget-object v4, p1, Lmj;->j:Landroid/view/View;

    iget-object v0, p1, Lmj;->a:Lace;

    invoke-virtual {v0}, Lace;->c()Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_3
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 151
    iget-object v4, p1, Lmj;->n:Landroid/widget/RelativeLayout;

    iget-object v0, p1, Lmj;->a:Lace;

    invoke-virtual {v0}, Lace;->D()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p1, Lmj;->a:Lace;

    invoke-virtual {v0}, Lace;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lma;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_1
    move v0, v1

    :goto_4
    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 154
    iget-object v0, p1, Lmj;->a:Lace;

    invoke-virtual {v0}, Lace;->r()Llm;

    move-result-object v0

    invoke-virtual {v0}, Llm;->i()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lmj;->a:Lace;

    .line 155
    invoke-virtual {v0}, Lace;->r()Llm;

    move-result-object v0

    invoke-virtual {v0}, Llm;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 157
    iget-object v0, p1, Lmj;->a:Lace;

    invoke-virtual {v0}, Lace;->r()Llm;

    move-result-object v0

    invoke-virtual {v0}, Llm;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lacb;

    invoke-virtual {v0}, Lacb;->d()Ljava/lang/String;

    move-result-object v4

    .line 158
    iget-object v0, p1, Lmj;->a:Lace;

    invoke-virtual {v0}, Lace;->r()Llm;

    move-result-object v0

    invoke-virtual {v0}, Llm;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lacb;

    invoke-virtual {v0}, Lacb;->b()Ljava/lang/String;

    move-result-object v5

    .line 160
    iget-object v6, p1, Lmj;->e:Landroid/widget/TextView;

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v1

    :goto_5
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 161
    iget-object v0, p1, Lmj;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v4, p1, Lmj;->f:Landroid/widget/TextView;

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v1

    :goto_6
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    iget-object v0, p1, Lmj;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iput-object v5, p0, Lma;->f:Ljava/lang/String;

    .line 169
    :cond_2
    iget-object v0, p1, Lmj;->l:Landroid/widget/Button;

    iget-object v4, p1, Lmj;->a:Lace;

    invoke-virtual {v4}, Lace;->d()Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v1

    :cond_3
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 171
    iget-object v0, p1, Lmj;->f:Landroid/widget/TextView;

    new-instance v2, Lmd;

    invoke-direct {v2, p0, p1}, Lmd;-><init>(Lma;Lmj;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v0, p1, Lmj;->g:Landroid/widget/TextView;

    new-instance v2, Lme;

    invoke-direct {v2, p0, p1}, Lme;-><init>(Lma;Lmj;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v0, p1, Lmj;->k:Landroid/widget/Button;

    new-instance v2, Lmf;

    invoke-direct {v2, p0, p1, v3}, Lmf;-><init>(Lma;Lmj;I)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v0, p1, Lmj;->l:Landroid/widget/Button;

    new-instance v2, Lmi;

    invoke-direct {v2, p0, p1}, Lmi;-><init>(Lma;Lmj;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-object v0, p1, Lmj;->m:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v3, p0, Lma;->d:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 220
    iget-object v0, p1, Lmj;->m:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v2}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 221
    iget-object v0, p1, Lmj;->m:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 222
    iget-object v0, p1, Lmj;->m:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lmk;

    iget-object v2, p1, Lmj;->a:Lace;

    .line 224
    invoke-virtual {v2}, Lace;->r()Llm;

    move-result-object v2

    invoke-virtual {v2}, Llm;->k()Labz;

    move-result-object v2

    invoke-virtual {v2}, Labz;->d()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lma;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p1, Lmj;->a:Lace;

    .line 225
    invoke-virtual {v3}, Lace;->a()Z

    move-result v3

    invoke-direct {v1, v2, v3}, Lmk;-><init>(Ljava/util/List;Z)V

    .line 222
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 226
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lma;->e:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 127
    :cond_4
    iget-object v0, p0, Lma;->c:Lacg;

    invoke-virtual {v0}, Lacg;->p()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lma;->c:Lacg;

    .line 128
    invoke-virtual {v0}, Lacg;->p()Ljava/lang/String;

    move-result-object v0

    const-string v4, "POUPANCA"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lma;->c:Lacg;

    .line 129
    invoke-virtual {v0}, Lacg;->p()Ljava/lang/String;

    move-result-object v0

    const-string v4, "POUPAN\u00c7A"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 131
    :cond_5
    iget-object v4, p1, Lmj;->c:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lmj;->a:Lace;

    .line 132
    invoke-virtual {v5}, Lace;->f()Lto;

    move-result-object v5

    invoke-virtual {v5}, Lto;->l()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ": "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, p0, Lma;->a:Ljava/util/List;

    .line 133
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lace;

    invoke-virtual {v0}, Lace;->r()Llm;

    move-result-object v0

    invoke-virtual {v0}, Llm;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laat;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 137
    :cond_6
    iget-object v4, p1, Lmj;->c:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lmj;->a:Lace;

    .line 138
    invoke-virtual {v5}, Lace;->f()Lto;

    move-result-object v5

    invoke-virtual {v5}, Lto;->l()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ": "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, p0, Lma;->a:Ljava/util/List;

    .line 139
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lace;

    invoke-virtual {v0}, Lace;->r()Llm;

    move-result-object v0

    invoke-virtual {v0}, Llm;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 147
    :cond_7
    iget-object v0, p1, Lmj;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_8
    move v0, v2

    .line 150
    goto/16 :goto_3

    :cond_9
    move v0, v2

    .line 151
    goto/16 :goto_4

    :cond_a
    move v0, v2

    .line 160
    goto/16 :goto_5

    :cond_b
    move v0, v2

    .line 163
    goto/16 :goto_6
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lma;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 35
    check-cast p1, Lmj;

    invoke-virtual {p0, p1, p2}, Lma;->a(Lmj;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1, p2}, Lma;->a(Landroid/view/ViewGroup;I)Lmj;

    move-result-object v0

    return-object v0
.end method

.method public synthetic onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 35
    check-cast p1, Lmj;

    invoke-virtual {p0, p1}, Lma;->a(Lmj;)V

    return-void
.end method
