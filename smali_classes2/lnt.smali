.class public Llnt;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "OFFERS_IS"

.field public static final b:Ljava/lang/String; = "quotations"

.field public static final c:Ljava/lang/String; = "family-id"


# instance fields
.field private d:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

.field private e:Lcom/santander/app/seguros/ui/widgets/Plan1OffersView;

.field private f:Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;

.field private g:Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;

.field private h:Landroid/widget/FrameLayout;

.field private i:Landroid/widget/LinearLayout;

.field private j:Landroid/widget/Button;

.field private k:Landroid/view/View;

.field private l:Landroid/view/View;

.field private m:Lkry;

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lksb;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/lang/String;

.field private p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lkye;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Llnt;->p:Ljava/util/Map;

    .line 83
    new-instance v0, Lkyf;

    invoke-direct {v0}, Lkyf;-><init>()V

    iput-object v0, p0, Llnt;->q:Lkye;

    return-void
.end method

.method static synthetic a(Llnt;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Llnt;->o:Ljava/lang/String;

    return-object v0
.end method

.method private a(Lkqn;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkqn;",
            ")",
            "Ljava/util/List",
            "<",
            "Lkrl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 262
    const/4 v1, 0x0

    .line 263
    new-instance v2, Ljava/util/ArrayList;

    new-instance v0, Lejm;

    invoke-direct {v0}, Lejm;-><init>()V

    iget-object v3, p0, Llnt;->d:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    const-string v4, "jsons/contract/textAssistance.json"

    invoke-static {v3, v4}, Lmhj;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-class v4, [Lksb;

    invoke-virtual {v0, v3, v4}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Llnt;->n:Ljava/util/List;

    .line 265
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Llnt;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 266
    iget-object v0, p0, Llnt;->n:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lksb;

    invoke-virtual {v0}, Lksb;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkqn;->valueOf(Ljava/lang/String;)Lkqn;

    move-result-object v0

    .line 268
    if-ne v0, p1, :cond_1

    .line 269
    iget-object v0, p0, Llnt;->n:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lksb;

    invoke-virtual {v0}, Lksb;->b()Ljava/util/List;

    move-result-object v0

    .line 265
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    .line 272
    :cond_0
    return-object v1

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method private a(Lkqn;Ljava/util/List;)Lkqp;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkqn;",
            "Ljava/util/List",
            "<",
            "Lkqp;",
            ">;)",
            "Lkqp;"
        }
    .end annotation

    .prologue
    .line 249
    const/4 v1, 0x0

    .line 251
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 252
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkqp;

    invoke-virtual {v0}, Lkqp;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkqn;->valueOf(Ljava/lang/String;)Lkqn;

    move-result-object v0

    .line 254
    if-ne v0, p1, :cond_1

    .line 255
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkqp;

    .line 251
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    .line 258
    :cond_0
    return-object v1

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public static a(Lkry;Ljava/lang/String;)Llnt;
    .locals 3

    .prologue
    .line 87
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 88
    const-string v1, "quotations"

    new-instance v2, Lejm;

    invoke-direct {v2}, Lejm;-><init>()V

    invoke-virtual {v2, p0}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v1, "family-id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    new-instance v1, Llnt;

    invoke-direct {v1}, Llnt;-><init>()V

    .line 91
    invoke-virtual {v1, v0}, Llnt;->setArguments(Landroid/os/Bundle;)V

    .line 92
    return-object v1
.end method

.method private a()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 298
    iget-object v0, p0, Llnt;->m:Lkry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llnt;->m:Lkry;

    invoke-virtual {v0}, Lkry;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llnt;->m:Lkry;

    invoke-virtual {v0}, Lkry;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 299
    iget-object v0, p0, Llnt;->o:Ljava/lang/String;

    invoke-static {v0}, Lmgt;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 300
    iget-object v0, p0, Llnt;->m:Lkry;

    invoke-virtual {v0}, Lkry;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 301
    const-string v0, "Seguros_Contratacao_Vida_Proposta_Escolha_Plano"

    const-string v1, "PlanoIdeal1"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v0, "Seguros_Contratacao_Vida_Proposta_Plano_Acao"

    const-string v1, "PlanoIdeal1"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    iget-object v0, p0, Llnt;->f:Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->b()Lmch;

    move-result-object v0

    sget-object v1, Lmch;->PLAN1:Lmch;

    if-ne v0, v1, :cond_2

    .line 305
    const-string v0, "Seguros_Contratacao_Vida_Proposta_Escolha_Plano"

    const-string v1, "PlanoIdeal1"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string v0, "Seguros_Contratacao_Vida_Proposta_Plano_Acao"

    const-string v1, "PlanoIdeal1"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 307
    :cond_2
    iget-object v0, p0, Llnt;->f:Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->b()Lmch;

    move-result-object v0

    sget-object v1, Lmch;->PLAN2:Lmch;

    if-ne v0, v1, :cond_0

    .line 308
    const-string v0, "Seguros_Contratacao_Vida_Proposta_Escolha_Plano"

    const-string v1, "PlanoIdeal2"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const-string v0, "Seguros_Contratacao_Vida_Proposta_Plano_Acao"

    const-string v1, "PlanoIdeal2"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 312
    :cond_3
    iget-object v0, p0, Llnt;->o:Ljava/lang/String;

    invoke-static {v0}, Lmgt;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Llnt;->m:Lkry;

    invoke-virtual {v0}, Lkry;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 314
    const-string v0, "Seguros_Contratacao_AP_Proposta_Escolha_Plano"

    const-string v1, "PlanoIdeal1"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const-string v0, "Seguros_Contratacao_AP_Proposta_Plano_Acao"

    const-string v1, "PlanoIdeal1"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 317
    :cond_4
    iget-object v0, p0, Llnt;->f:Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->b()Lmch;

    move-result-object v0

    sget-object v1, Lmch;->PLAN1:Lmch;

    if-ne v0, v1, :cond_5

    .line 318
    const-string v0, "Seguros_Contratacao_AP_Proposta_Escolha_Plano"

    const-string v1, "PlanoIdeal1"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string v0, "Seguros_Contratacao_AP_Proposta_Plano_Acao"

    const-string v1, "PlanoIdeal1"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 320
    :cond_5
    iget-object v0, p0, Llnt;->f:Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->b()Lmch;

    move-result-object v0

    sget-object v1, Lmch;->PLAN2:Lmch;

    if-ne v0, v1, :cond_0

    .line 321
    const-string v0, "Seguros_Contratacao_AP_Proposta_Escolha_Plano"

    const-string v1, "PlanoIdeal2"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const-string v0, "Seguros_Contratacao_AP_Proposta_Plano_Acao"

    const-string v1, "PlanoIdeal2"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private a(I)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 163
    new-instance v1, Ljava/util/ArrayList;

    new-instance v0, Lejm;

    invoke-direct {v0}, Lejm;-><init>()V

    iget-object v2, p0, Llnt;->d:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    const-string v3, "jsons/contract/coveragesAndAssistances.json"

    invoke-static {v2, v3}, Lmhj;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, [Lkqp;

    invoke-virtual {v0, v2, v3}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 166
    if-ne p1, v6, :cond_0

    .line 167
    invoke-direct {p0}, Llnt;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmhj;->H(Ljava/lang/String;)Lkqn;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Llnt;->a(Lkqn;Ljava/util/List;)Lkqp;

    move-result-object v1

    .line 168
    iget-object v0, p0, Llnt;->k:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 169
    iget-object v2, p0, Llnt;->e:Lcom/santander/app/seguros/ui/widgets/Plan1OffersView;

    iget-object v0, p0, Llnt;->m:Lkry;

    invoke-virtual {v0}, Lkry;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkrz;

    iget-object v3, p0, Llnt;->d:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-virtual {v2, v0, v3, v1}, Lcom/santander/app/seguros/ui/widgets/Plan1OffersView;->a(Lkrz;Landroid/content/Context;Lkqp;)V

    .line 170
    iget-object v1, p0, Llnt;->e:Lcom/santander/app/seguros/ui/widgets/Plan1OffersView;

    iget-object v0, p0, Llnt;->m:Lkry;

    invoke-virtual {v0}, Lkry;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkrz;

    invoke-virtual {v0}, Lkrz;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/santander/app/seguros/ui/widgets/Plan1OffersView;->setPrizeValue(Ljava/lang/String;)V

    .line 195
    :goto_0
    invoke-direct {p0}, Llnt;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmhj;->H(Ljava/lang/String;)Lkqn;

    move-result-object v1

    .line 196
    iget-object v0, p0, Llnt;->d:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c()Lmhz;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmhz;->a(Lkqn;)V

    .line 198
    iget-object v2, p0, Llnt;->o:Ljava/lang/String;

    iget-object v0, p0, Llnt;->p:Ljava/util/Map;

    invoke-virtual {v1}, Lkqn;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v2, p1, v0}, Llnt;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 200
    if-eqz v1, :cond_2

    .line 201
    iget-object v0, p0, Llnt;->g:Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;

    invoke-direct {p0}, Llnt;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmhj;->H(Ljava/lang/String;)Lkqn;

    move-result-object v1

    invoke-direct {p0, v1}, Llnt;->a(Lkqn;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->setInformations(Ljava/util/List;)V

    .line 206
    :goto_1
    iget-object v0, p0, Llnt;->g:Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;

    new-instance v1, Llnu;

    invoke-direct {v1, p0}, Llnu;-><init>(Llnt;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->setListener(Lmay;)V

    .line 217
    return-void

    .line 171
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 172
    iget-object v0, p0, Llnt;->f:Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;

    sget-object v2, Lmch;->PLAN1:Lmch;

    invoke-virtual {v0, v2}, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->setPlanSelected(Lmch;)V

    .line 173
    iget-object v0, p0, Llnt;->l:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Llnt;->f:Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->a()V

    .line 175
    iget-object v2, p0, Llnt;->f:Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;

    iget-object v0, p0, Llnt;->m:Lkry;

    invoke-virtual {v0}, Lkry;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkrz;

    invoke-virtual {v2, v0}, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->a(Lkrz;)V

    .line 176
    iget-object v2, p0, Llnt;->f:Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;

    iget-object v0, p0, Llnt;->m:Lkry;

    invoke-virtual {v0}, Lkry;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkrz;

    invoke-virtual {v2, v0}, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->b(Lkrz;)V

    .line 177
    invoke-direct {p0}, Llnt;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmhj;->H(Ljava/lang/String;)Lkqn;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Llnt;->a(Lkqn;Ljava/util/List;)Lkqp;

    move-result-object v4

    .line 179
    iget-object v0, p0, Llnt;->f:Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;

    iget-object v1, p0, Llnt;->m:Lkry;

    invoke-virtual {v1}, Lkry;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkrz;

    iget-object v2, p0, Llnt;->m:Lkry;

    invoke-virtual {v2}, Lkry;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkrz;

    iget-object v3, p0, Llnt;->d:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    iget-object v5, p0, Llnt;->o:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->a(Lkrz;Lkrz;Landroid/content/Context;Lkqp;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 183
    :cond_1
    iget-object v0, p0, Llnt;->f:Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;

    sget-object v2, Lmch;->PLAN1:Lmch;

    invoke-virtual {v0, v2}, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->setPlanSelected(Lmch;)V

    .line 184
    iget-object v0, p0, Llnt;->l:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Llnt;->f:Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->a()V

    .line 187
    iget-object v2, p0, Llnt;->f:Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;

    iget-object v0, p0, Llnt;->m:Lkry;

    invoke-virtual {v0}, Lkry;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkrz;

    invoke-virtual {v2, v0}, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->a(Lkrz;)V

    .line 188
    iget-object v2, p0, Llnt;->f:Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;

    iget-object v0, p0, Llnt;->m:Lkry;

    invoke-virtual {v0}, Lkry;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkrz;

    invoke-virtual {v2, v0}, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->b(Lkrz;)V

    .line 189
    invoke-direct {p0}, Llnt;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmhj;->H(Ljava/lang/String;)Lkqn;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Llnt;->a(Lkqn;Ljava/util/List;)Lkqp;

    move-result-object v4

    .line 191
    iget-object v0, p0, Llnt;->f:Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;

    iget-object v1, p0, Llnt;->m:Lkry;

    invoke-virtual {v1}, Lkry;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkrz;

    iget-object v2, p0, Llnt;->m:Lkry;

    invoke-virtual {v2}, Lkry;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkrz;

    iget-object v3, p0, Llnt;->d:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    iget-object v5, p0, Llnt;->o:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->a(Lkrz;Lkrz;Landroid/content/Context;Lkqp;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 203
    :cond_2
    iget-object v0, p0, Llnt;->g:Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;

    sget-object v1, Lkqn;->DEFAULT:Lkqn;

    invoke-direct {p0, v1}, Llnt;->a(Lkqn;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->setInformations(Ljava/util/List;)V

    goto/16 :goto_1
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 277
    iget-object v0, p0, Llnt;->d:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->b()Landroid/support/v4/widget/NestedScrollView;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/support/v4/widget/NestedScrollView;->scrollTo(II)V

    .line 280
    const v0, 0x7f100fd4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;

    iput-object v0, p0, Llnt;->f:Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;

    .line 281
    const v0, 0x7f100fd3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/Plan1OffersView;

    iput-object v0, p0, Llnt;->e:Lcom/santander/app/seguros/ui/widgets/Plan1OffersView;

    .line 283
    const v0, 0x7f100942

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Llnt;->h:Landroid/widget/FrameLayout;

    .line 284
    const v0, 0x7f100944

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Llnt;->i:Landroid/widget/LinearLayout;

    .line 286
    const v0, 0x7f1002d5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Llnt;->j:Landroid/widget/Button;

    .line 288
    const v0, 0x7f10093e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Llnt;->k:Landroid/view/View;

    .line 289
    const v0, 0x7f10093f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Llnt;->l:Landroid/view/View;

    .line 291
    const v0, 0x7f100940

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;

    iput-object v0, p0, Llnt;->g:Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;

    .line 293
    invoke-direct {p0}, Llnt;->b()V

    .line 295
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 472
    iget-object v0, p0, Llnt;->d:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->a(Z)V

    .line 473
    iget-object v0, p0, Llnt;->q:Lkye;

    new-instance v1, Llob;

    invoke-direct {v1, p0}, Llob;-><init>(Llnt;)V

    iget-object v2, p0, Llnt;->d:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    .line 483
    invoke-virtual {v2}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->g()Lkxl;

    move-result-object v2

    .line 473
    invoke-interface {v0, p1, v1, v2}, Lkye;->a(Ljava/lang/String;Lkxl;Lkxl;)V

    .line 484
    return-void
.end method

.method private a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 6

    .prologue
    const v5, 0x7f09083e

    const v4, 0x7f090479

    const v3, 0x7f0203ca

    const v2, 0x7f020441

    .line 221
    invoke-static {p1}, Lmgt;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 222
    if-eqz p3, :cond_1

    .line 228
    :cond_0
    :goto_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_5

    .line 229
    invoke-static {p1}, Lmgt;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 230
    iget-object v0, p0, Llnt;->e:Lcom/santander/app/seguros/ui/widgets/Plan1OffersView;

    invoke-virtual {p0}, Llnt;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Llnt;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p3, v2}, Lcom/santander/app/seguros/ui/widgets/Plan1OffersView;->setCardViewPlanOffer(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :goto_1
    return-void

    .line 223
    :cond_1
    invoke-virtual {p0}, Llnt;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090714

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 225
    :cond_2
    if-nez p3, :cond_0

    .line 226
    invoke-virtual {p0}, Llnt;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09083d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 231
    :cond_3
    invoke-static {p1}, Lmgt;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 232
    iget-object v0, p0, Llnt;->e:Lcom/santander/app/seguros/ui/widgets/Plan1OffersView;

    invoke-virtual {p0}, Llnt;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Llnt;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p3, v2}, Lcom/santander/app/seguros/ui/widgets/Plan1OffersView;->setCardViewPlanOffer(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 234
    :cond_4
    iget-object v0, p0, Llnt;->e:Lcom/santander/app/seguros/ui/widgets/Plan1OffersView;

    invoke-virtual {p0}, Llnt;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const-string v2, ""

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/santander/app/seguros/ui/widgets/Plan1OffersView;->setCardViewPlanOffer(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 237
    :cond_5
    invoke-static {p1}, Lmgt;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 238
    iget-object v0, p0, Llnt;->f:Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;

    invoke-virtual {p0}, Llnt;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Llnt;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p3, v2}, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->setCardViewPlanOffer(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 239
    :cond_6
    invoke-static {p1}, Lmgt;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 240
    iget-object v0, p0, Llnt;->f:Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;

    invoke-virtual {p0}, Llnt;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Llnt;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p3, v2}, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->setCardViewPlanOffer(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 242
    :cond_7
    iget-object v0, p0, Llnt;->f:Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;

    invoke-virtual {p0}, Llnt;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const-string v2, ""

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->setCardViewPlanOffer(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkrn;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 488
    move v2, v3

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    move v4, v3

    .line 489
    :goto_1
    iget-object v0, p0, Llnt;->m:Lkry;

    invoke-virtual {v0}, Lkry;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_1

    .line 490
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkrn;

    invoke-virtual {v0}, Lkrn;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x30

    const/16 v5, 0xf

    invoke-static {v0, v1, v5}, Lmhj;->a(Ljava/lang/String;CI)Ljava/lang/String;

    move-result-object v1

    .line 493
    iget-object v0, p0, Llnt;->m:Lkry;

    invoke-virtual {v0}, Lkry;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkrz;

    invoke-virtual {v0}, Lkrz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Llnt;->m:Lkry;

    invoke-virtual {v0}, Lkry;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkrz;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkrn;

    invoke-virtual {v1}, Lkrn;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkrz;->e(Ljava/lang/String;)V

    .line 489
    :cond_0
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 488
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 500
    :cond_2
    return-void
.end method

.method static synthetic a(Llnt;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1}, Llnt;->a(Ljava/util/List;)V

    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Llnt;->f:Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;

    new-instance v1, Llnv;

    invoke-direct {v1, p0}, Llnv;-><init>(Llnt;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->setListener(Lmcg;)V

    .line 338
    iget-object v0, p0, Llnt;->j:Landroid/widget/Button;

    new-instance v1, Llnw;

    invoke-direct {v1, p0}, Llnw;-><init>(Llnt;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 372
    iget-object v0, p0, Llnt;->h:Landroid/widget/FrameLayout;

    new-instance v1, Llnz;

    invoke-direct {v1, p0}, Llnz;-><init>(Llnt;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 389
    iget-object v0, p0, Llnt;->i:Landroid/widget/LinearLayout;

    new-instance v1, Lloa;

    invoke-direct {v1, p0}, Lloa;-><init>(Llnt;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 424
    return-void
.end method

.method static synthetic b(Llnt;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Llnt;->a()V

    return-void
.end method

.method private c()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 427
    iget-object v0, p0, Llnt;->m:Lkry;

    invoke-virtual {v0}, Lkry;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 429
    new-instance v1, Lktl;

    iget-object v0, p0, Llnt;->m:Lkry;

    invoke-virtual {v0}, Lkry;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkrz;

    invoke-virtual {v0}, Lkrz;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Llnt;->m:Lkry;

    invoke-virtual {v0}, Lkry;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkrz;

    invoke-virtual {v0}, Lkrz;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lktl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    iget-object v0, p0, Llnt;->d:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c()Lmhz;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmhz;->c(Lktl;)V

    .line 440
    :goto_0
    return-void

    .line 432
    :cond_0
    iget-object v0, p0, Llnt;->f:Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->b()Lmch;

    move-result-object v0

    sget-object v1, Lmch;->PLAN1:Lmch;

    if-ne v0, v1, :cond_1

    .line 433
    new-instance v1, Lktl;

    iget-object v0, p0, Llnt;->m:Lkry;

    invoke-virtual {v0}, Lkry;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkrz;

    invoke-virtual {v0}, Lkrz;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Llnt;->m:Lkry;

    invoke-virtual {v0}, Lkry;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkrz;

    invoke-virtual {v0}, Lkrz;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lktl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iget-object v0, p0, Llnt;->d:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c()Lmhz;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmhz;->c(Lktl;)V

    goto :goto_0

    .line 436
    :cond_1
    new-instance v1, Lktl;

    iget-object v0, p0, Llnt;->m:Lkry;

    invoke-virtual {v0}, Lkry;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkrz;

    invoke-virtual {v0}, Lkrz;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Llnt;->m:Lkry;

    invoke-virtual {v0}, Lkry;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkrz;

    invoke-virtual {v0}, Lkrz;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lktl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    iget-object v0, p0, Llnt;->d:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c()Lmhz;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmhz;->c(Lktl;)V

    goto :goto_0
.end method

.method static synthetic c(Llnt;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Llnt;->d()V

    return-void
.end method

.method private d()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 443
    iget-object v0, p0, Llnt;->m:Lkry;

    invoke-virtual {v0}, Lkry;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 444
    iget-object v0, p0, Llnt;->d:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c()Lmhz;

    move-result-object v1

    iget-object v0, p0, Llnt;->m:Lkry;

    invoke-virtual {v0}, Lkry;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkrz;

    invoke-virtual {v1, v0}, Lmhz;->a(Lkrz;)V

    .line 452
    :cond_0
    :goto_0
    return-void

    .line 446
    :cond_1
    iget-object v0, p0, Llnt;->f:Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->b()Lmch;

    move-result-object v0

    sget-object v1, Lmch;->PLAN1:Lmch;

    if-ne v0, v1, :cond_2

    .line 447
    iget-object v0, p0, Llnt;->d:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c()Lmhz;

    move-result-object v1

    iget-object v0, p0, Llnt;->m:Lkry;

    invoke-virtual {v0}, Lkry;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkrz;

    invoke-virtual {v1, v0}, Lmhz;->a(Lkrz;)V

    goto :goto_0

    .line 448
    :cond_2
    iget-object v0, p0, Llnt;->f:Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->b()Lmch;

    move-result-object v0

    sget-object v1, Lmch;->PLAN2:Lmch;

    if-ne v0, v1, :cond_0

    .line 449
    iget-object v0, p0, Llnt;->d:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c()Lmhz;

    move-result-object v1

    iget-object v0, p0, Llnt;->m:Lkry;

    invoke-virtual {v0}, Lkry;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkrz;

    invoke-virtual {v1, v0}, Lmhz;->a(Lkrz;)V

    goto :goto_0
.end method

.method static synthetic d(Llnt;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Llnt;->c()V

    return-void
.end method

.method static synthetic e(Llnt;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Llnt;->d:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    return-object v0
.end method

.method private e()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 455
    const/4 v0, 0x0

    .line 457
    iget-object v1, p0, Llnt;->m:Lkry;

    if-eqz v1, :cond_0

    .line 458
    iget-object v0, p0, Llnt;->m:Lkry;

    invoke-virtual {v0}, Lkry;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 459
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Llnt;->m:Lkry;

    invoke-virtual {v0}, Lkry;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkrz;

    invoke-virtual {v0}, Lkrz;->a()Lkrq;

    move-result-object v0

    invoke-virtual {v0}, Lkrq;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Llnt;->m:Lkry;

    invoke-virtual {v0}, Lkry;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkrz;

    invoke-virtual {v0}, Lkrz;->a()Lkrq;

    move-result-object v0

    invoke-virtual {v0}, Lkrq;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 464
    :cond_0
    :goto_0
    return-object v0

    .line 461
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Llnt;->f:Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->e()Lkrz;

    move-result-object v1

    invoke-virtual {v1}, Lkrz;->a()Lkrq;

    move-result-object v1

    invoke-virtual {v1}, Lkrq;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llnt;->f:Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;->e()Lkrz;

    move-result-object v1

    invoke-virtual {v1}, Lkrz;->a()Lkrq;

    move-result-object v1

    invoke-virtual {v1}, Lkrq;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic f(Llnt;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Llnt;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Llnt;)Lkry;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Llnt;->m:Lkry;

    return-object v0
.end method

.method static synthetic h(Llnt;)Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Llnt;->f:Lcom/santander/app/seguros/ui/widgets/Plan2OffersView;

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 99
    instance-of v0, p1, Landroid/support/v7/app/AppCompatActivity;

    if-eqz v0, :cond_0

    .line 100
    check-cast p1, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    iput-object p1, p0, Llnt;->d:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    .line 102
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
    .line 106
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 108
    iget-object v0, p0, Llnt;->d:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Llnt;->d:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    sget-object v1, Lmfn;->WAVE_GREEN_ONE:Lmfn;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->a(Lmfn;Z)V

    .line 112
    :cond_0
    invoke-virtual {p0}, Llnt;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Llnt;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "quotations"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    new-instance v0, Lejm;

    invoke-direct {v0}, Lejm;-><init>()V

    invoke-virtual {p0}, Llnt;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "quotations"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lkry;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkry;

    iput-object v0, p0, Llnt;->m:Lkry;

    .line 118
    :goto_0
    invoke-virtual {p0}, Llnt;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Llnt;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "family-id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    invoke-virtual {p0}, Llnt;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "family-id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llnt;->o:Ljava/lang/String;

    .line 123
    :cond_1
    iget-object v0, p0, Llnt;->p:Ljava/util/Map;

    const-string v1, "571740"

    const-string v2, "Prote\u00e7\u00e3o Vida Select"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Llnt;->p:Ljava/util/Map;

    const-string v1, "571676"

    const-string v2, "Prote\u00e7\u00e3o Vida Van Gogh"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v0, p0, Llnt;->p:Ljava/util/Map;

    const-string v1, "571814"

    const-string v2, "Prote\u00e7\u00e3o Vida Homem"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Llnt;->p:Ljava/util/Map;

    const-string v1, "571815"

    const-string v2, "Prote\u00e7\u00e3o Vida Mulher"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v0, p0, Llnt;->p:Ljava/util/Map;

    const-string v1, "571813"

    const-string v2, "Prote\u00e7\u00e3o AP Sob Medida"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Llnt;->d:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c()Lmhz;

    move-result-object v0

    iget-object v1, p0, Llnt;->p:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lmhz;->b(Ljava/util/Map;)V

    .line 130
    sget-object v0, Lksq;->INSTANCE:Lksq;

    iget-object v1, p0, Llnt;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lksq;->setFamilyId(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Llnt;->o:Ljava/lang/String;

    invoke-direct {p0, v0}, Llnt;->a(Ljava/lang/String;)V

    .line 133
    return-void

    .line 115
    :cond_2
    new-instance v0, Lkry;

    invoke-direct {v0}, Lkry;-><init>()V

    iput-object v0, p0, Llnt;->m:Lkry;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
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
    .line 138
    const v0, 0x7f0401e2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 139
    iget-object v1, p0, Llnt;->o:Ljava/lang/String;

    invoke-static {v1}, Lmgt;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    const-string v1, "Seguros_Contratacao_Vida_Acao"

    const-string v2, "TelaContratacaoVida"

    invoke-static {v1, v2}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Llnt;->a(Landroid/view/View;)V

    .line 156
    iget-object v1, p0, Llnt;->m:Lkry;

    invoke-virtual {v1}, Lkry;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p0, v1}, Llnt;->a(I)V

    .line 158
    return-object v0

    .line 142
    :cond_1
    iget-object v1, p0, Llnt;->o:Ljava/lang/String;

    invoke-static {v1}, Lmgt;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    const-string v1, "Seguros_Contratacao_AP_Acao"

    const-string v2, "TelaContratacaoAP"

    invoke-static {v1, v2}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
