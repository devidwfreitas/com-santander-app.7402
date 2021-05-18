.class public Lfoo;
.super Lfom;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lfuu;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Lnez;

.field private d:I

.field private final e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<+",
            "Lfuu;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Lfom;-><init>()V

    .line 33
    iput-object v0, p0, Lfoo;->a:Ljava/util/List;

    .line 34
    iput-object v0, p0, Lfoo;->b:Landroid/content/Context;

    .line 35
    iput-object v0, p0, Lfoo;->c:Lnez;

    .line 37
    const/4 v0, 0x1

    iput v0, p0, Lfoo;->e:I

    .line 40
    iput-object p1, p0, Lfoo;->b:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lfoo;->a:Ljava/util/List;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<+",
            "Lfuu;",
            ">;I)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Lfom;-><init>()V

    .line 33
    iput-object v0, p0, Lfoo;->a:Ljava/util/List;

    .line 34
    iput-object v0, p0, Lfoo;->b:Landroid/content/Context;

    .line 35
    iput-object v0, p0, Lfoo;->c:Lnez;

    .line 37
    const/4 v0, 0x1

    iput v0, p0, Lfoo;->e:I

    .line 45
    iput-object p1, p0, Lfoo;->b:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lfoo;->a:Ljava/util/List;

    .line 47
    iput p3, p0, Lfoo;->d:I

    .line 48
    return-void
.end method

.method static synthetic a(Lfoo;)Lnez;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lfoo;->c:Lnez;

    return-object v0
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 162
    packed-switch p1, :pswitch_data_0

    .line 169
    :goto_0
    return-void

    .line 164
    :pswitch_0
    const-string v0, "Cartoes_PagamentoDaFatura_ContaDeDebitoDoPagamento_Acao"

    const-string v1, "SelecionarContaDebito"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 162
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lfoo;I)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lfoo;->a(I)V

    return-void
.end method

.method static synthetic b(Lfoo;)I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lfoo;->d:I

    return v0
.end method


# virtual methods
.method public a(Lnez;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lfoo;->c:Lnez;

    .line 58
    return-void
.end method

.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 52
    check-cast p1, Landroid/support/v4/view/ViewPager;

    check-cast p3, Landroid/widget/LinearLayout;

    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 53
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lfoo;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lfoo;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 65
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 13

    .prologue
    const v12, 0x7f1011c7

    const/16 v11, 0x8

    const/4 v10, 0x0

    .line 71
    iget-object v0, p0, Lfoo;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0403a1

    const/4 v2, 0x0

    .line 72
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 73
    const v1, 0x7f1011c5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 74
    const v2, 0x7f1011c6

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 75
    const v3, 0x7f1005b8

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 76
    const v4, 0x7f10062e

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 77
    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 79
    iget-object v5, p0, Lfoo;->a:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lfuu;

    .line 80
    invoke-virtual {v5}, Lfuu;->getAgencia()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lfuu;->getCuenta()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lnaq;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    const v6, 0x7f1005ae

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 83
    const v7, 0x7f1005aa

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 84
    iget-object v8, p0, Lfoo;->a:Ljava/util/List;

    invoke-interface {v8, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lfuu;

    invoke-virtual {v8}, Lfuu;->getNomeBanco()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lfoo;->a:Ljava/util/List;

    .line 85
    invoke-interface {v8, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lfuu;

    invoke-virtual {v8}, Lfuu;->getNomeBanco()Ljava/lang/String;

    move-result-object v8

    const-string v9, "CARTAOPAG"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v5}, Lfuu;->getIndicadorMesmoTitular()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 86
    invoke-virtual {v5}, Lfuu;->getIndicadorMesmoTitular()Ljava/lang/String;

    move-result-object v8

    const-string v9, "BE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 87
    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 88
    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 95
    :goto_0
    invoke-virtual {v5}, Lfuu;->getDescricao()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Lfuu;->getDescricao()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    invoke-virtual {v5}, Lfuu;->getNomeBanco()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 96
    invoke-virtual {v5}, Lfuu;->getNomeBanco()Ljava/lang/String;

    move-result-object v6

    const-string v7, "CARTAOPAG"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 97
    invoke-virtual {v5}, Lfuu;->getDescricao()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    const v1, 0x7f100e0e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 100
    const-string v3, "Limite dispon\u00edvel:"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    const/16 v3, 0x23

    invoke-virtual {v1, v10, v3, v10, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 104
    invoke-virtual {v5}, Lfuu;->getDescricao()Ljava/lang/String;

    move-result-object v3

    const-string v6, "UNLIMITED"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 105
    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    const-string v1, "Unlimited"

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    :goto_1
    const-string v1, ""

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 127
    :goto_2
    new-instance v1, Lfop;

    invoke-direct {v1, p0, p2}, Lfop;-><init>(Lfoo;I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    new-instance v1, Lfoq;

    invoke-direct {v1, p0}, Lfoq;-><init>(Lfoo;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 152
    check-cast p1, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v0, v10}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 153
    return-object v0

    .line 91
    :cond_0
    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 92
    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 109
    :cond_1
    invoke-virtual {v5}, Lfuu;->getValor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 123
    :cond_2
    invoke-virtual {v5}, Lfuu;->getExtractoHome()Lfuy;

    move-result-object v1

    invoke-virtual {v1}, Lfuy;->u()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    invoke-virtual {v5}, Lfuu;->getValor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 158
    check-cast p2, Landroid/widget/LinearLayout;

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
