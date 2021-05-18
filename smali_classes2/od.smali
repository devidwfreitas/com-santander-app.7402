.class public Lod;
.super Lacr;
.source "SourceFile"


# instance fields
.field private a:Lacg;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageButton;

.field private e:Landroid/support/v7/widget/RecyclerView;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/Button;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Landroid/widget/ImageButton;

.field private l:Landroid/widget/TextView;

.field private m:Z


# direct methods
.method public constructor <init>(Lack;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lacr;-><init>(Lack;)V

    .line 49
    invoke-virtual {p0}, Lod;->e()Lack;

    move-result-object v0

    invoke-virtual {v0}, Lack;->a()Lacf;

    move-result-object v0

    check-cast v0, Lacg;

    iput-object v0, p0, Lod;->a:Lacg;

    .line 50
    iget-object v0, p0, Lod;->a:Lacg;

    invoke-virtual {v0}, Lacg;->w()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lod;->m:Z

    .line 52
    invoke-direct {p0}, Lod;->a()V

    .line 53
    invoke-direct {p0}, Lod;->b()V

    .line 54
    return-void

    .line 50
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lod;)Lacg;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lod;->a:Lacg;

    return-object v0
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 7
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
    const/4 v2, 0x0

    .line 226
    :try_start_0
    iget-boolean v0, p0, Lod;->m:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lod;->a:Lacg;

    invoke-virtual {v0}, Lacg;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lod;->a:Lacg;

    invoke-virtual {v0}, Lacg;->r()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltk;

    invoke-virtual {v0}, Ltk;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labz;

    .line 229
    if-nez v2, :cond_2

    .line 230
    invoke-virtual {v0}, Labz;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lacc;

    .line 231
    invoke-virtual {v1}, Lacc;->c()Ljava/lang/String;

    move-result-object v5

    const-string v6, "valorTaxaSaida"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Labz;->d()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 232
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    const/4 v0, 0x1

    :goto_1
    move v2, v0

    .line 238
    goto :goto_0

    .line 240
    :catch_0
    move-exception v0

    .line 241
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Erro Sistemico"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 245
    :cond_1
    return-object p1

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method private a()V
    .locals 2

    .prologue
    .line 57
    invoke-virtual {p0}, Lod;->e()Lack;

    move-result-object v0

    sget v1, Lla;->header_titulo:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lod;->c:Landroid/widget/TextView;

    .line 58
    invoke-virtual {p0}, Lod;->e()Lack;

    move-result-object v0

    sget v1, Lla;->header_cancel:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lod;->d:Landroid/widget/ImageButton;

    .line 59
    invoke-virtual {p0}, Lod;->e()Lack;

    move-result-object v0

    sget v1, Lla;->lista_comprovantes:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lod;->e:Landroid/support/v7/widget/RecyclerView;

    .line 60
    invoke-virtual {p0}, Lod;->e()Lack;

    move-result-object v0

    sget v1, Lla;->btn_compartilhar_comprovante:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lod;->f:Landroid/widget/Button;

    .line 61
    invoke-virtual {p0}, Lod;->e()Lack;

    move-result-object v0

    sget v1, Lla;->btn_continuar_comprovante:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lod;->g:Landroid/widget/Button;

    .line 62
    invoke-virtual {p0}, Lod;->e()Lack;

    move-result-object v0

    sget v1, Lla;->id_main_screen_comprovantes:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lod;->h:Landroid/view/View;

    .line 63
    invoke-virtual {p0}, Lod;->e()Lack;

    move-result-object v0

    sget v1, Lla;->container_nota_notificacao:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lod;->j:Landroid/view/View;

    .line 64
    invoke-virtual {p0}, Lod;->e()Lack;

    move-result-object v0

    sget v1, Lla;->btn_nota_notificacao:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lod;->k:Landroid/widget/ImageButton;

    .line 65
    invoke-virtual {p0}, Lod;->e()Lack;

    move-result-object v0

    sget v1, Lla;->comp_loading:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lod;->i:Landroid/view/View;

    .line 66
    iget-object v0, p0, Lod;->i:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 67
    invoke-virtual {p0}, Lod;->e()Lack;

    move-result-object v0

    sget v1, Lla;->msg_msg:I

    invoke-virtual {v0, v1}, Lack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lod;->l:Landroid/widget/TextView;

    .line 69
    return-void
.end method

.method private b()V
    .locals 14

    .prologue
    const/16 v13, 0x8

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 72
    iget-object v0, p0, Lod;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lod;->e()Lack;

    move-result-object v1

    sget v2, Llg;->titulo_comprovantes:I

    invoke-virtual {v1, v2}, Lack;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p0, Lod;->d:Landroid/widget/ImageButton;

    sget v1, Lkz;->ic_back:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 76
    iget-boolean v0, p0, Lod;->m:Z

    if-eqz v0, :cond_2

    .line 77
    iget-object v0, p0, Lod;->l:Landroid/widget/TextView;

    invoke-virtual {p0}, Lod;->e()Lack;

    move-result-object v1

    sget v2, Llg;->comprovante_resgate_txt_sucesso:I

    invoke-virtual {v1, v2}, Lack;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    sget v0, Llg;->tag_name_comprovante_resgate_referOper:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 79
    sget v0, Llg;->tag_name_resgatar_valorResgate:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 80
    sget v0, Llg;->tag_name_resgatar_dataResgate:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 84
    invoke-virtual {p0}, Lod;->e()Lack;

    move-result-object v3

    sget v4, Llg;->tag_transaction_name_resgatar:I

    invoke-virtual {v3, v4}, Lack;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 83
    invoke-static {v3}, Lzy;->a(Ljava/lang/String;)V

    move-object v3, v1

    move-object v1, v2

    move-object v2, v0

    .line 96
    :goto_0
    iget-object v0, p0, Lod;->a:Lacg;

    invoke-virtual {v0}, Lacg;->u()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lace;

    .line 97
    invoke-virtual {v0}, Lace;->r()Llm;

    move-result-object v4

    invoke-virtual {v4}, Llm;->k()Labz;

    move-result-object v4

    invoke-virtual {v4}, Labz;->d()Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v4}, Lod;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 100
    invoke-virtual {p0}, Lod;->e()Lack;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-array v6, v12, [Ljava/lang/Object;

    .line 101
    invoke-virtual {v0}, Lace;->u()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    .line 102
    invoke-virtual {v0}, Lace;->f()Lto;

    move-result-object v7

    invoke-virtual {v7}, Lto;->j()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    .line 103
    invoke-virtual {v0}, Lace;->f()Lto;

    move-result-object v7

    invoke-virtual {v7}, Lto;->k()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v11

    .line 100
    invoke-virtual {v5, v1, v6}, Lack;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 104
    invoke-virtual {v0}, Lace;->s()Lsk;

    move-result-object v5

    invoke-virtual {v5}, Lsk;->b()Ljava/lang/String;

    move-result-object v5

    .line 99
    invoke-static {v1, v5}, Lzy;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lacc;

    .line 108
    invoke-virtual {v1}, Lacc;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "data"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 110
    invoke-virtual {p0}, Lod;->e()Lack;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    new-array v7, v12, [Ljava/lang/Object;

    .line 111
    invoke-virtual {v0}, Lace;->u()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    .line 112
    invoke-virtual {v0}, Lace;->f()Lto;

    move-result-object v8

    invoke-virtual {v8}, Lto;->j()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    .line 113
    invoke-virtual {v0}, Lace;->f()Lto;

    move-result-object v8

    invoke-virtual {v8}, Lto;->k()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    .line 110
    invoke-virtual {v5, v6, v7}, Lack;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 114
    invoke-virtual {v1}, Lacc;->b()Ljava/lang/String;

    move-result-object v6

    const-string v7, "[/]"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 109
    invoke-static {v5, v6}, Lzy;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_1
    invoke-virtual {v1}, Lacc;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "valor"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 119
    invoke-virtual {p0}, Lod;->e()Lack;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    new-array v7, v12, [Ljava/lang/Object;

    .line 120
    invoke-virtual {v0}, Lace;->u()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    .line 121
    invoke-virtual {v0}, Lace;->f()Lto;

    move-result-object v8

    invoke-virtual {v8}, Lto;->j()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    .line 122
    invoke-virtual {v0}, Lace;->f()Lto;

    move-result-object v8

    invoke-virtual {v8}, Lto;->k()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    .line 119
    invoke-virtual {v5, v6, v7}, Lack;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 123
    invoke-virtual {v1}, Lacc;->b()Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-static {v5, v1}, Lzy;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 87
    :cond_2
    sget v0, Llg;->tag_name_aplicar_comprovante_referOper:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 88
    sget v0, Llg;->tag_name_aplicar_comprovante_valorAplicacao:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 89
    sget v0, Llg;->tag_name_aplicar_comprovante_dataAplicacao:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 92
    invoke-virtual {p0}, Lod;->e()Lack;

    move-result-object v3

    sget v4, Llg;->tag_transaction_name_aplicar:I

    invoke-virtual {v3, v4}, Lack;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 91
    invoke-static {v3}, Lzy;->a(Ljava/lang/String;)V

    move-object v3, v1

    move-object v1, v2

    move-object v2, v0

    goto/16 :goto_0

    .line 129
    :cond_3
    iget-object v0, p0, Lod;->e:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lod;->e()Lack;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 130
    iget-object v0, p0, Lod;->e:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lnv;

    invoke-virtual {p0}, Lod;->e()Lack;

    move-result-object v2

    iget-object v3, p0, Lod;->a:Lacg;

    iget-boolean v4, p0, Lod;->m:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, p0}, Lnv;-><init>(Landroid/app/Activity;Lacg;Ljava/lang/Boolean;Lod;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 131
    iget-object v0, p0, Lod;->e:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 132
    iget-object v0, p0, Lod;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v9}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 133
    iget-object v0, p0, Lod;->g:Landroid/widget/Button;

    new-instance v1, Loe;

    invoke-direct {v1, p0}, Loe;-><init>(Lod;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v0, p0, Lod;->f:Landroid/widget/Button;

    new-instance v1, Lof;

    invoke-direct {v1, p0}, Lof;-><init>(Lod;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget-object v0, p0, Lod;->d:Landroid/widget/ImageButton;

    new-instance v1, Log;

    invoke-direct {v1, p0}, Log;-><init>(Lod;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v0, p0, Lod;->i:Landroid/view/View;

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lod;->a:Lacg;

    invoke-virtual {v0}, Lacg;->p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LCI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 207
    iget-object v0, p0, Lod;->j:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lod;->k:Landroid/widget/ImageButton;

    new-instance v1, Loh;

    invoke-direct {v1, p0}, Loh;-><init>(Lod;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    :goto_2
    return-void

    .line 213
    :cond_4
    iget-object v0, p0, Lod;->j:Landroid/view/View;

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method static synthetic b(Lod;)Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lod;->m:Z

    return v0
.end method

.method static synthetic c(Lod;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lod;->f:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic d(Lod;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lod;->g:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic e(Lod;)Landroid/view/View;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lod;->h:Landroid/view/View;

    return-object v0
.end method
