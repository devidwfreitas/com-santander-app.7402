.class public Loi;
.super Lacr;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/support/v7/widget/RecyclerView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/ImageButton;

.field private k:Landroid/view/View;

.field private l:Landroid/view/View;

.field private m:Lacg;


# direct methods
.method public constructor <init>(Lack;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lacr;-><init>(Lack;)V

    .line 44
    invoke-virtual {p0}, Loi;->e()Lack;

    move-result-object v0

    invoke-virtual {v0}, Lack;->a()Lacf;

    move-result-object v0

    check-cast v0, Lacg;

    iput-object v0, p0, Loi;->m:Lacg;

    .line 46
    invoke-direct {p0}, Loi;->a()V

    .line 47
    invoke-direct {p0}, Loi;->b()V

    .line 48
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 51
    invoke-virtual {p0}, Loi;->e()Lack;

    move-result-object v0

    sget v1, Lla;->header_logo:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Loi;->i:Landroid/widget/ImageView;

    .line 52
    invoke-virtual {p0}, Loi;->e()Lack;

    move-result-object v0

    sget v1, Lla;->header_cancel:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Loi;->j:Landroid/widget/ImageButton;

    .line 53
    invoke-virtual {p0}, Loi;->e()Lack;

    move-result-object v0

    sget v1, Lla;->notas_loading:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Loi;->k:Landroid/view/View;

    .line 54
    invoke-virtual {p0}, Loi;->e()Lack;

    move-result-object v0

    sget v1, Lla;->notas_scroll:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Loi;->l:Landroid/view/View;

    .line 55
    invoke-virtual {p0}, Loi;->e()Lack;

    move-result-object v0

    sget v1, Lla;->notas_title:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Loi;->a:Landroid/widget/TextView;

    .line 56
    invoke-virtual {p0}, Loi;->e()Lack;

    move-result-object v0

    sget v1, Lla;->notas_subtitle:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Loi;->c:Landroid/widget/TextView;

    .line 57
    invoke-virtual {p0}, Loi;->e()Lack;

    move-result-object v0

    sget v1, Lla;->notas_texto:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Loi;->e:Landroid/widget/TextView;

    .line 58
    invoke-virtual {p0}, Loi;->e()Lack;

    move-result-object v0

    sget v1, Lla;->notas_assinatura:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Loi;->f:Landroid/widget/TextView;

    .line 59
    invoke-virtual {p0}, Loi;->e()Lack;

    move-result-object v0

    sget v1, Lla;->notas_assinatura_data:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Loi;->g:Landroid/widget/TextView;

    .line 60
    invoke-virtual {p0}, Loi;->e()Lack;

    move-result-object v0

    sget v1, Lla;->notas_grupos:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Loi;->d:Landroid/support/v7/widget/RecyclerView;

    .line 61
    invoke-virtual {p0}, Loi;->e()Lack;

    move-result-object v0

    sget v1, Lla;->notas_sac:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Loi;->h:Landroid/widget/TextView;

    .line 62
    return-void
.end method

.method private a(Lnr;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 66
    iget-object v0, p0, Loi;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 67
    iget-object v0, p0, Loi;->l:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Loi;->k:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Loi;->j:Landroid/widget/ImageButton;

    sget v1, Lkz;->ic_back:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 70
    iget-object v0, p0, Loi;->j:Landroid/widget/ImageButton;

    new-instance v1, Loj;

    invoke-direct {v1, p0}, Loj;-><init>(Loi;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Loi;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lnr;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p0, Loi;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lnr;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Loi;->e:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<html><body style=\"text-align:justify\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Landroid/text/SpannedString;

    invoke-virtual {p1}, Lnr;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v2}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</body></Html>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p0, Loi;->f:Landroid/widget/TextView;

    invoke-virtual {p1}, Lnr;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Loi;->g:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Loi;->b(Lnr;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Loi;->d:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Loi;->e()Lack;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 82
    iget-object v0, p0, Loi;->d:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lnz;

    invoke-virtual {p1}, Lnr;->c()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Loi;->e()Lack;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lnz;-><init>(Ljava/util/List;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 83
    iget-object v0, p0, Loi;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 84
    iget-object v0, p0, Loi;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Lnr;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    return-void
.end method

.method static synthetic a(Loi;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Loi;->b()V

    return-void
.end method

.method static synthetic a(Loi;Lnr;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Loi;->a(Lnr;)V

    return-void
.end method

.method private b(Lnr;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 88
    const/4 v1, 0x0

    .line 90
    :try_start_0
    invoke-virtual {p1}, Lnr;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labz;

    .line 91
    if-nez v1, :cond_1

    .line 92
    invoke-virtual {v0}, Labz;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lacc;

    .line 93
    const-string v4, "LOCAL"

    invoke-virtual {v0}, Lacc;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 94
    invoke-virtual {v0}, Lacc;->b()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 101
    goto :goto_0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "System failure"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    :cond_1
    if-nez v1, :cond_2

    const-string v0, ""

    .line 107
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lnr;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 106
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method private b()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 112
    new-instance v0, Lns;

    invoke-direct {v0}, Lns;-><init>()V

    .line 113
    const-string v4, ""

    .line 114
    iget-object v1, p0, Loi;->m:Lacg;

    invoke-virtual {v1}, Lacg;->u()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lace;

    invoke-virtual {v1}, Lace;->r()Llm;

    move-result-object v1

    invoke-virtual {v1}, Llm;->k()Labz;

    move-result-object v1

    invoke-virtual {v1}, Labz;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lacc;

    .line 115
    invoke-virtual {v1}, Lacc;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v5, "data"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lacc;->b()Ljava/lang/String;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 116
    invoke-virtual {v1}, Lacc;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x2

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v1, v1, v6

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 122
    :cond_1
    iget-object v1, p0, Loi;->m:Lacg;

    invoke-virtual {v1}, Lacg;->u()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lace;

    invoke-virtual {v1}, Lace;->h()Lou;

    move-result-object v2

    .line 123
    invoke-virtual {v2}, Lou;->g()V

    .line 125
    iget-object v1, p0, Loi;->m:Lacg;

    invoke-virtual {v1}, Lacg;->u()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lace;

    invoke-virtual {v1}, Lace;->r()Llm;

    move-result-object v1

    invoke-virtual {v1}, Llm;->a()Ljava/lang/String;

    move-result-object v3

    .line 126
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v5, 0xc

    if-le v1, v5, :cond_2

    .line 127
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0xc

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 130
    :cond_2
    invoke-virtual {p0}, Loi;->e()Lack;

    move-result-object v1

    new-instance v5, Lok;

    invoke-direct {v5, p0}, Lok;-><init>(Loi;)V

    invoke-virtual/range {v0 .. v5}, Lns;->a(Landroid/content/Context;Lou;Ljava/lang/String;Ljava/lang/String;Lnu;)V

    .line 145
    return-void
.end method
