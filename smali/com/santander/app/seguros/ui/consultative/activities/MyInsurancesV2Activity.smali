.class public Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Llij;


# static fields
.field public static a:Ljava/lang/String; = null

.field public static final b:Ljava/lang/String; = "true"

.field public static final c:Ljava/lang/String; = "false"


# instance fields
.field private A:Landroid/widget/Button;

.field private B:Landroid/widget/LinearLayout;

.field private C:Landroid/widget/TextView;

.field private D:Landroid/widget/LinearLayout;

.field private E:Landroid/widget/TextView;

.field private F:Landroid/widget/TextView;

.field private G:Landroid/widget/LinearLayout;

.field private H:Landroid/widget/LinearLayout;

.field private I:Landroid/widget/LinearLayout;

.field private J:Landroid/widget/TextView;

.field private K:Landroid/widget/TextView;

.field private L:Landroid/widget/TextView;

.field private M:Landroid/widget/Button;

.field private N:Landroid/support/v7/widget/RecyclerView;

.field private O:Lbr/com/zup/multistatelayout/MultiStateLayout;

.field private P:Lcom/santander/app/seguros/ui/widgets/ValidityCharV2;

.field private Q:Lbr/com/zup/multistatelayout/MultiStateLayout;

.field private R:Landroid/widget/TextView;

.field private S:Landroid/widget/TextView;

.field private T:Landroid/widget/TextView;

.field private U:Landroid/widget/TextView;

.field private V:Landroid/widget/Button;

.field private W:Landroid/widget/LinearLayout;

.field private X:Landroid/widget/TextView;

.field private Y:Landroid/widget/TextView;

.field private Z:Lmgv;

.field private aa:Lkpv;

.field private ab:Lkze;

.field private ac:Lkxv;

.field private ad:Lktp;

.field private ae:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkue;",
            ">;"
        }
    .end annotation
.end field

.field private af:I

.field private ag:Lkud;

.field private ah:Lkrg;

.field private ai:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkpw;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Lbr/com/zup/multistatelayout/MultiStateLayout;

.field private f:Landroid/widget/ScrollView;

.field private g:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/view/View;

.field private y:Landroid/view/View;

.field private z:Lcom/santander/app/seguros/ui/widgets/MultiViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    const-string v0, "insurance-family"

    sput-object v0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 93
    const-string v0, "yyyy-MM-dd"

    iput-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->d:Ljava/lang/String;

    .line 444
    const/4 v0, 0x0

    iput v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->af:I

    .line 1091
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ai:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;I)I
    .locals 0

    .prologue
    .line 91
    iput p1, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->af:I

    return p1
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ae:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;Lkpv;)Lkpv;
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->aa:Lkpv;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;Lkrg;)Lkrg;
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ah:Lkrg;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;Lktp;)Lktp;
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ad:Lktp;

    return-object p1
.end method

.method private a(I)V
    .locals 9

    .prologue
    const/4 v2, 0x4

    const/4 v4, 0x1

    const v3, 0x7f0e0078

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 448
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ae:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 525
    :goto_0
    return-void

    .line 449
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->aa:Lkpv;

    .line 450
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ah:Lkrg;

    .line 452
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ae:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkue;

    invoke-virtual {v0}, Lkue;->a()Lkud;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ag:Lkud;

    .line 453
    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ag:Lkud;

    .line 455
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->o()V

    .line 457
    if-gtz p1, :cond_2

    .line 458
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->x:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 463
    :goto_1
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ae:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt p1, v0, :cond_3

    .line 464
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->y:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 469
    :goto_2
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->w:Landroid/widget/TextView;

    invoke-virtual {v1}, Lkud;->d()Lktr;

    move-result-object v2

    invoke-virtual {v2}, Lktr;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 471
    invoke-virtual {v1}, Lkud;->d()Lktr;

    move-result-object v0

    invoke-virtual {v0}, Lktr;->g()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 472
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->O:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v2, Laor;->CONTENT:Laor;

    invoke-virtual {v0, v2}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 473
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->y:Landroid/view/View;

    iget-object v2, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->i:Landroid/app/Activity;

    const v3, 0x7f0e0075

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 474
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->x:Landroid/view/View;

    iget-object v2, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->i:Landroid/app/Activity;

    const v3, 0x7f0e0075

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 475
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->f:Landroid/widget/ScrollView;

    invoke-virtual {v0, v7, v7}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 476
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->g:Landroid/widget/TextView;

    invoke-virtual {v1}, Lkud;->g()Lkuf;

    move-result-object v2

    invoke-virtual {v2}, Lkuf;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmhj;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 478
    invoke-direct {p0, v1}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->c(Lkud;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 479
    sget-object v0, Llhl;->PROCESSING:Llhl;

    invoke-direct {p0, v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->a(Llhl;)V

    .line 480
    invoke-direct {p0, v1}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->e(Lkud;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 481
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->V:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 485
    :goto_3
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->X:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 486
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->X:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09054c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 488
    invoke-virtual {v1}, Lkud;->b()Lkty;

    move-result-object v0

    invoke-virtual {v0}, Lkty;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkui;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 489
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->R:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 490
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->S:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090577

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 497
    :cond_1
    :goto_4
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->T:Landroid/widget/TextView;

    invoke-virtual {v1}, Lkud;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 499
    :try_start_0
    invoke-virtual {v1}, Lkud;->e()Lkuj;

    move-result-object v0

    invoke-virtual {v0}, Lkuj;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lmhj;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 500
    invoke-virtual {v1}, Lkud;->e()Lkuj;

    move-result-object v2

    invoke-virtual {v2}, Lkuj;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lmhj;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 501
    iget-object v3, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->U:Landroid/widget/TextView;

    const-string v4, "%s - %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Lmhj;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    invoke-static {v2}, Lmhj;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 505
    :goto_5
    invoke-direct {p0, v1, p1}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->a(Lkud;I)V

    goto/16 :goto_0

    .line 460
    :cond_2
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->x:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 466
    :cond_3
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->y:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 483
    :cond_4
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->V:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_3

    .line 491
    :cond_5
    invoke-virtual {v1}, Lkud;->b()Lkty;

    move-result-object v0

    invoke-virtual {v0}, Lkty;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkui;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 493
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->R:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 494
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->S:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090577

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 502
    :catch_0
    move-exception v0

    .line 503
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 507
    :cond_6
    invoke-direct {p0, v1, p1}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->b(Lkud;I)V

    goto/16 :goto_0

    .line 510
    :cond_7
    sget-object v0, Llhl;->SAIBA_MAIS:Llhl;

    invoke-direct {p0, v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->a(Llhl;)V

    .line 511
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->y:Landroid/view/View;

    iget-object v2, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->i:Landroid/app/Activity;

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 512
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->x:Landroid/view/View;

    iget-object v2, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->i:Landroid/app/Activity;

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 513
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->g:Landroid/widget/TextView;

    invoke-virtual {v1}, Lkud;->d()Lktr;

    move-result-object v2

    invoke-virtual {v2}, Lktr;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 514
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->E:Landroid/widget/TextView;

    invoke-virtual {v1}, Lkud;->d()Lktr;

    move-result-object v2

    invoke-virtual {v2}, Lktr;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 515
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->F:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->i:Landroid/app/Activity;

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1}, Lkud;->d()Lktr;

    move-result-object v3

    invoke-virtual {v3}, Lktr;->l()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0901bf

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {p0, v2, v3, v4}, Lmhj;->a(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;[Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    invoke-virtual {v1}, Lkud;->d()Lktr;

    move-result-object v0

    invoke-virtual {v0}, Lktr;->n()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 518
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->G:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 523
    :goto_6
    invoke-direct {p0, v1}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->b(Lkud;)V

    goto/16 :goto_0

    .line 520
    :cond_8
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->G:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_6
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->e()V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;Lkud;I)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->c(Lkud;I)V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;Z)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->a(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1038
    :try_start_0
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->e:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->ERROR:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 1039
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->e:Lbr/com/zup/multistatelayout/MultiStateLayout;

    const v1, 0x7f10089f

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1043
    :goto_1
    return-void

    .line 1039
    :cond_0
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090362

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 1040
    :catch_0
    move-exception v0

    .line 1041
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private a(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 983
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 984
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->d()V

    .line 986
    :cond_0
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->C:Landroid/widget/TextView;

    const-string v1, "..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 987
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->O:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->LOADING:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 988
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ag:Lkud;

    .line 990
    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ab:Lkze;

    new-instance v2, Llgy;

    invoke-direct {v2, p0, p2, v0}, Llgy;-><init>(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;ILkud;)V

    new-instance v0, Llgz;

    invoke-direct {v0, p0, p2}, Llgz;-><init>(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;I)V

    invoke-interface {v1, p1, v2, v0}, Lkze;->b(Ljava/lang/String;Lkxl;Lkxl;)V

    .line 1034
    return-void
.end method

.method private a(Ljava/util/Date;Ljava/util/Date;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 711
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 713
    invoke-virtual {p2, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 714
    invoke-virtual {p1, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 715
    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->P:Lcom/santander/app/seguros/ui/widgets/ValidityCharV2;

    invoke-static {v0, p2}, Lmhj;->a(Ljava/util/Date;Ljava/util/Date;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/santander/app/seguros/ui/widgets/ValidityCharV2;->setDayText(I)V

    .line 716
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->P:Lcom/santander/app/seguros/ui/widgets/ValidityCharV2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/ValidityCharV2;->setProgress(I)V

    .line 737
    :goto_0
    return-void

    .line 718
    :cond_0
    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->P:Lcom/santander/app/seguros/ui/widgets/ValidityCharV2;

    invoke-static {v0, p2}, Lmhj;->a(Ljava/util/Date;Ljava/util/Date;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/santander/app/seguros/ui/widgets/ValidityCharV2;->setDayText(I)V

    .line 719
    invoke-static {p1, v0}, Lmhj;->a(Ljava/util/Date;Ljava/util/Date;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    int-to-double v0, v0

    invoke-static {p1, p2}, Lmhj;->a(Ljava/util/Date;Ljava/util/Date;)I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    .line 721
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_1

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_1

    .line 722
    const/4 v0, 0x1

    .line 727
    :goto_1
    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->P:Lcom/santander/app/seguros/ui/widgets/ValidityCharV2;

    invoke-virtual {v1, v0}, Lcom/santander/app/seguros/ui/widgets/ValidityCharV2;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 733
    :catch_0
    move-exception v0

    .line 734
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->P:Lcom/santander/app/seguros/ui/widgets/ValidityCharV2;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/ValidityCharV2;->setDayText(I)V

    .line 735
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->P:Lcom/santander/app/seguros/ui/widgets/ValidityCharV2;

    invoke-virtual {v0, v4}, Lcom/santander/app/seguros/ui/widgets/ValidityCharV2;->setProgress(I)V

    goto :goto_0

    .line 724
    :cond_1
    double-to-int v0, v0

    goto :goto_1

    .line 730
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->P:Lcom/santander/app/seguros/ui/widgets/ValidityCharV2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/ValidityCharV2;->setDayText(I)V

    .line 731
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->P:Lcom/santander/app/seguros/ui/widgets/ValidityCharV2;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/ValidityCharV2;->setProgress(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkue;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 822
    new-instance v0, Lktr;

    invoke-direct {v0}, Lktr;-><init>()V

    .line 823
    const-string v1, "Acidentes Pessoais"

    invoke-virtual {v0, v1}, Lktr;->f(Ljava/lang/String;)V

    .line 824
    const-string v1, "Apoio a voc\u00ea e sua fam\u00edlia em caso de imprevistos."

    invoke-virtual {v0, v1}, Lktr;->c(Ljava/lang/String;)V

    .line 825
    const v1, 0x7f02032a

    invoke-virtual {v0, v1}, Lktr;->e(I)V

    .line 826
    const v1, 0x7f02032d

    invoke-virtual {v0, v1}, Lktr;->c(I)V

    .line 827
    const v1, 0x7f02032b

    invoke-virtual {v0, v1}, Lktr;->d(I)V

    .line 828
    const-string v1, "Com ele, voc\u00ea e sua fam\u00edlia estar\u00e3o sempre protegidos."

    invoke-virtual {v0, v1}, Lktr;->e(Ljava/lang/String;)V

    .line 829
    const-string v1, "Voc\u00ea pode curtir os bons momentos sem medo. E se alguma surpresa acontecer, fique tranquilo, a gente cuida de tudo para voc\u00ea."

    invoke-virtual {v0, v1}, Lktr;->d(Ljava/lang/String;)V

    .line 830
    invoke-virtual {v0, v3}, Lktr;->e(Z)V

    .line 831
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lktr;->b(I)V

    .line 832
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lktr;->f(Z)V

    .line 834
    new-instance v1, Lktr;

    invoke-direct {v1}, Lktr;-><init>()V

    .line 835
    const-string v2, "Vida"

    invoke-virtual {v1, v2}, Lktr;->f(Ljava/lang/String;)V

    .line 836
    const-string v2, "Com ele, voc\u00ea e sua fam\u00edlia estar\u00e3o protegidos sempre."

    invoke-virtual {v1, v2}, Lktr;->c(Ljava/lang/String;)V

    .line 837
    const v2, 0x7f020495

    invoke-virtual {v1, v2}, Lktr;->e(I)V

    .line 838
    const v2, 0x7f020497

    invoke-virtual {v1, v2}, Lktr;->c(I)V

    .line 839
    const v2, 0x7f020496

    invoke-virtual {v1, v2}, Lktr;->d(I)V

    .line 840
    const-string v2, "Tranquilidade para voc\u00ea e sua fam\u00edlia."

    invoke-virtual {v1, v2}, Lktr;->e(Ljava/lang/String;)V

    .line 841
    const-string v2, "A gente protege quem voc\u00ea mais ama para que voc\u00eas possam curtir a vida numa boa."

    invoke-virtual {v1, v2}, Lktr;->d(Ljava/lang/String;)V

    .line 842
    invoke-virtual {v1, v3}, Lktr;->e(Z)V

    .line 843
    invoke-virtual {v1, v3}, Lktr;->f(Z)V

    .line 844
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lktr;->b(I)V

    .line 846
    new-instance v2, Lkue;

    new-instance v3, Lkud;

    invoke-direct {v3, v0}, Lkud;-><init>(Lktr;)V

    invoke-direct {v2, v3}, Lkue;-><init>(Lkud;)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 847
    new-instance v0, Lkue;

    new-instance v2, Lkud;

    invoke-direct {v2, v1}, Lkud;-><init>(Lktr;)V

    invoke-direct {v0, v2}, Lkue;-><init>(Lkud;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 848
    return-void
.end method

.method private a(Lkud;I)V
    .locals 4

    .prologue
    .line 577
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->Q:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->LOADING:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 578
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->C:Landroid/widget/TextView;

    const-string v1, "..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 579
    new-instance v0, Lkyf;

    invoke-direct {v0}, Lkyf;-><init>()V

    .line 580
    new-instance v1, Lkrf;

    invoke-direct {v1}, Lkrf;-><init>()V

    .line 581
    const-string v2, "CANC"

    invoke-virtual {v1, v2}, Lkrf;->a(Ljava/lang/String;)V

    .line 582
    new-instance v2, Lkro;

    invoke-virtual {p1}, Lkud;->i()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lkro;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lkrf;->a(Lkro;)V

    .line 584
    new-instance v2, Llhk;

    invoke-direct {v2, p0, p2}, Llhk;-><init>(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;I)V

    new-instance v3, Llgv;

    invoke-direct {v3, p0, p2}, Llgv;-><init>(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;I)V

    invoke-interface {v0, v1, v2, v3}, Lkye;->a(Lkrf;Lkxl;Lkxl;)V

    .line 615
    return-void
.end method

.method private a(Llhl;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 163
    sget-object v0, Llhc;->a:[I

    invoke-virtual {p1}, Llhl;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 198
    :goto_0
    return-void

    .line 165
    :pswitch_0
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->Q:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->CONTENT:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 166
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->G:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->H:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->W:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->D:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->O:Lbr/com/zup/multistatelayout/MultiStateLayout;

    invoke-virtual {v0, v4}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->A:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->X:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 176
    :pswitch_1
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->Q:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->CONTENT:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 177
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->G:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->H:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->W:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->D:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->X:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->O:Lbr/com/zup/multistatelayout/MultiStateLayout;

    invoke-virtual {v0, v3}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setVisibility(I)V

    goto :goto_0

    .line 186
    :pswitch_2
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->Q:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->CONTENT:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 187
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->X:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09054c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->G:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->H:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->W:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->D:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->X:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->O:Lbr/com/zup/multistatelayout/MultiStateLayout;

    invoke-virtual {v0, v3}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->A:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 959
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->b(Z)Ljava/util/List;

    move-result-object v0

    .line 960
    new-instance v1, Landroid/support/v7/widget/GridLayoutManager;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3, v4}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    .line 962
    new-instance v2, Llig;

    iget-object v3, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->N:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {v2, v0, v3}, Llig;-><init>(Ljava/util/List;Landroid/support/v7/widget/RecyclerView;)V

    .line 964
    invoke-virtual {v2, p0}, Llig;->a(Llij;)V

    .line 966
    iget-object v3, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->N:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 967
    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->N:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 969
    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->Z:Lmgv;

    if-eqz v1, :cond_0

    .line 970
    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->N:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->Z:Lmgv;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->removeItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 973
    :cond_0
    new-instance v1, Lmgv;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lmgv;-><init>(II)V

    iput-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->Z:Lmgv;

    .line 974
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->N:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->Z:Lmgv;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 976
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->N:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->invalidateItemDecorations()V

    .line 977
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->N:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 978
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->O:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->CONTENT:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 979
    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v2, 0x0

    .line 1232
    const-string v0, ""

    .line 1234
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1236
    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v5, v3, v1

    .line 1237
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v7, :cond_0

    .line 1238
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lmhj;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1236
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1241
    :cond_1
    return-object v0
.end method

.method private b(Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lknz;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1046
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1048
    new-instance v1, Lknz;

    invoke-direct {v1}, Lknz;-><init>()V

    .line 1050
    const v2, 0x7f020380

    invoke-virtual {v1, v2}, Lknz;->a(I)V

    .line 1051
    const v2, 0x7f090304

    invoke-virtual {p0, v2}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lknz;->a(Ljava/lang/String;)V

    .line 1052
    sget-object v2, Lkoa;->COVERAGE:Lkoa;

    invoke-virtual {v1, v2}, Lknz;->b(Lkoa;)V

    .line 1053
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1055
    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->t()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1056
    :cond_0
    new-instance v1, Lknz;

    invoke-direct {v1}, Lknz;-><init>()V

    .line 1058
    const v2, 0x7f02034b

    invoke-virtual {v1, v2}, Lknz;->a(I)V

    .line 1059
    const v2, 0x7f090142

    invoke-virtual {p0, v2}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lknz;->a(Ljava/lang/String;)V

    .line 1060
    sget-object v2, Lkoa;->BENEFICIARIES:Lkoa;

    invoke-virtual {v1, v2}, Lknz;->b(Lkoa;)V

    .line 1061
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1064
    :cond_1
    new-instance v1, Lknz;

    invoke-direct {v1}, Lknz;-><init>()V

    .line 1066
    const v2, 0x7f02034c

    invoke-virtual {v1, v2}, Lknz;->a(I)V

    .line 1067
    const v2, 0x7f090148

    invoke-virtual {p0, v2}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lknz;->a(Ljava/lang/String;)V

    .line 1068
    sget-object v2, Lkoa;->BILLINGDATA:Lkoa;

    invoke-virtual {v1, v2}, Lknz;->b(Lkoa;)V

    .line 1069
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1071
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->r()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1072
    new-instance v1, Lknz;

    invoke-direct {v1}, Lknz;-><init>()V

    .line 1073
    const v2, 0x7f020356

    invoke-virtual {v1, v2}, Lknz;->a(I)V

    .line 1074
    const v2, 0x7f090209

    invoke-virtual {p0, v2}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lknz;->a(Ljava/lang/String;)V

    .line 1075
    sget-object v2, Lkoa;->CANCEL:Lkoa;

    invoke-virtual {v1, v2}, Lknz;->b(Lkoa;)V

    .line 1076
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1079
    :cond_2
    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 212
    const v0, 0x7f10010f

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/zup/multistatelayout/MultiStateLayout;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->e:Lbr/com/zup/multistatelayout/MultiStateLayout;

    .line 213
    const v0, 0x7f10009f

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->f:Landroid/widget/ScrollView;

    .line 214
    const v0, 0x7f10030d

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->g:Landroid/widget/TextView;

    .line 215
    const v0, 0x7f10038a

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->w:Landroid/widget/TextView;

    .line 216
    const v0, 0x7f10038b

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->x:Landroid/view/View;

    .line 217
    const v0, 0x7f10038c

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->y:Landroid/view/View;

    .line 218
    const v0, 0x7f10038d

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/MultiViewPager;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->z:Lcom/santander/app/seguros/ui/widgets/MultiViewPager;

    .line 219
    const v0, 0x7f100390

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->A:Landroid/widget/Button;

    .line 220
    const v0, 0x7f100391

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->B:Landroid/widget/LinearLayout;

    .line 221
    const v0, 0x7f100392

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->C:Landroid/widget/TextView;

    .line 222
    const v0, 0x7f100394

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->D:Landroid/widget/LinearLayout;

    .line 223
    const v0, 0x7f100395

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->E:Landroid/widget/TextView;

    .line 224
    const v0, 0x7f100396

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->F:Landroid/widget/TextView;

    .line 225
    const v0, 0x7f100397

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->G:Landroid/widget/LinearLayout;

    .line 226
    const v0, 0x7f100399

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->H:Landroid/widget/LinearLayout;

    .line 227
    const v0, 0x7f10039b

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/ValidityCharV2;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->P:Lcom/santander/app/seguros/ui/widgets/ValidityCharV2;

    .line 228
    const v0, 0x7f10039d

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->I:Landroid/widget/LinearLayout;

    .line 229
    const v0, 0x7f10039e

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->J:Landroid/widget/TextView;

    .line 230
    const v0, 0x7f10039f

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->K:Landroid/widget/TextView;

    .line 231
    const v0, 0x7f1003a0

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->L:Landroid/widget/TextView;

    .line 232
    const v0, 0x7f1003a1

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->M:Landroid/widget/Button;

    .line 233
    const v0, 0x7f1003a3

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->N:Landroid/support/v7/widget/RecyclerView;

    .line 234
    const v0, 0x7f1003a2

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/zup/multistatelayout/MultiStateLayout;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->O:Lbr/com/zup/multistatelayout/MultiStateLayout;

    .line 235
    const v0, 0x7f100393

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/zup/multistatelayout/MultiStateLayout;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->Q:Lbr/com/zup/multistatelayout/MultiStateLayout;

    .line 237
    const v0, 0x7f100f09

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->R:Landroid/widget/TextView;

    .line 238
    const v0, 0x7f100f0a

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->S:Landroid/widget/TextView;

    .line 239
    const v0, 0x7f100f0c

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->T:Landroid/widget/TextView;

    .line 240
    const v0, 0x7f100f10

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->U:Landroid/widget/TextView;

    .line 241
    const v0, 0x7f100f11

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->V:Landroid/widget/Button;

    .line 242
    const v0, 0x7f100f08

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->W:Landroid/widget/LinearLayout;

    .line 243
    const v0, 0x7f10038f

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->X:Landroid/widget/TextView;

    .line 245
    const v0, 0x7f100398

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->Y:Landroid/widget/TextView;

    .line 247
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->M:Landroid/widget/Button;

    new-instance v1, Llgu;

    invoke-direct {v1, p0}, Llgu;-><init>(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->V:Landroid/widget/Button;

    new-instance v1, Llhd;

    invoke-direct {v1, p0}, Llhd;-><init>(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    invoke-static {}, Lmzr;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->d()V

    .line 268
    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->c()V

    return-void
.end method

.method public static synthetic b(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;I)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->a(I)V

    return-void
.end method

.method public static synthetic b(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->d(Ljava/lang/String;)V

    return-void
.end method

.method private b(Lkud;)V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 528
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->C()Lipi;

    move-result-object v0

    .line 529
    invoke-virtual {p1}, Lkud;->d()Lktr;

    move-result-object v1

    invoke-virtual {v1}, Lktr;->j()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 530
    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->A:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 531
    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->A:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setClickable(Z)V

    .line 532
    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->Y:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 534
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->v()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->x()Z

    move-result v1

    if-nez v1, :cond_1

    .line 535
    invoke-virtual {p1}, Lkud;->d()Lktr;

    move-result-object v0

    invoke-virtual {v0}, Lktr;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmhj;->J(Ljava/lang/String;)I

    move-result v0

    .line 536
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 537
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->Y:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 538
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->A:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 539
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->A:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 572
    :goto_0
    return-void

    .line 541
    :cond_0
    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->Y:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 542
    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->A:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 543
    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->A:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setClickable(Z)V

    .line 544
    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->A:Landroid/widget/Button;

    new-instance v2, Llhj;

    invoke-direct {v2, p0, p1, v0}, Llhj;-><init>(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;Lkud;I)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 553
    :cond_1
    invoke-static {}, Lmhj;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 554
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->A:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 555
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->A:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 556
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->Y:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 558
    :cond_2
    const-string v1, "00000109"

    invoke-interface {v0, v1}, Lipi;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 559
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->d(Lkud;)V

    goto :goto_0

    .line 561
    :cond_3
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->A:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 562
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->A:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 563
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->Y:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 568
    :cond_4
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->A:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 569
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->A:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 570
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->Y:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private b(Lkud;I)V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 622
    sget-object v0, Llhl;->DETAILS:Llhl;

    invoke-direct {p0, v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->a(Llhl;)V

    .line 623
    invoke-virtual {p1}, Lkud;->b()Lkty;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lkud;->b()Lkty;

    move-result-object v0

    invoke-virtual {v0}, Lkty;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkui;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->X:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090211

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 625
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->X:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 630
    :goto_0
    invoke-virtual {p1}, Lkud;->e()Lkuj;

    move-result-object v0

    invoke-virtual {v0}, Lkuj;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lmhj;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 631
    invoke-virtual {p1}, Lkud;->e()Lkuj;

    move-result-object v0

    invoke-virtual {v0}, Lkuj;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lmhj;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 632
    iget-object v3, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->P:Lcom/santander/app/seguros/ui/widgets/ValidityCharV2;

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    const-string v0, "dd/MM/yy"

    invoke-static {v1, v0}, Lmhj;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v0}, Lcom/santander/app/seguros/ui/widgets/ValidityCharV2;->setStartDayText(Ljava/lang/String;)V

    .line 633
    iget-object v3, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->P:Lcom/santander/app/seguros/ui/widgets/ValidityCharV2;

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    const-string v0, "dd/MM/yy"

    invoke-static {v2, v0}, Lmhj;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v3, v0}, Lcom/santander/app/seguros/ui/widgets/ValidityCharV2;->setEndDayText(Ljava/lang/String;)V

    .line 634
    invoke-direct {p0, v1, v2}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->a(Ljava/util/Date;Ljava/util/Date;)V

    .line 637
    :try_start_0
    invoke-virtual {p1}, Lkud;->b()Lkty;

    move-result-object v0

    invoke-virtual {v0}, Lkty;->c()Ljava/lang/String;

    move-result-object v0

    .line 640
    const/4 v1, 0x6

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 641
    const/16 v2, 0xd

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 642
    iget-object v2, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->K:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 643
    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->L:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 647
    :goto_3
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->u()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 648
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->I:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 649
    invoke-virtual {p0, p1}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->a(Lkud;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 650
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->M:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 651
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->n()V

    .line 661
    :goto_4
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->w()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 662
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->N:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 667
    :goto_5
    invoke-virtual {p1}, Lkud;->b()Lkty;

    move-result-object v0

    invoke-virtual {v0}, Lkty;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->a(Ljava/lang/String;I)V

    .line 668
    return-void

    .line 627
    :cond_0
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->X:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 632
    :cond_1
    const-string v0, ""

    goto :goto_1

    .line 633
    :cond_2
    const-string v0, ""

    goto :goto_2

    .line 644
    :catch_0
    move-exception v0

    .line 645
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 653
    :cond_3
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->M:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 654
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->d()V

    goto :goto_4

    .line 657
    :cond_4
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->I:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 658
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->M:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_4

    .line 664
    :cond_5
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->N:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    goto :goto_5
.end method

.method public static synthetic c(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;)Lkud;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ag:Lkud;

    return-object v0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 272
    const-string v0, "Seguros_Cancelamento_Vida_AP_Acao"

    const-string v1, "BotaoCancelamento"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 275
    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ah:Lkrg;

    if-eqz v1, :cond_0

    .line 276
    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ah:Lkrg;

    invoke-virtual {v1}, Lkrg;->f()Ljava/util/List;

    move-result-object v1

    .line 277
    const-string v2, "processing-beneficiaries-key"

    invoke-static {}, Lmys;->a()Lejm;

    move-result-object v3

    invoke-virtual {v3, v1}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    const-string v1, "is-processing-key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 281
    :cond_0
    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ag:Lkud;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ag:Lkud;

    invoke-virtual {v1}, Lkud;->d()Lktr;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ag:Lkud;

    invoke-virtual {v1}, Lkud;->d()Lktr;

    move-result-object v1

    invoke-virtual {v1}, Lktr;->p()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 282
    const-string v1, "family-key"

    iget-object v2, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ag:Lkud;

    invoke-virtual {v2}, Lkud;->d()Lktr;

    move-result-object v2

    invoke-virtual {v2}, Lktr;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    :cond_1
    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ag:Lkud;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ag:Lkud;

    invoke-virtual {v1}, Lkud;->i()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ag:Lkud;

    invoke-virtual {v1}, Lkud;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 286
    const-string v1, "position-number"

    iget-object v2, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ag:Lkud;

    invoke-virtual {v2}, Lkud;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    :cond_2
    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->startActivity(Landroid/content/Intent;)V

    .line 291
    return-void
.end method

.method private c(Lkud;I)V
    .locals 3

    .prologue
    .line 695
    invoke-virtual {p1}, Lkud;->d()Lktr;

    move-result-object v0

    invoke-virtual {v0}, Lktr;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmhj;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 696
    const-string v1, "Seguros_Consultivo_Contratar_Produto_Acao"

    invoke-static {v1, v0}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f090134

    .line 698
    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 700
    :goto_0
    invoke-virtual {p0, p2}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lmhj;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    return-void

    .line 698
    :cond_0
    const v0, 0x7f090133

    .line 699
    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private c(Lkud;)Z
    .locals 1

    .prologue
    .line 618
    invoke-virtual {p1}, Lkud;->b()Lkty;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lkud;->b()Lkty;

    move-result-object v0

    invoke-virtual {v0}, Lkty;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkui;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lkud;->b()Lkty;

    move-result-object v0

    invoke-virtual {v0}, Lkty;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkui;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic d(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;)Lktp;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ad:Lktp;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 294
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->M:Landroid/widget/Button;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->i:Landroid/app/Activity;

    const v2, 0x7f02009e

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 295
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->M:Landroid/widget/Button;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->i:Landroid/app/Activity;

    const v2, 0x7f0e0095

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 296
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->M:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 297
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1266
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ac:Lkxv;

    new-instance v1, Llha;

    invoke-direct {v1, p0}, Llha;-><init>(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;)V

    new-instance v2, Llhb;

    invoke-direct {v2, p0}, Llhb;-><init>(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;)V

    invoke-interface {v0, p1, v1, v2}, Lkxv;->b(Ljava/lang/String;Lkxl;Lkxl;)V

    .line 1296
    return-void
.end method

.method private d(Lkud;)V
    .locals 2

    .prologue
    .line 671
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->A:Landroid/widget/Button;

    new-instance v1, Llgw;

    invoke-direct {v1, p0, p1}, Llgw;-><init>(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;Lkud;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 692
    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    .line 302
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->C()Lipi;

    move-result-object v0

    .line 304
    const-string v1, "00000109"

    invoke-interface {v0, v1}, Lipi;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    invoke-static {}, Llis;->a()Llis;

    move-result-object v0

    .line 306
    new-instance v1, Llhe;

    invoke-direct {v1, p0}, Llhe;-><init>(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;)V

    invoke-virtual {v0, v1}, Llis;->a(Lliw;)V

    .line 332
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Llis;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 340
    :goto_0
    return-void

    .line 334
    :cond_0
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->f()V

    .line 335
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 336
    const-string v1, "insurance-data-key"

    iget-object v2, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ag:Lkud;

    invoke-virtual {v2}, Lkud;->b()Lkty;

    move-result-object v2

    invoke-virtual {v2}, Lkty;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    const-string v1, "higher_coverage_key"

    iget-object v2, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ad:Lktp;

    invoke-virtual {v2}, Lktp;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static synthetic e(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->f()V

    return-void
.end method

.method private e(Lkud;)Z
    .locals 1

    .prologue
    .line 1087
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lkud;->a()Lktz;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lkud;->a()Lktz;

    move-result-object v0

    invoke-virtual {v0}, Lktz;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1088
    invoke-static {}, Lmhj;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1087
    :goto_0
    return v0

    .line 1088
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 344
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ag:Lkud;

    invoke-virtual {v0}, Lkud;->g()Lkuf;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ag:Lkud;

    invoke-virtual {v0}, Lkud;->g()Lkuf;

    move-result-object v0

    invoke-virtual {v0}, Lkuf;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ag:Lkud;

    invoke-virtual {v0}, Lkud;->g()Lkuf;

    move-result-object v0

    invoke-virtual {v0}, Lkuf;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, "."

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u00e7"

    const-string v2, "c"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmhj;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 349
    :goto_0
    const-string v1, "Seguros_Sinistro_Acionar_Produto_Acao"

    invoke-static {v1, v0}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    return-void

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ag:Lkud;

    invoke-virtual {v0}, Lkud;->d()Lktr;

    move-result-object v0

    invoke-virtual {v0}, Lktr;->p()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, "."

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u00e7"

    const-string v2, "c"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmhj;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static synthetic f(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->p()V

    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 354
    :try_start_0
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 355
    if-eqz v0, :cond_0

    .line 356
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 357
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 358
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 359
    const v1, 0x7f0907c0

    invoke-virtual {p0, v1}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 361
    :catch_0
    move-exception v0

    .line 362
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static synthetic g(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->k()V

    return-void
.end method

.method public static synthetic h(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;)Lbr/com/zup/multistatelayout/MultiStateLayout;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->e:Lbr/com/zup/multistatelayout/MultiStateLayout;

    return-object v0
.end method

.method private h()V
    .locals 0

    .prologue
    .line 369
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->i()V

    .line 371
    return-void
.end method

.method public static synthetic i(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;)I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->af:I

    return v0
.end method

.method private i()V
    .locals 3

    .prologue
    .line 374
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->e:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->LOADING:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 375
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ab:Lkze;

    new-instance v1, Llhf;

    invoke-direct {v1, p0}, Llhf;-><init>(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;)V

    new-instance v2, Llhg;

    invoke-direct {v2, p0}, Llhg;-><init>(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;)V

    invoke-interface {v0, v1, v2}, Lkze;->a(Lkxl;Lkxl;)V

    .line 389
    return-void
.end method

.method public static synthetic j(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->C:Landroid/widget/TextView;

    return-object v0
.end method

.method private j()V
    .locals 4

    .prologue
    .line 397
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->e:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->LOADING:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 398
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Llhh;

    invoke-direct {v1, p0}, Llhh;-><init>(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 411
    return-void
.end method

.method public static synthetic k(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;)Lbr/com/zup/multistatelayout/MultiStateLayout;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->Q:Lbr/com/zup/multistatelayout/MultiStateLayout;

    return-object v0
.end method

.method private k()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 414
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->H:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 416
    new-instance v0, Llhy;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ae:Ljava/util/List;

    invoke-direct {v0, v1, p0}, Llhy;-><init>(Ljava/util/List;Lgrs;)V

    .line 417
    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->z:Lcom/santander/app/seguros/ui/widgets/MultiViewPager;

    invoke-virtual {v1, v0}, Lcom/santander/app/seguros/ui/widgets/MultiViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 419
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->z:Lcom/santander/app/seguros/ui/widgets/MultiViewPager;

    invoke-virtual {v0, v4}, Lcom/santander/app/seguros/ui/widgets/MultiViewPager;->setClipToPadding(Z)V

    .line 420
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->z:Lcom/santander/app/seguros/ui/widgets/MultiViewPager;

    new-instance v1, Lmhy;

    invoke-direct {v1}, Lmhy;-><init>()V

    invoke-virtual {v0, v4, v1}, Lcom/santander/app/seguros/ui/widgets/MultiViewPager;->setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;)V

    .line 421
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->z:Lcom/santander/app/seguros/ui/widgets/MultiViewPager;

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-virtual {v0, v2, v3}, Lcom/santander/app/seguros/ui/widgets/MultiViewPager;->setScrollDurationFactor(D)V

    .line 423
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->z:Lcom/santander/app/seguros/ui/widgets/MultiViewPager;

    new-instance v1, Llhi;

    invoke-direct {v1, p0}, Llhi;-><init>(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/MultiViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 440
    iput v4, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->af:I

    .line 441
    invoke-direct {p0, v4}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->a(I)V

    .line 442
    return-void
.end method

.method public static synthetic l(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;)Z
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->v()Z

    move-result v0

    return v0
.end method

.method public static synthetic m(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;)Z
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->x()Z

    move-result v0

    return v0
.end method

.method private n()V
    .locals 3

    .prologue
    .line 704
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->M:Landroid/widget/Button;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->i:Landroid/app/Activity;

    const v2, 0x7f0200a5

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 705
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->M:Landroid/widget/Button;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->i:Landroid/app/Activity;

    const v2, 0x7f0e00b9

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 706
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->M:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 707
    return-void
.end method

.method public static synthetic n(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;)Z
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->u()Z

    move-result v0

    return v0
.end method

.method private o()V
    .locals 3

    .prologue
    .line 741
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ag:Lkud;

    invoke-virtual {v0}, Lkud;->g()Lkuf;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ag:Lkud;

    invoke-virtual {v0}, Lkud;->g()Lkuf;

    move-result-object v0

    invoke-virtual {v0}, Lkuf;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 742
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ag:Lkud;

    invoke-virtual {v0}, Lkud;->g()Lkuf;

    move-result-object v0

    invoke-virtual {v0}, Lkuf;->c()Ljava/lang/String;

    move-result-object v0

    .line 746
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 747
    const-string v1, " "

    const-string v2, "."

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u00e7"

    const-string v2, "c"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmhj;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 748
    const-string v1, "Seguros_Consultivo_Carrossel_Produto_Acao"

    invoke-static {v1, v0}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    :cond_0
    return-void

    .line 744
    :cond_1
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ag:Lkud;

    invoke-virtual {v0}, Lkud;->d()Lktr;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ag:Lkud;

    invoke-virtual {v0}, Lkud;->d()Lktr;

    move-result-object v0

    invoke-virtual {v0}, Lktr;->p()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method public static synthetic o(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->n()V

    return-void
.end method

.method public static synthetic p(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->I:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private p()V
    .locals 9

    .prologue
    .line 754
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ae:Ljava/util/List;

    if-nez v0, :cond_0

    .line 755
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ae:Ljava/util/List;

    .line 758
    :cond_0
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->q()Ljava/util/List;

    move-result-object v3

    .line 759
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 761
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ae:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 762
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ae:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkue;

    .line 764
    invoke-virtual {v0}, Lkue;->a()Lkud;

    move-result-object v5

    .line 765
    invoke-virtual {v5}, Lkud;->g()Lkuf;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v5}, Lkud;->g()Lkuf;

    move-result-object v1

    invoke-virtual {v1}, Lkuf;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v5}, Lkud;->g()Lkuf;

    move-result-object v1

    invoke-virtual {v1}, Lkuf;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v6, "Desemprego"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 767
    invoke-virtual {v5}, Lkud;->b()Lkty;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v5}, Lkud;->b()Lkty;

    move-result-object v1

    invoke-virtual {v1}, Lkty;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkui;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 769
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lktr;

    .line 770
    invoke-virtual {v5}, Lkud;->g()Lkuf;

    move-result-object v7

    invoke-virtual {v7}, Lkuf;->c()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lmhj;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lktr;->p()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lmhj;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 771
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lktr;->d(Z)V

    .line 772
    invoke-virtual {v5, v1}, Lkud;->a(Lktr;)V

    .line 773
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 761
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 781
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 783
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lktr;

    .line 787
    invoke-virtual {v0}, Lktr;->g()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0}, Lktr;->d()Z

    move-result v3

    if-nez v3, :cond_4

    .line 788
    new-instance v3, Lkue;

    new-instance v5, Lkud;

    invoke-direct {v5, v0}, Lkud;-><init>(Lktr;)V

    invoke-direct {v3, v5}, Lkue;-><init>(Lkud;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 795
    :cond_5
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 796
    new-instance v0, Llgx;

    invoke-direct {v0, p0, v4}, Llgx;-><init>(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;Ljava/util/List;)V

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 817
    :cond_6
    iput-object v4, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ae:Ljava/util/List;

    .line 818
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ae:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 819
    return-void
.end method

.method public static synthetic q(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->J:Landroid/widget/TextView;

    return-object v0
.end method

.method private q()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lktr;",
            ">;"
        }
    .end annotation

    .prologue
    const v6, 0x7f0901bf

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 851
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 853
    new-instance v1, Lktr;

    invoke-direct {v1}, Lktr;-><init>()V

    .line 854
    const-string v2, "Residencial"

    invoke-virtual {v1, v2}, Lktr;->f(Ljava/lang/String;)V

    .line 855
    const-string v2, "Residencial"

    invoke-virtual {v1, v2}, Lktr;->b(Ljava/lang/String;)V

    .line 856
    const-string v2, "A prote\u00e7\u00e3o \u00e9 para sua casa, a economia \u00e9 para voc\u00ea."

    invoke-virtual {v1, v2}, Lktr;->c(Ljava/lang/String;)V

    .line 857
    const v2, 0x7f020458

    invoke-virtual {v1, v2}, Lktr;->e(I)V

    .line 858
    const v2, 0x7f02045a

    invoke-virtual {v1, v2}, Lktr;->c(I)V

    .line 859
    const v2, 0x7f020459

    invoke-virtual {v1, v2}, Lktr;->d(I)V

    .line 860
    const-string v2, "A prote\u00e7\u00e3o \u00e9 para a sua casa, a economia \u00e9 para voc\u00ea, o seguro residencial \u00e9 para os dois."

    invoke-virtual {v1, v2}, Lktr;->e(Ljava/lang/String;)V

    .line 861
    const-string v2, "Voc\u00ea n\u00e3o precisa se preocupar com gastos inesperados e reparos do dia a dia. A gente protege sua casa, seu neg\u00f3cio e seus bens. Fique tranquilo e aproveite seu tempo sem sustos."

    invoke-virtual {v1, v2}, Lktr;->d(Ljava/lang/String;)V

    .line 862
    invoke-virtual {v1, v5}, Lktr;->e(Z)V

    .line 863
    invoke-virtual {v1, v4}, Lktr;->f(Z)V

    .line 864
    invoke-virtual {v1, v5}, Lktr;->b(I)V

    .line 865
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 867
    new-instance v1, Lktr;

    invoke-direct {v1}, Lktr;-><init>()V

    .line 868
    const-string v2, "Vida"

    invoke-virtual {v1, v2}, Lktr;->f(Ljava/lang/String;)V

    .line 869
    const-string v2, "Vida"

    invoke-virtual {v1, v2}, Lktr;->b(Ljava/lang/String;)V

    .line 870
    const-string v2, "Com ele, voc\u00ea e sua fam\u00edlia estar\u00e3o protegidos sempre."

    invoke-virtual {v1, v2}, Lktr;->c(Ljava/lang/String;)V

    .line 871
    const v2, 0x7f020495

    invoke-virtual {v1, v2}, Lktr;->e(I)V

    .line 872
    const v2, 0x7f020497

    invoke-virtual {v1, v2}, Lktr;->c(I)V

    .line 873
    const v2, 0x7f020496

    invoke-virtual {v1, v2}, Lktr;->d(I)V

    .line 874
    const-string v2, "Tranquilidade para voc\u00ea e sua fam\u00edlia."

    invoke-virtual {v1, v2}, Lktr;->e(Ljava/lang/String;)V

    .line 875
    const-string v2, "A gente protege quem voc\u00ea mais ama para que voc\u00eas possam curtir a vida numa boa."

    invoke-virtual {v1, v2}, Lktr;->d(Ljava/lang/String;)V

    .line 876
    invoke-virtual {v1, v5}, Lktr;->e(Z)V

    .line 877
    invoke-virtual {v1, v5}, Lktr;->f(Z)V

    .line 878
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lktr;->b(I)V

    .line 879
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 881
    new-instance v1, Lktr;

    invoke-direct {v1}, Lktr;-><init>()V

    .line 882
    const-string v2, "Acidentes Pessoais"

    invoke-virtual {v1, v2}, Lktr;->f(Ljava/lang/String;)V

    .line 883
    const-string v2, "Acidentes Pessoais"

    invoke-virtual {v1, v2}, Lktr;->b(Ljava/lang/String;)V

    .line 884
    const-string v2, "Apoio a voc\u00ea e sua fam\u00edlia em caso de imprevistos."

    invoke-virtual {v1, v2}, Lktr;->c(Ljava/lang/String;)V

    .line 885
    const v2, 0x7f02032a

    invoke-virtual {v1, v2}, Lktr;->e(I)V

    .line 886
    const v2, 0x7f02032d

    invoke-virtual {v1, v2}, Lktr;->c(I)V

    .line 887
    const v2, 0x7f02032b

    invoke-virtual {v1, v2}, Lktr;->d(I)V

    .line 888
    const-string v2, "Com ele, voc\u00ea e sua fam\u00edlia estar\u00e3o sempre protegidos."

    invoke-virtual {v1, v2}, Lktr;->e(Ljava/lang/String;)V

    .line 889
    const-string v2, "Voc\u00ea pode curtir os bons momentos sem medo. E se alguma surpresa acontecer, fique tranquilo, a gente cuida de tudo para voc\u00ea."

    invoke-virtual {v1, v2}, Lktr;->d(Ljava/lang/String;)V

    .line 890
    invoke-virtual {v1, v5}, Lktr;->e(Z)V

    .line 891
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lktr;->b(I)V

    .line 892
    invoke-virtual {v1, v4}, Lktr;->f(Z)V

    .line 893
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 895
    new-instance v1, Lktr;

    invoke-direct {v1}, Lktr;-><init>()V

    .line 896
    const-string v2, "Cart\u00e3o Protegido"

    invoke-virtual {v1, v2}, Lktr;->f(Ljava/lang/String;)V

    .line 897
    const-string v2, "Cart\u00e3o Protegido"

    invoke-virtual {v1, v2}, Lktr;->b(Ljava/lang/String;)V

    .line 898
    const-string v2, "Tranquilidade na utiliza\u00e7\u00e3o do seu cart\u00e3o. Prote\u00e7\u00e3o e seguran\u00e7a para voc\u00ea."

    invoke-virtual {v1, v2}, Lktr;->c(Ljava/lang/String;)V

    .line 899
    const v2, 0x7f020360

    invoke-virtual {v1, v2}, Lktr;->e(I)V

    .line 900
    const v2, 0x7f020362

    invoke-virtual {v1, v2}, Lktr;->c(I)V

    .line 901
    const v2, 0x7f020361

    invoke-virtual {v1, v2}, Lktr;->d(I)V

    .line 902
    const-string v2, "Tranquilidade na utiliza\u00e7\u00e3o do seu Cart\u00e3o. Prote\u00e7\u00e3o e Seguran\u00e7a para voc\u00ea."

    invoke-virtual {v1, v2}, Lktr;->e(Ljava/lang/String;)V

    .line 903
    const-string v2, "Atitudes que parecem simples podem fazer uma grande diferen\u00e7a e contratar o Seguro Cart\u00e3o Protegido \u00e9 uma delas. Pagando muito pouco por m\u00eas voc\u00ea fica tranq\u00fcilo em caso de imprevistos."

    invoke-virtual {v1, v2}, Lktr;->d(Ljava/lang/String;)V

    .line 904
    invoke-virtual {v1, v4}, Lktr;->e(Z)V

    .line 905
    invoke-virtual {v1, v5}, Lktr;->f(Z)V

    .line 906
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lktr;->b(I)V

    .line 907
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 923
    new-instance v1, Lktr;

    invoke-direct {v1}, Lktr;-><init>()V

    .line 924
    const-string v2, "Prote\u00e7\u00e3o Funeral"

    invoke-virtual {v1, v2}, Lktr;->f(Ljava/lang/String;)V

    .line 925
    const-string v2, "Prote\u00e7\u00e3o Funeral"

    invoke-virtual {v1, v2}, Lktr;->b(Ljava/lang/String;)V

    .line 926
    const-string v2, "Prote\u00e7\u00e3o Funeral nos momentos mais dif\u00edceis."

    invoke-virtual {v1, v2}, Lktr;->c(Ljava/lang/String;)V

    .line 927
    const v2, 0x7f0203df

    invoke-virtual {v1, v2}, Lktr;->e(I)V

    .line 928
    const v2, 0x7f0203e2

    invoke-virtual {v1, v2}, Lktr;->c(I)V

    .line 929
    const v2, 0x7f0203e1

    invoke-virtual {v1, v2}, Lktr;->d(I)V

    .line 930
    const-string v2, "Conte com o Seguro Prote\u00e7\u00e3o Funeral nos momentos mais dif\u00edceis."

    invoke-virtual {v1, v2}, Lktr;->e(Ljava/lang/String;)V

    .line 931
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "O Seguro Prote\u00e7\u00e3o Funeral resolve cada detalhe do funeral em caso de morte do segurado ou de seus dependentes. S\u00e3o coberturas e assist\u00eancias para cuidar de voc\u00ea e da sua fam\u00edlia."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "line.separator"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "line.separator"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lktr;->d(Ljava/lang/String;)V

    .line 932
    invoke-virtual {v1, v4}, Lktr;->e(Z)V

    .line 933
    invoke-virtual {v1, v4}, Lktr;->f(Z)V

    .line 934
    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lktr;->b(I)V

    .line 935
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 937
    new-instance v1, Lktr;

    invoke-direct {v1}, Lktr;-><init>()V

    .line 938
    const-string v2, "RENDA_MEDICO"

    invoke-virtual {v1, v2}, Lktr;->f(Ljava/lang/String;)V

    .line 939
    const-string v2, "Seguro Renda M\u00e9dicos"

    invoke-virtual {v1, v2}, Lktr;->b(Ljava/lang/String;)V

    .line 940
    const-string v2, "O seguro ideal para os profissionais da Sa\u00fade."

    invoke-virtual {v1, v2}, Lktr;->c(Ljava/lang/String;)V

    .line 941
    const v2, 0x7f02040f

    invoke-virtual {v1, v2}, Lktr;->e(I)V

    .line 942
    const v2, 0x7f020411

    invoke-virtual {v1, v2}, Lktr;->c(I)V

    .line 943
    const v2, 0x7f020410

    invoke-virtual {v1, v2}, Lktr;->d(I)V

    .line 944
    const-string v2, "O Seguro Renda M\u00e9dicos garante tranquilidade ao profissionais da sa\u00fade."

    invoke-virtual {v1, v2}, Lktr;->e(Ljava/lang/String;)V

    .line 945
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "O Seguro Renda M\u00e9dicos cobre suas despesas em caso de acidentes pessoais cobertos e tamb\u00e9m uma prote\u00e7\u00e3o extra para custos advocat\u00edcios imprevistos no decorrer e relacionados \u00e0 carreira m\u00e9dica."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "line.separator"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "line.separator"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lktr;->d(Ljava/lang/String;)V

    .line 946
    invoke-virtual {v1, v4}, Lktr;->e(Z)V

    .line 947
    invoke-virtual {v1, v4}, Lktr;->f(Z)V

    .line 948
    invoke-virtual {v1, v5}, Lktr;->c(Z)V

    .line 949
    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lktr;->b(I)V

    .line 950
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 952
    return-object v0
.end method

.method public static synthetic r(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;)Lbr/com/zup/multistatelayout/MultiStateLayout;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->O:Lbr/com/zup/multistatelayout/MultiStateLayout;

    return-object v0
.end method

.method private r()Z
    .locals 1

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ag:Lkud;

    invoke-direct {p0, v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->e(Lkud;)Z

    move-result v0

    return v0
.end method

.method public static synthetic s(Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;)Lkpv;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->aa:Lkpv;

    return-object v0
.end method

.method private s()Z
    .locals 4

    .prologue
    .line 1095
    const/4 v0, 0x0

    .line 1097
    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ag:Lkud;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ag:Lkud;

    invoke-virtual {v1}, Lkud;->d()Lktr;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ad:Lktp;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ad:Lktp;

    invoke-virtual {v1}, Lktp;->m()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1099
    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ag:Lkud;

    invoke-virtual {v1}, Lkud;->d()Lktr;

    move-result-object v1

    invoke-virtual {v1}, Lktr;->p()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmhj;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 1101
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "scp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cartaoprotegido"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1102
    :cond_0
    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ag:Lkud;

    invoke-virtual {v1}, Lkud;->b()Lkty;

    move-result-object v1

    invoke-virtual {v1}, Lkty;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->d(Ljava/lang/String;)V

    .line 1103
    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ai:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ai:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1104
    const/4 v0, 0x1

    .line 1110
    :cond_1
    return v0
.end method

.method private t()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1114
    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ag:Lkud;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ag:Lkud;

    invoke-virtual {v1}, Lkud;->d()Lktr;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1117
    :cond_0
    :goto_0
    return v0

    .line 1115
    :cond_1
    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ag:Lkud;

    invoke-virtual {v1}, Lkud;->d()Lktr;

    move-result-object v1

    invoke-virtual {v1}, Lktr;->p()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmhj;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 1117
    iget-object v2, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ad:Lktp;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ad:Lktp;

    .line 1118
    invoke-virtual {v2}, Lktp;->m()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "vida"

    .line 1119
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "acidente"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "funeral"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "renda_medico"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private u()Z
    .locals 2

    .prologue
    .line 1245
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ag:Lkud;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ag:Lkud;

    invoke-virtual {v0}, Lkud;->d()Lktr;

    move-result-object v0

    invoke-virtual {v0}, Lktr;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmhj;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RESIDENCIAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private v()Z
    .locals 2

    .prologue
    .line 1249
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ag:Lkud;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ag:Lkud;

    invoke-virtual {v0}, Lkud;->d()Lktr;

    move-result-object v0

    invoke-virtual {v0}, Lktr;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmhj;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "acidente"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private w()Z
    .locals 2

    .prologue
    .line 1253
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ag:Lkud;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ag:Lkud;

    invoke-virtual {v0}, Lkud;->d()Lktr;

    move-result-object v0

    invoke-virtual {v0}, Lktr;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmhj;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PRESTAMISTA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private x()Z
    .locals 2

    .prologue
    .line 1257
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ag:Lkud;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ag:Lkud;

    invoke-virtual {v0}, Lkud;->d()Lktr;

    move-result-object v0

    invoke-virtual {v0}, Lktr;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmhj;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "vida"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private y()Z
    .locals 2

    .prologue
    .line 1261
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ag:Lkud;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ag:Lkud;

    invoke-virtual {v0}, Lkud;->d()Lktr;

    move-result-object v0

    invoke-virtual {v0}, Lktr;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmhj;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "medicos"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ad:Lktp;

    invoke-virtual {v1}, Lktp;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ad:Lktp;

    invoke-virtual {v1}, Lktp;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ad:Lktp;

    invoke-virtual {v1}, Lktp;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmhj;->y(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 103
    :goto_0
    return-object v0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    const-string v0, ""

    goto :goto_0
.end method

.method public a(Lknz;)V
    .locals 4

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ag:Lkud;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ag:Lkud;

    invoke-virtual {v0}, Lkud;->d()Lktr;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ag:Lkud;

    invoke-virtual {v0}, Lkud;->d()Lktr;

    move-result-object v0

    invoke-virtual {v0}, Lktr;->p()Ljava/lang/String;

    move-result-object v0

    .line 1127
    :goto_0
    invoke-direct {p0, v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1129
    sget-object v1, Llhc;->b:[I

    invoke-virtual {p1}, Lknz;->c()Lkoa;

    move-result-object v2

    invoke-virtual {v2}, Lkoa;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1229
    :cond_0
    :goto_1
    :pswitch_0
    return-void

    .line 1125
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 1131
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/santander/app/seguros/ui/consultative/activities/CoverageActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1133
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1135
    const-string v2, "Seguros_Consultivo_Coberturas_Produto_Acao"

    invoke-static {v2, v0}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    :cond_2
    const-string v0, "FIRE_INSURANCES_CERTIFICATE_NUMBER_KEY"

    iget-object v2, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ag:Lkud;

    invoke-virtual {v2}, Lkud;->b()Lkty;

    move-result-object v2

    invoke-virtual {v2}, Lkty;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1147
    const-string v0, "coverage-id"

    iget-object v2, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ag:Lkud;

    invoke-virtual {v2}, Lkud;->b()Lkty;

    move-result-object v2

    invoke-virtual {v2}, Lkty;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1148
    const-string v0, "product-code"

    iget-object v2, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ag:Lkud;

    invoke-virtual {v2}, Lkud;->g()Lkuf;

    move-result-object v2

    invoke-virtual {v2}, Lkuf;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1149
    invoke-virtual {p0, v1}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 1152
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1154
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1156
    const-string v2, "Seguros_Consultivo_Beneficiarios_Produto_Acao"

    invoke-static {v2, v0}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    :cond_3
    const-string v0, "FIRE_INSURANCES_CERTIFICATE_NUMBER_KEY"

    iget-object v2, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ag:Lkud;

    invoke-virtual {v2}, Lkud;->b()Lkty;

    move-result-object v2

    invoke-virtual {v2}, Lkty;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1160
    sget-object v0, Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ag:Lkud;

    invoke-virtual {v2}, Lkud;->b()Lkty;

    move-result-object v2

    invoke-virtual {v2}, Lkty;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1162
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->aa:Lkpv;

    if-eqz v0, :cond_4

    .line 1163
    sget-object v0, Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;->a:Ljava/lang/String;

    new-instance v2, Lejm;

    invoke-direct {v2}, Lejm;-><init>()V

    iget-object v3, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->aa:Lkpv;

    invoke-virtual {v2, v3}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1165
    :cond_4
    invoke-virtual {p0, v1}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1169
    :pswitch_3
    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ag:Lkud;

    invoke-virtual {v1}, Lkud;->b()Lkty;

    move-result-object v1

    invoke-virtual {v1}, Lkty;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1170
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1172
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1174
    const-string v2, "Seguros_Consultivo_DadosCobranca_Produto_Acao"

    invoke-static {v2, v0}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    const-string v2, "insurance-name"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1178
    :cond_5
    const-string v0, "FIRE_INSURANCES_CERTIFICATE_NUMBER_KEY"

    iget-object v2, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ag:Lkud;

    invoke-virtual {v2}, Lkud;->b()Lkty;

    move-result-object v2

    invoke-virtual {v2}, Lkty;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1179
    invoke-virtual {p0, v1}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1184
    :pswitch_4
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->u()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1185
    const-string v0, "Seguros_Cancelamento_Residencia_Acao"

    const-string v1, "BotaoCancelamento"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->a()Ljava/lang/String;

    move-result-object v0

    .line 1187
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1188
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1189
    const-string v2, "residence-address"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1191
    :cond_6
    invoke-virtual {p0, v1}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1192
    :cond_7
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->x()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1194
    :cond_8
    invoke-static {}, Lmzr;->a()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1195
    const-string v0, "Seguros_Cancelamento_Vida_AP_Acao"

    const-string v1, "BotaoCancelamento"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1196
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1197
    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ag:Lkud;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ag:Lkud;

    invoke-virtual {v1}, Lkud;->b()Lkty;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ag:Lkud;

    invoke-virtual {v1}, Lkud;->b()Lkty;

    move-result-object v1

    invoke-virtual {v1}, Lkty;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1198
    const-string v1, "certificate-key"

    iget-object v2, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ag:Lkud;

    invoke-virtual {v2}, Lkud;->b()Lkty;

    move-result-object v2

    invoke-virtual {v2}, Lkty;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1200
    :cond_9
    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ag:Lkud;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ag:Lkud;

    invoke-virtual {v1}, Lkud;->b()Lkty;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ag:Lkud;

    invoke-virtual {v1}, Lkud;->b()Lkty;

    move-result-object v1

    invoke-virtual {v1}, Lkty;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 1201
    sget-object v1, Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ag:Lkud;

    invoke-virtual {v2}, Lkud;->b()Lkty;

    move-result-object v2

    invoke-virtual {v2}, Lkty;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1204
    :cond_a
    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ag:Lkud;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ag:Lkud;

    invoke-virtual {v1}, Lkud;->b()Lkty;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ag:Lkud;

    invoke-virtual {v1}, Lkud;->b()Lkty;

    move-result-object v1

    invoke-virtual {v1}, Lkty;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1205
    const-string v1, "family-key"

    iget-object v2, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ag:Lkud;

    invoke-virtual {v2}, Lkud;->d()Lktr;

    move-result-object v2

    invoke-virtual {v2}, Lktr;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1208
    :cond_b
    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ag:Lkud;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ag:Lkud;

    invoke-virtual {v1}, Lkud;->i()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ag:Lkud;

    invoke-virtual {v1}, Lkud;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 1209
    const-string v1, "position-number"

    iget-object v2, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ag:Lkud;

    invoke-virtual {v2}, Lkud;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1212
    :cond_c
    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ag:Lkud;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ag:Lkud;

    invoke-virtual {v1}, Lkud;->b()Lkty;

    move-result-object v1

    invoke-virtual {v1}, Lkty;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ag:Lkud;

    invoke-virtual {v1}, Lkud;->b()Lkty;

    move-result-object v1

    invoke-virtual {v1}, Lkty;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 1213
    const-string v1, "certificate-id"

    iget-object v2, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ag:Lkud;

    invoke-virtual {v2}, Lkud;->b()Lkty;

    move-result-object v2

    invoke-virtual {v2}, Lkty;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1217
    :cond_d
    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1219
    :cond_e
    invoke-static {p0}, Lmhj;->c(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 1129
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lkud;)Z
    .locals 1

    .prologue
    .line 108
    invoke-static {}, Lmzr;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lkud;->b()Lkty;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lkud;->b()Lkty;

    move-result-object v0

    invoke-virtual {v0}, Lkty;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkui;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 1300
    invoke-super {p0}, Lgrs;->onBackPressed()V

    .line 1301
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->startActivity(Landroid/content/Intent;)V

    .line 1302
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 202
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 203
    const v0, 0x7f04008a

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->setContentView(I)V

    .line 204
    new-instance v0, Lkzf;

    invoke-direct {v0}, Lkzf;-><init>()V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ab:Lkze;

    .line 205
    new-instance v0, Lkxw;

    invoke-direct {v0}, Lkxw;-><init>()V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->ac:Lkxv;

    .line 206
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->b()V

    .line 207
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->g()V

    .line 208
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/consultative/activities/MyInsurancesV2Activity;->h()V

    .line 209
    return-void
.end method
