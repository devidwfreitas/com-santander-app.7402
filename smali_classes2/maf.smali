.class public Lmaf;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Llve;


# static fields
.field public static final a:Ljava/lang/String; = "edit_key"

.field public static final b:Ljava/lang/String; = "UPDATE_STEP_KEY"

.field private static final c:Ljava/lang/String; = "response-key"


# instance fields
.field private d:Landroid/support/v7/widget/RecyclerView;

.field private e:Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;

.field private f:Landroid/widget/TextView;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkvy;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkvo;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

.field private j:Z

.field private k:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmaf;->j:Z

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmaf;->k:Z

    return-void
.end method

.method static synthetic a(Lmaf;)Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lmaf;->i:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    return-object v0
.end method

.method public static a(ZZ)Lmaf;
    .locals 5

    .prologue
    .line 90
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 91
    new-instance v1, Lmaf;

    invoke-direct {v1}, Lmaf;-><init>()V

    .line 92
    const-string v2, "edit_key"

    new-instance v3, Lejm;

    invoke-direct {v3}, Lejm;-><init>()V

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v2, "UPDATE_STEP_KEY"

    new-instance v3, Lejm;

    invoke-direct {v3}, Lejm;-><init>()V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {v1, v0}, Lmaf;->setArguments(Landroid/os/Bundle;)V

    .line 95
    return-object v1
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 370
    const v0, 0x7f1009f0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lmaf;->d:Landroid/support/v7/widget/RecyclerView;

    .line 371
    const v0, 0x7f1009f1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;

    iput-object v0, p0, Lmaf;->e:Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;

    .line 372
    const v0, 0x7f10030d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmaf;->f:Landroid/widget/TextView;

    .line 373
    return-void
.end method

.method public static b()Lmaf;
    .locals 2

    .prologue
    .line 79
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 81
    new-instance v1, Lmaf;

    invoke-direct {v1}, Lmaf;-><init>()V

    .line 82
    invoke-virtual {v1, v0}, Lmaf;->setArguments(Landroid/os/Bundle;)V

    .line 83
    return-object v1
.end method

.method private b(Lkuq;)V
    .locals 2

    .prologue
    .line 272
    sget-object v0, Lmai;->a:[I

    invoke-virtual {p1}, Lkuq;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 286
    :goto_0
    return-void

    .line 275
    :pswitch_0
    const-string v0, "Seguros_Sinistro_Acionar_Confirmacao_Acao"

    const-string v1, "EditarDataOcorrencia"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 278
    :pswitch_1
    const-string v0, "Seguros_Sinistro_Acionar_Confirmacao_Acao"

    const-string v1, "EditarValorDoBem"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 282
    :pswitch_2
    const-string v0, "Seguros_Sinistro_Acionar_Confirmacao_Acao"

    const-string v1, "EditarValorTotalPrejuizo"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 272
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private e()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 137
    sget-object v0, Lmhv;->INSTANCE:Lmhv;

    invoke-virtual {v0}, Lmhv;->getFlowCache()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lmaf;->h:Ljava/util/List;

    .line 138
    iget-object v0, p0, Lmaf;->i:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    invoke-virtual {v0, v4}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->c(Z)V

    .line 140
    iget-object v0, p0, Lmaf;->i:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    invoke-virtual {v0, v4}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->f(Z)V

    .line 142
    iget-object v0, p0, Lmaf;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lmaf;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090373

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v0, p0, Lmaf;->d:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Lmaf;->i:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 144
    iget-object v0, p0, Lmaf;->d:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lmgw;

    iget-object v2, p0, Lmaf;->i:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    sget-object v3, Lmgx;->GRAY_BACKGROUND_DETAILS:Lmgx;

    invoke-direct {v1, v2, v3}, Lmgw;-><init>(Landroid/content/Context;Lmgx;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 145
    invoke-direct {p0}, Lmaf;->f()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lmaf;->g:Ljava/util/List;

    .line 146
    new-instance v0, Lluv;

    iget-object v1, p0, Lmaf;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lmaf;->g:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lluv;-><init>(Landroid/support/v7/widget/RecyclerView;Ljava/util/List;)V

    .line 147
    invoke-virtual {v0, p0}, Lluv;->a(Llve;)V

    .line 148
    iget-object v1, p0, Lmaf;->e:Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;

    iget-object v2, p0, Lmaf;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v2}, Lcom/bartoszlipinski/recyclerviewheader2/RecyclerViewHeader;->a(Landroid/support/v7/widget/RecyclerView;)V

    .line 149
    iget-object v1, p0, Lmaf;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 150
    return-void
.end method

.method private f()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lkvy;",
            ">;"
        }
    .end annotation

    .prologue
    const v12, 0x7f020352

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 169
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 171
    invoke-virtual {p0}, Lmaf;->c()Lkvy;

    move-result-object v0

    .line 172
    if-eqz v0, :cond_0

    .line 173
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 176
    iget-object v0, p0, Lmaf;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvo;

    .line 177
    sget-object v4, Lmhv;->INSTANCE:Lmhv;

    invoke-virtual {v0}, Lkvo;->b()Lkuq;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmhv;->getRequest(Lkuq;)Lkva;

    move-result-object v4

    .line 178
    invoke-virtual {v0}, Lkvo;->b()Lkuq;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 179
    invoke-virtual {v0}, Lkvo;->b()Lkuq;

    move-result-object v5

    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    if-eqz v4, :cond_1

    .line 181
    new-instance v5, Lkvy;

    invoke-direct {v5}, Lkvy;-><init>()V

    .line 182
    invoke-virtual {v4}, Lkva;->g()Lkuq;

    move-result-object v6

    invoke-virtual {v5, v6}, Lkvy;->a(Lkuq;)V

    .line 183
    invoke-virtual {v5, v4}, Lkvy;->a(Lkva;)V

    .line 184
    sget-object v6, Lmai;->a:[I

    invoke-virtual {v0}, Lkvo;->b()Lkuq;

    move-result-object v0

    invoke-virtual {v0}, Lkuq;->ordinal()I

    move-result v0

    aget v0, v6, v0

    packed-switch v0, :pswitch_data_0

    .line 222
    :cond_2
    :goto_1
    invoke-virtual {v4}, Lkva;->a()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lkvy;->a(J)V

    goto :goto_0

    .line 186
    :pswitch_0
    invoke-virtual {v4}, Lkva;->j()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 187
    invoke-virtual {v4}, Lkva;->j()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lmhj;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lkvy;->b(Ljava/lang/String;)V

    .line 190
    :cond_3
    invoke-virtual {v5, v12}, Lkvy;->a(I)V

    .line 191
    invoke-virtual {p0}, Lmaf;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f090473

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lkvy;->a(Ljava/lang/String;)V

    .line 192
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 195
    :pswitch_1
    invoke-virtual {p0}, Lmaf;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f090b04

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lkvy;->a(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v4}, Lkva;->d()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v5, v0}, Lkvy;->a(Ljava/util/List;)V

    .line 197
    invoke-virtual {v4}, Lkva;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmhj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lkvy;->b(Ljava/lang/String;)V

    const v0, 0x7f0203b8

    invoke-virtual {v5, v0}, Lkvy;->a(I)V

    .line 198
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 201
    :pswitch_2
    invoke-virtual {p0}, Lmaf;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 202
    invoke-virtual {p0}, Lmaf;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f090b03

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lkvy;->a(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v4}, Lkva;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmhj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lkvy;->b(Ljava/lang/String;)V

    .line 204
    const v0, 0x7f020492

    invoke-virtual {v5, v0}, Lkvy;->a(I)V

    .line 205
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 209
    :pswitch_3
    invoke-virtual {p0}, Lmaf;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f090403

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lkvy;->a(Ljava/lang/String;)V

    .line 210
    const-string v6, "%s\n%s"

    new-array v7, v11, [Ljava/lang/Object;

    invoke-virtual {v4}, Lkva;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, ""

    :goto_2
    aput-object v0, v7, v9

    invoke-virtual {v4}, Lkva;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, ""

    :goto_3
    aput-object v0, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lkvy;->b(Ljava/lang/String;)V

    .line 211
    const v0, 0x7f020443

    invoke-virtual {v5, v0}, Lkvy;->a(I)V

    .line 212
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 210
    :cond_4
    invoke-virtual {v4}, Lkva;->o()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    invoke-virtual {v4}, Lkva;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmhj;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 215
    :pswitch_4
    invoke-virtual {v5, v12}, Lkvy;->a(I)V

    .line 216
    invoke-virtual {p0}, Lmaf;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f090358

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lkvy;->a(Ljava/lang/String;)V

    .line 217
    const-string v6, "%s %s "

    new-array v7, v11, [Ljava/lang/Object;

    invoke-virtual {v4}, Lkva;->b()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v4}, Lkva;->b()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lmhj;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    aput-object v0, v7, v9

    .line 218
    invoke-virtual {v4}, Lkva;->m()Lkvf;

    move-result-object v0

    sget-object v8, Lkvf;->AM:Lkvf;

    if-ne v0, v8, :cond_7

    const-string v0, "Manh\u00e3"

    :goto_5
    aput-object v0, v7, v10

    .line 217
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lkvy;->b(Ljava/lang/String;)V

    .line 219
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 217
    :cond_6
    const-string v0, ""

    goto :goto_4

    .line 218
    :cond_7
    const-string v0, "Tarde"

    goto :goto_5

    .line 227
    :cond_8
    return-object v1

    .line 184
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private g()V
    .locals 5

    .prologue
    .line 289
    iget-object v0, p0, Lmaf;->i:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 290
    const v1, 0x7f10020e

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lmaf;->a(ZZ)Lmaf;

    move-result-object v2

    const-string v3, "summary-step-fragment"

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 291
    const v1, 0x7f050024

    const v2, 0x7f050025

    const v3, 0x7f050023

    const v4, 0x7f050026

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    .line 292
    const-string v1, "summary-step-fragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 293
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 294
    return-void
.end method

.method private h()Lgkw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lgkw",
            "<",
            "Lis;",
            ">;"
        }
    .end annotation

    .prologue
    .line 376
    new-instance v0, Lmah;

    invoke-direct {v0, p0}, Lmah;-><init>(Lmaf;)V

    return-object v0
.end method


# virtual methods
.method public a(Lkuq;)Lkvo;
    .locals 3

    .prologue
    .line 298
    iget-object v0, p0, Lmaf;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvo;

    .line 299
    invoke-virtual {v0}, Lkvo;->b()Lkuq;

    move-result-object v2

    invoke-virtual {v2, p1}, Lkuq;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 304
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 309
    new-instance v2, Lkva;

    invoke-direct {v2}, Lkva;-><init>()V

    .line 310
    sget-object v0, Lmhv;->INSTANCE:Lmhv;

    invoke-virtual {v0}, Lmhv;->getCoverageId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lkva;->b(Ljava/lang/Long;)V

    .line 312
    const-string v0, "Seguros_Sinistro_Acionar_DataOcorrencia"

    sget-object v1, Lmhv;->INSTANCE:Lmhv;

    invoke-virtual {v1}, Lmhv;->getAllRequest()Lkva;

    move-result-object v1

    invoke-virtual {v1}, Lkva;->j()Ljava/util/Date;

    move-result-object v1

    const-string v3, "ddMMyyyy"

    invoke-static {v1, v3}, Lmhj;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    sget-object v0, Lmhv;->INSTANCE:Lmhv;

    invoke-virtual {v0}, Lmhv;->getAllRequest()Lkva;

    move-result-object v0

    invoke-virtual {v0}, Lkva;->k()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 315
    const-string v0, "Seguros_Sinistro_Acionar_ValorTotalPrejuizo"

    sget-object v1, Lmhv;->INSTANCE:Lmhv;

    invoke-virtual {v1}, Lmhv;->getAllRequest()Lkva;

    move-result-object v1

    invoke-virtual {v1}, Lkva;->k()Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    :goto_0
    sget-object v0, Lmhv;->INSTANCE:Lmhv;

    invoke-virtual {v0}, Lmhv;->getAllRequest()Lkva;

    move-result-object v0

    invoke-virtual {v0}, Lkva;->d()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lmhv;->INSTANCE:Lmhv;

    invoke-virtual {v0}, Lmhv;->getAllRequest()Lkva;

    move-result-object v0

    invoke-virtual {v0}, Lkva;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 322
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    sget-object v0, Lmhv;->INSTANCE:Lmhv;

    invoke-virtual {v0}, Lmhv;->getAllRequest()Lkva;

    move-result-object v0

    invoke-virtual {v0}, Lkva;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 323
    const-string v3, "Seguros_Sinistro_Acionar_ValorDoBem"

    sget-object v0, Lmhv;->INSTANCE:Lmhv;

    invoke-virtual {v0}, Lmhv;->getAllRequest()Lkva;

    move-result-object v0

    invoke-virtual {v0}, Lkva;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkux;

    invoke-virtual {v0}, Lkux;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 317
    :cond_0
    const-string v0, "Seguros_Sinistro_Acionar_ValorTotalPrejuizo"

    sget-object v1, Lmhv;->INSTANCE:Lmhv;

    invoke-virtual {v1}, Lmhv;->getAllRequest()Lkva;

    move-result-object v1

    invoke-virtual {v1}, Lkva;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 331
    :cond_1
    iget-object v0, p0, Lmaf;->i:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    iget-object v0, v0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->D:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->LOADING:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 333
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 335
    :try_start_0
    const-string v0, "X-Application-Key"

    invoke-static {}, Lmzx;->a()Lmzx;

    move-result-object v1

    invoke-virtual {v1}, Lmzx;->c()Ljava/util/Properties;

    move-result-object v1

    const-string v4, "appKey"

    invoke-virtual {v1, v4}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 336
    const-string v0, "userId"

    const/4 v1, 0x1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 337
    const-string v0, "Content-Type"

    const-string v1, "application/json"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    :goto_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 344
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    new-instance v1, Lejm;

    invoke-direct {v1}, Lejm;-><init>()V

    invoke-virtual {v1, v2}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 348
    :goto_3
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v0

    sget-object v1, Lkwr;->SINISTER_STEP_FINISH:Lkwr;

    invoke-virtual {v1}, Lkwr;->getEndpoint()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lim;->POST:Lim;

    invoke-virtual/range {v0 .. v5}, Lgnp;->a(Ljava/lang/String;Lim;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)Lir;

    move-result-object v0

    .line 349
    new-instance v1, Lgnv;

    invoke-direct {p0}, Lmaf;->h()Lgkw;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lgnv;-><init>(Lgkw;Lir;)V

    .line 351
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 354
    :try_start_2
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lie;->a(Lir;Lih;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 360
    :cond_2
    :goto_4
    return-void

    .line 338
    :catch_0
    move-exception v0

    .line 339
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 345
    :catch_1
    move-exception v1

    .line 346
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    move-object v4, v0

    goto :goto_3

    .line 355
    :catch_2
    move-exception v0

    .line 356
    const-string v1, "ERROR_SERV"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public a(Lkvy;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 233
    invoke-virtual {p1}, Lkvy;->b()Lkuq;

    move-result-object v1

    sget-object v2, Lkuq;->COVERAGE:Lkuq;

    if-ne v1, v2, :cond_3

    .line 234
    iget-object v1, p0, Lmaf;->i:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->a()Lmgs;

    move-result-object v1

    invoke-virtual {v1}, Lmgs;->a()V

    .line 235
    iget-object v1, p0, Lmaf;->g:Ljava/util/List;

    if-eqz v1, :cond_2

    move v1, v0

    .line 236
    :goto_0
    iget-object v0, p0, Lmaf;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 237
    iget-object v0, p0, Lmaf;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvy;

    .line 238
    invoke-virtual {v0}, Lkvy;->b()Lkuq;

    move-result-object v2

    sget-object v3, Lkuq;->EMAIL_PHONE:Lkuq;

    if-ne v2, v3, :cond_0

    .line 239
    iget-object v2, p0, Lmaf;->i:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    invoke-virtual {v2}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->a()Lmgs;

    move-result-object v2

    invoke-virtual {v0}, Lkvy;->b()Lkuq;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmgs;->a(Lkuq;)V

    .line 240
    iget-object v2, p0, Lmaf;->i:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    invoke-virtual {v2}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->a()Lmgs;

    move-result-object v2

    invoke-virtual {v0}, Lkvy;->b()Lkuq;

    move-result-object v3

    invoke-virtual {v0}, Lkvy;->a()Lkva;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lmgs;->a(Lkuq;Lkva;)V

    .line 236
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 243
    :cond_1
    iget-object v0, p0, Lmaf;->i:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->u()V

    .line 244
    iget-object v0, p0, Lmaf;->i:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->s()V

    .line 269
    :cond_2
    :goto_1
    return-void

    .line 247
    :cond_3
    invoke-virtual {p1}, Lkvy;->b()Lkuq;

    move-result-object v1

    invoke-direct {p0, v1}, Lmaf;->b(Lkuq;)V

    .line 248
    sget-object v1, Lmhv;->INSTANCE:Lmhv;

    invoke-virtual {p1}, Lkvy;->b()Lkuq;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmhv;->getResponse(Lkuq;)Lkvb;

    move-result-object v1

    .line 249
    if-eqz v1, :cond_2

    .line 250
    invoke-virtual {v1}, Lkvb;->o()Lkuq;

    move-result-object v2

    invoke-virtual {p0, v2}, Lmaf;->a(Lkuq;)Lkvo;

    move-result-object v2

    .line 251
    if-eqz v2, :cond_2

    .line 252
    iget-object v3, p0, Lmaf;->i:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    invoke-virtual {v3}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->r()Z

    .line 253
    invoke-direct {p0}, Lmaf;->g()V

    .line 254
    iget-object v3, p0, Lmaf;->i:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    iget-object v4, p0, Lmaf;->h:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->a(Ljava/util/List;)V

    .line 255
    iget-object v3, p0, Lmaf;->i:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    invoke-virtual {v2}, Lkvo;->a()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->a(I)V

    .line 256
    iget-object v2, p0, Lmaf;->i:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    invoke-virtual {v2, v6}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->f(Z)V

    .line 257
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lmag;

    invoke-direct {v3, p0}, Lmag;-><init>(Lmaf;)V

    const-wide/16 v4, 0x190

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 264
    iget-object v2, p0, Lmaf;->i:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    invoke-virtual {v2, v1, v0, v6, v6}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->a(Lkvb;ZZZ)V

    goto :goto_1
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 367
    return-void
.end method

.method public c()Lkvy;
    .locals 4

    .prologue
    .line 401
    iget-object v0, p0, Lmaf;->i:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;->t()Lkuy;

    move-result-object v1

    .line 402
    if-eqz v1, :cond_0

    .line 403
    new-instance v0, Lkvy;

    invoke-direct {v0}, Lkvy;-><init>()V

    .line 404
    sget-object v2, Lkuq;->COVERAGE:Lkuq;

    invoke-virtual {v0, v2}, Lkvy;->a(Lkuq;)V

    .line 405
    invoke-virtual {v1}, Lkuy;->b()I

    move-result v2

    invoke-virtual {v0, v2}, Lkvy;->a(I)V

    .line 406
    invoke-virtual {p0}, Lmaf;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090302

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkvy;->a(Ljava/lang/String;)V

    .line 407
    invoke-virtual {v1}, Lkuy;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkvy;->b(Ljava/lang/String;)V

    .line 410
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 3

    .prologue
    .line 414
    iget-object v0, p0, Lmaf;->h:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 415
    iget-object v0, p0, Lmaf;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvo;

    .line 416
    invoke-virtual {v0}, Lkvo;->b()Lkuq;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lkvo;->b()Lkuq;

    move-result-object v0

    sget-object v2, Lkuq;->EQUIPMENT_LIST:Lkuq;

    if-ne v0, v2, :cond_0

    .line 417
    const/4 v0, 0x0

    .line 421
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 107
    instance-of v0, p1, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    if-eqz v0, :cond_0

    .line 108
    check-cast p1, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    iput-object p1, p0, Lmaf;->i:Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    .line 110
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 114
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 116
    invoke-virtual {p0}, Lmaf;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmaf;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "edit_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    new-instance v0, Lejm;

    invoke-direct {v0}, Lejm;-><init>()V

    invoke-virtual {p0}, Lmaf;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "edit_key"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lmaf;->j:Z

    .line 120
    :cond_0
    invoke-virtual {p0}, Lmaf;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lmaf;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "UPDATE_STEP_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    new-instance v0, Lejm;

    invoke-direct {v0}, Lejm;-><init>()V

    invoke-virtual {p0}, Lmaf;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "UPDATE_STEP_KEY"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lmaf;->k:Z

    .line 125
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 130
    const v0, 0x7f040201

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 131
    invoke-direct {p0, v0}, Lmaf;->a(Landroid/view/View;)V

    .line 132
    invoke-direct {p0}, Lmaf;->e()V

    .line 133
    return-object v0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 164
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 165
    return-void
.end method
