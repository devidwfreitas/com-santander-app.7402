.class public Lloi;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Llns;


# static fields
.field public static final a:Ljava/lang/String; = "quotation-selected"

.field public static final b:Ljava/lang/String; = "family-id-key"

.field public static final c:Ljava/lang/String; = "order-number-key"


# instance fields
.field private A:Lkri;

.field private B:Lkqs;

.field private C:Lkrs;

.field private D:Lkrn;

.field private E:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkrz;",
            ">;"
        }
    .end annotation
.end field

.field private F:Ljava/util/Map;
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

.field private d:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

.field private e:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/FrameLayout;

.field private i:Landroid/widget/RelativeLayout;

.field private j:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

.field private k:Landroid/widget/Button;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/ImageView;

.field private o:Llnp;

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkrn;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkrn;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;

.field private s:Lkrw;

.field private t:Lkye;

.field private u:Lkrz;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lksb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 106
    new-instance v0, Lkqs;

    invoke-direct {v0}, Lkqs;-><init>()V

    iput-object v0, p0, Lloi;->B:Lkqs;

    .line 108
    new-instance v0, Lkrs;

    invoke-direct {v0}, Lkrs;-><init>()V

    iput-object v0, p0, Lloi;->C:Lkrs;

    .line 109
    new-instance v0, Lkrn;

    invoke-direct {v0}, Lkrn;-><init>()V

    iput-object v0, p0, Lloi;->D:Lkrn;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lloi;->E:Ljava/util/List;

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lloi;->F:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lloi;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lloi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

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
    .line 391
    const/4 v1, 0x0

    .line 392
    new-instance v2, Ljava/util/ArrayList;

    new-instance v0, Lejm;

    invoke-direct {v0}, Lejm;-><init>()V

    iget-object v3, p0, Lloi;->d:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

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

    iput-object v2, p0, Lloi;->z:Ljava/util/List;

    .line 394
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lloi;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 395
    iget-object v0, p0, Lloi;->z:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lksb;

    invoke-virtual {v0}, Lksb;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkqn;->valueOf(Ljava/lang/String;)Lkqn;

    move-result-object v0

    .line 397
    if-ne v0, p1, :cond_1

    .line 398
    iget-object v0, p0, Lloi;->z:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lksb;

    invoke-virtual {v0}, Lksb;->b()Ljava/util/List;

    move-result-object v0

    .line 394
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    .line 401
    :cond_0
    return-object v1

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method private a(Llot;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llot;",
            ")",
            "Ljava/util/List",
            "<",
            "Lkrn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 251
    sget-object v0, Llot;->PLUS:Llot;

    if-ne p1, v0, :cond_0

    .line 252
    iget-object v0, p0, Lloi;->p:Ljava/util/List;

    .line 254
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lloi;->q:Ljava/util/List;

    goto :goto_0
.end method

.method static synthetic a(Lloi;)Lkri;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lloi;->A:Lkri;

    return-object v0
.end method

.method static synthetic a(Lloi;Lkri;)Lkri;
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lloi;->A:Lkri;

    return-object p1
.end method

.method public static a(Lkrz;Ljava/lang/String;Ljava/lang/String;)Lloi;
    .locals 3

    .prologue
    .line 120
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 121
    const-string v1, "quotation-selected"

    new-instance v2, Lejm;

    invoke-direct {v2}, Lejm;-><init>()V

    invoke-virtual {v2, p0}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v1, "family-id-key"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v1, "order-number-key"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    new-instance v1, Lloi;

    invoke-direct {v1}, Lloi;-><init>()V

    .line 125
    invoke-virtual {v1, v0}, Lloi;->setArguments(Landroid/os/Bundle;)V

    .line 126
    return-object v1
.end method

.method private a()V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lloi;->g:Landroid/widget/ImageView;

    new-instance v1, Lloo;

    invoke-direct {v1, p0}, Lloo;-><init>(Lloi;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    iget-object v0, p0, Lloi;->f:Landroid/widget/ImageView;

    new-instance v1, Llop;

    invoke-direct {v1, p0}, Llop;-><init>(Lloi;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 343
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 438
    iget-object v0, p0, Lloi;->d:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->b()Landroid/support/v4/widget/NestedScrollView;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/support/v4/widget/NestedScrollView;->scrollTo(II)V

    .line 440
    const v0, 0x7f10094c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    iput-object v0, p0, Lloi;->e:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    .line 441
    const v0, 0x7f10094e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    iput-object v0, p0, Lloi;->j:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    .line 443
    const v0, 0x7f100942

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lloi;->h:Landroid/widget/FrameLayout;

    .line 444
    const v0, 0x7f10094a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lloi;->f:Landroid/widget/ImageView;

    .line 445
    const v0, 0x7f10094b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lloi;->g:Landroid/widget/ImageView;

    .line 447
    const v0, 0x7f100941

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lloi;->i:Landroid/widget/RelativeLayout;

    .line 449
    const v0, 0x7f100948

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lloi;->l:Landroid/widget/TextView;

    .line 450
    const v0, 0x7f100949

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lloi;->m:Landroid/widget/TextView;

    .line 451
    const v0, 0x7f100947

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lloi;->n:Landroid/widget/ImageView;

    .line 454
    const v0, 0x7f1002d5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lloi;->k:Landroid/widget/Button;

    .line 456
    iget-object v0, p0, Lloi;->h:Landroid/widget/FrameLayout;

    new-instance v1, Llos;

    invoke-direct {v1, p0}, Llos;-><init>(Lloi;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 473
    const v0, 0x7f100940

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;

    iput-object v0, p0, Lloi;->r:Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;

    .line 475
    invoke-direct {p0}, Lloi;->a()V

    .line 476
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 177
    sget-object v0, Lksq;->INSTANCE:Lksq;

    invoke-virtual {v0}, Lksq;->getIdealProductResponse()Lkri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 179
    sget-object v0, Lksq;->INSTANCE:Lksq;

    invoke-virtual {v0}, Lksq;->getIdealProductResponse()Lkri;

    move-result-object v0

    iput-object v0, p0, Lloi;->A:Lkri;

    .line 182
    iget-object v0, p0, Lloi;->d:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c()Lmhz;

    move-result-object v0

    iget-object v1, p0, Lloi;->A:Lkri;

    invoke-virtual {v1}, Lkri;->e()Lkrr;

    move-result-object v1

    invoke-virtual {v1}, Lkrr;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmhz;->c(Ljava/lang/String;)V

    .line 184
    sget-object v0, Lksq;->INSTANCE:Lksq;

    iget-object v1, p0, Lloi;->A:Lkri;

    invoke-virtual {v0, v1}, Lksq;->setIdealProductResponse(Lkri;)V

    .line 185
    iget-object v0, p0, Lloi;->A:Lkri;

    iget-object v1, p0, Lloi;->v:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lloi;->a(Lkri;Ljava/lang/String;)V

    .line 206
    :goto_0
    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lloi;->d:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->a(Z)V

    .line 190
    iget-object v0, p0, Lloi;->t:Lkye;

    new-instance v1, Lloj;

    invoke-direct {v1, p0}, Lloj;-><init>(Lloi;)V

    iget-object v2, p0, Lloi;->d:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    .line 204
    invoke-virtual {v2}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->f()Lkxl;

    move-result-object v2

    .line 190
    invoke-interface {v0, p1, v1, v2}, Lkye;->a(Ljava/lang/String;Lkxl;Lkxl;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const v2, 0x7f0203ca

    .line 480
    invoke-static {p1}, Lmgt;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 481
    if-eqz p2, :cond_1

    .line 487
    :cond_0
    :goto_0
    iget-object v0, p0, Lloi;->l:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 489
    invoke-static {p1}, Lmgt;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 490
    iget-object v0, p0, Lloi;->n:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lloi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 491
    iget-object v0, p0, Lloi;->m:Landroid/widget/TextView;

    invoke-virtual {p0}, Lloi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090479

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 499
    :goto_1
    return-void

    .line 482
    :cond_1
    invoke-virtual {p0}, Lloi;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090714

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 484
    :cond_2
    if-nez p2, :cond_0

    .line 485
    invoke-virtual {p0}, Lloi;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09083d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 492
    :cond_3
    invoke-static {p1}, Lmgt;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 493
    iget-object v0, p0, Lloi;->n:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lloi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020441

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 494
    iget-object v0, p0, Lloi;->m:Landroid/widget/TextView;

    invoke-virtual {p0}, Lloi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09083e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 496
    :cond_4
    iget-object v0, p0, Lloi;->n:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lloi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 497
    iget-object v0, p0, Lloi;->m:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private a(Lkri;)V
    .locals 2

    .prologue
    .line 293
    invoke-virtual {p1}, Lkri;->d()Ljava/util/List;

    move-result-object v0

    new-instance v1, Llon;

    invoke-direct {v1, p0}, Llon;-><init>(Lloi;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 311
    return-void
.end method

.method private a(Lkri;Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 260
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 261
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 265
    invoke-direct {p0, p1}, Lloi;->a(Lkri;)V

    .line 269
    invoke-static {p2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    .line 272
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Lkri;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 274
    invoke-virtual {p1}, Lkri;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkrn;

    invoke-virtual {v0}, Lkrn;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lkri;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkrn;

    invoke-virtual {v0}, Lkrn;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 275
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lkri;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkrn;

    invoke-virtual {v0}, Lkrn;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "00"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x30

    const/16 v6, 0xf

    invoke-static {v0, v5, v6}, Lmhj;->a(Ljava/lang/String;CI)Ljava/lang/String;

    move-result-object v0

    .line 276
    invoke-static {v0}, Lmhj;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 280
    :goto_1
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    cmpg-double v5, v6, v8

    if-gez v5, :cond_2

    .line 281
    invoke-virtual {p1}, Lkri;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    :cond_0
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 278
    :cond_1
    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_1

    .line 282
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    cmpl-double v0, v6, v8

    if-lez v0, :cond_0

    .line 283
    invoke-virtual {p1}, Lkri;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 287
    :cond_3
    iput-object v2, p0, Lloi;->p:Ljava/util/List;

    .line 288
    iput-object v3, p0, Lloi;->q:Ljava/util/List;

    .line 290
    return-void
.end method

.method private a(Lkrw;)V
    .locals 3

    .prologue
    .line 407
    iget-object v0, p0, Lloi;->d:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->a(Z)V

    .line 408
    iget-object v0, p0, Lloi;->t:Lkye;

    new-instance v1, Llor;

    invoke-direct {v1, p0}, Llor;-><init>(Lloi;)V

    iget-object v2, p0, Lloi;->d:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    .line 419
    invoke-virtual {v2}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->f()Lkxl;

    move-result-object v2

    .line 408
    invoke-interface {v0, p1, v1, v2}, Lkye;->a(Lkrw;Lkxl;Lkxl;)V

    .line 421
    return-void
.end method

.method private a(Lkrz;)V
    .locals 5

    .prologue
    .line 545
    invoke-virtual {p1}, Lkrz;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmhj;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 546
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lkrz;->a()Lkrq;

    move-result-object v2

    invoke-virtual {v2}, Lkrq;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lkrz;->a()Lkrq;

    move-result-object v2

    invoke-virtual {v2}, Lkrq;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 547
    iget-object v2, p0, Lloi;->e:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "R$ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lloi;->v:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-static {v4}, Lmhj;->c(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;->setText(Ljava/lang/CharSequence;)V

    .line 548
    iget-object v2, p0, Lloi;->r:Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;

    invoke-static {v1}, Lmhj;->H(Ljava/lang/String;)Lkqn;

    move-result-object v1

    invoke-direct {p0, v1}, Lloi;->a(Lkqn;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->setInformations(Ljava/util/List;)V

    .line 549
    iget-object v1, p0, Lloi;->j:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    invoke-static {v0}, Lmhj;->c(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;->setText(Ljava/lang/CharSequence;)V

    .line 550
    sget-object v0, Lkqm;->INSTANCE:Lkqm;

    invoke-virtual {p1}, Lkrz;->f()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkqm;->setmAssistances(Ljava/util/List;)V

    .line 551
    sget-object v0, Lkqm;->INSTANCE:Lkqm;

    invoke-virtual {p1}, Lkrz;->g()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkqm;->setmCoverages(Ljava/util/List;)V

    .line 554
    iget-object v0, p0, Lloi;->d:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c()Lmhz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmhz;->a(Lkrz;)V

    .line 555
    new-instance v0, Lktl;

    invoke-virtual {p1}, Lkrz;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lkrz;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lktl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    iget-object v1, p0, Lloi;->d:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c()Lmhz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmhz;->c(Lktl;)V

    .line 557
    return-void
.end method

.method static synthetic a(Lloi;Lkri;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lloi;->a(Lkri;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lloi;Lkrz;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lloi;->a(Lkrz;)V

    return-void
.end method

.method static synthetic b(Lloi;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lloi;->d:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 424
    const-string v1, ""

    .line 425
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lloi;->A:Lkri;

    invoke-virtual {v0}, Lkri;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 426
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lloi;->A:Lkri;

    invoke-virtual {v0}, Lkri;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkrn;

    invoke-virtual {v0}, Lkrn;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "00"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x30

    const/16 v4, 0xf

    invoke-static {v0, v3, v4}, Lmhj;->a(Ljava/lang/String;CI)Ljava/lang/String;

    move-result-object v0

    .line 429
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 431
    iget-object v0, p0, Lloi;->A:Lkri;

    invoke-virtual {v0}, Lkri;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkrn;

    invoke-virtual {v0}, Lkrn;->a()Ljava/lang/String;

    move-result-object v0

    .line 425
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    .line 435
    :cond_0
    return-object v1

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method private b()V
    .locals 4

    .prologue
    .line 347
    sget-object v0, Llot;->PLUS:Llot;

    invoke-direct {p0, v0}, Lloi;->a(Llot;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 348
    sget-object v0, Llot;->PLUS:Llot;

    invoke-direct {p0, v0}, Lloi;->a(Llot;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Llnp;->a(Ljava/util/List;)Llnp;

    move-result-object v0

    iput-object v0, p0, Lloi;->o:Llnp;

    .line 349
    iget-object v0, p0, Lloi;->o:Llnp;

    invoke-virtual {v0, p0}, Llnp;->a(Llns;)V

    .line 350
    iget-object v0, p0, Lloi;->o:Llnp;

    invoke-virtual {p0}, Lloi;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog-coverage-values"

    invoke-virtual {v0, v1, v2}, Llnp;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 354
    :goto_0
    return-void

    .line 352
    :cond_0
    invoke-virtual {p0}, Lloi;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lloi;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090768

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lloi;->v:Ljava/lang/String;

    invoke-static {v2}, Lmhj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lloi;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090126

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Lkrn;)V
    .locals 8

    .prologue
    .line 574
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v0

    iget-object v1, p0, Lloi;->A:Lkri;

    invoke-virtual {v1}, Lkri;->a()Lkqg;

    move-result-object v1

    invoke-virtual {v1}, Lkqg;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 575
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v1

    iget-object v2, p0, Lloi;->A:Lkri;

    invoke-virtual {v2}, Lkri;->a()Lkqg;

    move-result-object v2

    invoke-virtual {v2}, Lkqg;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 576
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v2

    iget-object v3, p0, Lloi;->A:Lkri;

    invoke-virtual {v3}, Lkri;->a()Lkqg;

    move-result-object v3

    invoke-virtual {v3}, Lkqg;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 577
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v3

    iget-object v4, p0, Lloi;->A:Lkri;

    invoke-virtual {v4}, Lkri;->b()Lkqr;

    move-result-object v4

    invoke-virtual {v4}, Lkqr;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 578
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v4

    iget-object v5, p0, Lloi;->A:Lkri;

    invoke-virtual {v5}, Lkri;->b()Lkqr;

    move-result-object v5

    invoke-virtual {v5}, Lkqr;->g()Lkqx;

    move-result-object v5

    invoke-virtual {v5}, Lkqx;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 580
    new-instance v5, Lkqx;

    invoke-direct {v5}, Lkqx;-><init>()V

    .line 581
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v6

    invoke-virtual {v6, v4}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lkqx;->a(Ljava/lang/String;)V

    .line 582
    iget-object v4, p0, Lloi;->A:Lkri;

    invoke-virtual {v4}, Lkri;->b()Lkqr;

    move-result-object v4

    invoke-virtual {v4}, Lkqr;->g()Lkqx;

    move-result-object v4

    invoke-virtual {v4}, Lkqx;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lkqx;->b(Ljava/lang/String;)V

    .line 584
    new-instance v4, Lkqg;

    invoke-direct {v4}, Lkqg;-><init>()V

    .line 585
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v6

    const-string v7, "0033"

    invoke-virtual {v6, v7}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lkqg;->g(Ljava/lang/String;)V

    .line 586
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v6

    invoke-virtual {v6, v0}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lkqg;->d(Ljava/lang/String;)V

    .line 587
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v0

    invoke-virtual {v0, v1}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lkqg;->e(Ljava/lang/String;)V

    .line 588
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v0

    invoke-virtual {v0, v2}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lkqg;->f(Ljava/lang/String;)V

    .line 590
    iget-object v0, p0, Lloi;->B:Lkqs;

    invoke-virtual {v0, v5}, Lkqs;->a(Lkqx;)V

    .line 591
    iget-object v0, p0, Lloi;->B:Lkqs;

    iget-object v1, p0, Lloi;->A:Lkri;

    invoke-virtual {v1}, Lkri;->b()Lkqr;

    move-result-object v1

    invoke-virtual {v1}, Lkqr;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkqs;->a(Ljava/lang/String;)V

    .line 592
    iget-object v0, p0, Lloi;->B:Lkqs;

    iget-object v1, p0, Lloi;->A:Lkri;

    invoke-virtual {v1}, Lkri;->b()Lkqr;

    move-result-object v1

    invoke-virtual {v1}, Lkqr;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkqs;->b(Ljava/lang/String;)V

    .line 593
    iget-object v0, p0, Lloi;->B:Lkqs;

    iget-object v1, p0, Lloi;->A:Lkri;

    invoke-virtual {v1}, Lkri;->b()Lkqr;

    move-result-object v1

    invoke-virtual {v1}, Lkqr;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkqs;->c(Ljava/lang/String;)V

    .line 594
    iget-object v0, p0, Lloi;->B:Lkqs;

    iget-object v1, p0, Lloi;->A:Lkri;

    invoke-virtual {v1}, Lkri;->b()Lkqr;

    move-result-object v1

    invoke-virtual {v1}, Lkqr;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkqs;->d(Ljava/lang/String;)V

    .line 595
    iget-object v0, p0, Lloi;->B:Lkqs;

    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v1

    invoke-virtual {v1, v3}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkqs;->e(Ljava/lang/String;)V

    .line 597
    iget-object v0, p0, Lloi;->C:Lkrs;

    iget-object v1, p0, Lloi;->A:Lkri;

    invoke-virtual {v1}, Lkri;->e()Lkrr;

    move-result-object v1

    invoke-virtual {v1}, Lkrr;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkrs;->a(Ljava/lang/String;)V

    .line 598
    iget-object v0, p0, Lloi;->C:Lkrs;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lkrn;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "00"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x30

    const/16 v3, 0xf

    invoke-static {v1, v2, v3}, Lmhj;->a(Ljava/lang/String;CI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkrs;->c(Ljava/lang/String;)V

    .line 599
    iget-object v0, p0, Lloi;->C:Lkrs;

    iget-object v1, p0, Lloi;->A:Lkri;

    invoke-virtual {v1}, Lkri;->e()Lkrr;

    move-result-object v1

    invoke-virtual {v1}, Lkrr;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkrs;->d(Ljava/lang/String;)V

    .line 600
    iget-object v0, p0, Lloi;->C:Lkrs;

    invoke-virtual {p1}, Lkrn;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkrs;->e(Ljava/lang/String;)V

    .line 601
    iget-object v0, p0, Lloi;->C:Lkrs;

    iget-object v1, p0, Lloi;->A:Lkri;

    invoke-virtual {v1}, Lkri;->e()Lkrr;

    move-result-object v1

    invoke-virtual {v1}, Lkrr;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkrs;->b(Ljava/lang/String;)V

    .line 603
    iget-object v0, p0, Lloi;->A:Lkri;

    invoke-virtual {v0}, Lkri;->a()Lkqg;

    move-result-object v0

    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v1

    const-string v2, "0033"

    invoke-virtual {v1, v2}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkqg;->g(Ljava/lang/String;)V

    .line 605
    new-instance v0, Lkrw;

    iget-object v1, p0, Lloi;->x:Ljava/lang/String;

    iget-object v2, p0, Lloi;->B:Lkqs;

    iget-object v3, p0, Lloi;->C:Lkrs;

    invoke-direct {v0, v1, v4, v2, v3}, Lkrw;-><init>(Ljava/lang/String;Lkqg;Lkqs;Lkrs;)V

    iput-object v0, p0, Lloi;->s:Lkrw;

    .line 606
    return-void
.end method

.method static synthetic c(Lloi;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lloi;->v:Ljava/lang/String;

    return-object v0
.end method

.method private c(Ljava/lang/String;)Lkrz;
    .locals 4

    .prologue
    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x30

    const/16 v2, 0xf

    invoke-static {v0, v1, v2}, Lmhj;->a(Ljava/lang/String;CI)Ljava/lang/String;

    move-result-object v3

    .line 532
    new-instance v1, Lkrz;

    invoke-direct {v1}, Lkrz;-><init>()V

    .line 534
    iget-object v0, p0, Lloi;->E:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lloi;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 535
    const/4 v0, 0x0

    move-object v2, v1

    move v1, v0

    :goto_0
    iget-object v0, p0, Lloi;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 536
    iget-object v0, p0, Lloi;->E:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkrz;

    invoke-virtual {v0}, Lkrz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lloi;->E:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkrz;

    move-object v2, v0

    .line 535
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 541
    :cond_2
    return-object v1
.end method

.method private c()V
    .locals 4

    .prologue
    .line 358
    sget-object v0, Llot;->MINUS:Llot;

    invoke-direct {p0, v0}, Lloi;->a(Llot;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 359
    sget-object v0, Llot;->MINUS:Llot;

    invoke-direct {p0, v0}, Lloi;->a(Llot;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Llnp;->a(Ljava/util/List;)Llnp;

    move-result-object v0

    iput-object v0, p0, Lloi;->o:Llnp;

    .line 360
    iget-object v0, p0, Lloi;->o:Llnp;

    invoke-virtual {v0, p0}, Llnp;->a(Llns;)V

    .line 361
    iget-object v0, p0, Lloi;->o:Llnp;

    invoke-virtual {p0}, Lloi;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog-coverage-values"

    invoke-virtual {v0, v1, v2}, Llnp;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 365
    :goto_0
    return-void

    .line 363
    :cond_0
    invoke-virtual {p0}, Lloi;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lloi;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090767

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lloi;->v:Ljava/lang/String;

    invoke-static {v2}, Lmhj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lloi;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090126

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic d(Lloi;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lloi;->w:Ljava/lang/String;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 368
    iget-object v0, p0, Lloi;->u:Lkrz;

    invoke-virtual {v0}, Lkrz;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmhj;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 369
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lloi;->u:Lkrz;

    invoke-virtual {v2}, Lkrz;->a()Lkrq;

    move-result-object v2

    invoke-virtual {v2}, Lkrq;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lloi;->u:Lkrz;

    invoke-virtual {v2}, Lkrz;->a()Lkrq;

    move-result-object v2

    invoke-virtual {v2}, Lkrq;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lloi;->y:Ljava/lang/String;

    .line 370
    iget-object v1, p0, Lloi;->e:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    iget-object v2, p0, Lloi;->v:Ljava/lang/String;

    invoke-static {v2}, Lmhj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    iget-object v1, p0, Lloi;->r:Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;

    iget-object v2, p0, Lloi;->y:Ljava/lang/String;

    invoke-static {v2}, Lmhj;->H(Ljava/lang/String;)Lkqn;

    move-result-object v2

    invoke-direct {p0, v2}, Lloi;->a(Lkqn;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->setInformations(Ljava/util/List;)V

    .line 372
    iget-object v1, p0, Lloi;->r:Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;

    new-instance v2, Lloq;

    invoke-direct {v2, p0}, Lloq;-><init>(Lloi;)V

    invoke-virtual {v1, v2}, Lcom/santander/app/seguros/ui/widgets/AssistanceOffer;->setListener(Lmay;)V

    .line 382
    iget-object v1, p0, Lloi;->j:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    invoke-static {v0}, Lmhj;->c(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    iget-object v0, p0, Lloi;->y:Ljava/lang/String;

    invoke-static {v0}, Lmhj;->H(Ljava/lang/String;)Lkqn;

    move-result-object v0

    .line 386
    iget-object v1, p0, Lloi;->w:Ljava/lang/String;

    iget-object v2, p0, Lloi;->F:Ljava/util/Map;

    invoke-virtual {v0}, Lkqn;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lloi;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    return-void
.end method

.method private d(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x30

    const/16 v3, 0xf

    invoke-static {v0, v1, v3}, Lmhj;->a(Ljava/lang/String;CI)Ljava/lang/String;

    move-result-object v3

    move v1, v2

    .line 561
    :goto_0
    iget-object v0, p0, Lloi;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 562
    iget-object v0, p0, Lloi;->E:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkrz;

    invoke-virtual {v0}, Lkrz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 563
    const/4 v2, 0x1

    .line 566
    :cond_0
    return v2

    .line 561
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic e(Lloi;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lloi;->b()V

    return-void
.end method

.method static synthetic f(Lloi;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lloi;->c()V

    return-void
.end method

.method static synthetic g(Lloi;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lloi;->x:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lloi;)Ljava/util/List;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lloi;->E:Ljava/util/List;

    return-object v0
.end method

.method static synthetic i(Lloi;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lloi;->y:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Lkrn;)V
    .locals 3

    .prologue
    .line 504
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lkrn;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lkrn;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x30

    const/16 v2, 0xf

    invoke-static {v0, v1, v2}, Lmhj;->a(Ljava/lang/String;CI)Ljava/lang/String;

    move-result-object v0

    .line 507
    invoke-static {v0}, Lmhj;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lloi;->v:Ljava/lang/String;

    .line 513
    :goto_0
    iget-object v0, p0, Lloi;->e:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "R$ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lloi;->v:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v2}, Lmhj;->c(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    invoke-virtual {p1}, Lkrn;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lloi;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 518
    invoke-virtual {p1}, Lkrn;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lloi;->c(Ljava/lang/String;)Lkrz;

    move-result-object v0

    invoke-direct {p0, v0}, Lloi;->a(Lkrz;)V

    .line 524
    :goto_1
    iget-object v0, p0, Lloi;->A:Lkri;

    iget-object v1, p0, Lloi;->v:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lloi;->a(Lkri;Ljava/lang/String;)V

    .line 527
    iget-object v0, p0, Lloi;->o:Llnp;

    invoke-virtual {v0}, Llnp;->dismiss()V

    .line 528
    return-void

    .line 509
    :cond_0
    const-string v0, "0000"

    invoke-static {v0}, Lmhj;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lloi;->v:Ljava/lang/String;

    goto :goto_0

    .line 520
    :cond_1
    invoke-direct {p0, p1}, Lloi;->b(Lkrn;)V

    .line 521
    iget-object v0, p0, Lloi;->s:Lkrw;

    invoke-direct {p0, v0}, Lloi;->a(Lkrw;)V

    goto :goto_1
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 131
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 133
    instance-of v0, p1, Landroid/support/v7/app/AppCompatActivity;

    if-eqz v0, :cond_0

    .line 134
    check-cast p1, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    iput-object p1, p0, Lloi;->d:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    .line 136
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
    .line 140
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 142
    iget-object v0, p0, Lloi;->d:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lloi;->d:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    sget-object v1, Lmfn;->WAVE_GREEN_ONE:Lmfn;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->a(Lmfn;Z)V

    .line 146
    :cond_0
    invoke-virtual {p0}, Lloi;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lloi;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "quotation-selected"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 147
    new-instance v0, Lejm;

    invoke-direct {v0}, Lejm;-><init>()V

    invoke-virtual {p0}, Lloi;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "quotation-selected"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lkrz;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkrz;

    iput-object v0, p0, Lloi;->u:Lkrz;

    .line 148
    iget-object v0, p0, Lloi;->u:Lkrz;

    invoke-virtual {v0}, Lkrz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmhj;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lloi;->v:Ljava/lang/String;

    .line 150
    iget-object v0, p0, Lloi;->D:Lkrn;

    iget-object v1, p0, Lloi;->u:Lkrz;

    invoke-virtual {v1}, Lkrz;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkrn;->c(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lloi;->E:Ljava/util/List;

    iget-object v1, p0, Lloi;->u:Lkrz;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    :goto_0
    invoke-virtual {p0}, Lloi;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lloi;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "family-id-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    invoke-virtual {p0}, Lloi;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "family-id-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lloi;->w:Ljava/lang/String;

    .line 161
    :cond_1
    invoke-virtual {p0}, Lloi;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lloi;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "order-number-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 162
    invoke-virtual {p0}, Lloi;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "order-number-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lloi;->x:Ljava/lang/String;

    .line 165
    :cond_2
    new-instance v0, Lkyf;

    invoke-direct {v0}, Lkyf;-><init>()V

    iput-object v0, p0, Lloi;->t:Lkye;

    .line 167
    iget-object v0, p0, Lloi;->d:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c()Lmhz;

    move-result-object v0

    invoke-virtual {v0}, Lmhz;->h()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lloi;->F:Ljava/util/Map;

    .line 169
    iget-object v0, p0, Lloi;->w:Ljava/lang/String;

    invoke-direct {p0, v0}, Lloi;->a(Ljava/lang/String;)V

    .line 171
    return-void

    .line 154
    :cond_3
    new-instance v0, Lkrz;

    invoke-direct {v0}, Lkrz;-><init>()V

    iput-object v0, p0, Lloi;->u:Lkrz;

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
    .line 211
    const v0, 0x7f0401e4

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 212
    invoke-direct {p0, v0}, Lloi;->a(Landroid/view/View;)V

    .line 213
    invoke-direct {p0}, Lloi;->d()V

    .line 215
    iget-object v1, p0, Lloi;->k:Landroid/widget/Button;

    new-instance v2, Llok;

    invoke-direct {v2, p0}, Llok;-><init>(Lloi;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    return-object v0
.end method
