.class public Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;
.super Lgrs;
.source "SourceFile"


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;

.field private C:Landroid/widget/ImageView;

.field private D:Landroid/widget/LinearLayout;

.field private E:Landroid/app/Dialog;

.field private F:Z

.field private G:Lkzk;

.field private H:Lkyy;

.field private I:Landroid/widget/Button;

.field private J:Z

.field private K:Landroid/widget/TextView;

.field private L:Landroid/widget/TextView;

.field private M:Landroid/widget/TextView;

.field private N:Landroid/widget/TextView;

.field private O:Landroid/widget/TextView;

.field private P:Landroid/widget/TextView;

.field private Q:Landroid/widget/TextView;

.field private R:Landroid/widget/TextView;

.field private S:Landroid/widget/TextView;

.field private T:Landroid/widget/TextView;

.field private U:Landroid/widget/LinearLayout;

.field private V:Landroid/widget/ImageView;

.field private W:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private X:Lkvr;

.field private Y:Lkvp;

.field private Z:Lkwy;

.field public a:Lbr/com/zup/multistatelayout/MultiStateLayout;

.field private aa:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkvu;",
            ">;"
        }
    .end annotation
.end field

.field private ab:Lkvt;

.field private ac:I

.field private ad:I

.field private ae:Z

.field private af:Z

.field private ag:Llyp;

.field private ah:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkvs;",
            ">;"
        }
    .end annotation
.end field

.field private ai:Llut;

.field private aj:Lkwv;

.field private ak:Z

.field private al:Z

.field public b:Lbr/com/zup/multistatelayout/MultiStateLayout;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkvs;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/widget/TextView;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Lcom/santander/app/seguros/ui/widgets/MultiViewPager;

.field private w:Lme/relex/circleindicator/CircleIndicator;

.field private x:Landroid/view/View;

.field private y:Landroid/widget/RelativeLayout;

.field private z:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 95
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 112
    iput-boolean v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->F:Z

    .line 145
    iput v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->ad:I

    .line 147
    iput-boolean v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->ae:Z

    .line 148
    iput-boolean v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->af:Z

    .line 153
    iput-boolean v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->ak:Z

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;I)I
    .locals 0

    .prologue
    .line 95
    iput p1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->ac:I

    return p1
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkwj;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 262
    if-eqz p1, :cond_1

    .line 263
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkwj;

    .line 264
    invoke-virtual {v0}, Lkwj;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 265
    invoke-virtual {v0}, Lkwj;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 269
    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private a(ILjava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lkvs;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lkvs;",
            ">;"
        }
    .end annotation

    .prologue
    .line 355
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 356
    if-eqz p2, :cond_2

    .line 357
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 358
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvs;

    .line 365
    invoke-virtual {v0}, Lkvs;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lkvs;->c()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 366
    invoke-virtual {v0}, Lkvs;->g()Ljava/lang/String;

    move-result-object v3

    const-string v4, "001"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lkvs;->c()Ljava/lang/String;

    move-result-object v3

    const-string v4, "02"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 367
    :cond_0
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 372
    :cond_2
    return-object v2
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkuw;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lkwj;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lkwk;",
            ">;"
        }
    .end annotation

    .prologue
    .line 800
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 801
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkuw;

    .line 803
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "D"

    aput-object v5, v1, v4

    invoke-virtual {v0, v1}, Lkuw;->a([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 804
    invoke-virtual {v0}, Lkuw;->e()Ljava/lang/String;

    move-result-object v1

    const-string v4, " "

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "090"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 805
    invoke-direct {p0, p2, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->a(Ljava/util/List;Lkuw;)Ljava/util/List;

    move-result-object v1

    .line 806
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 807
    new-instance v1, Lkwk;

    invoke-direct {v1}, Lkwk;-><init>()V

    .line 808
    invoke-virtual {v1, v0}, Lkwk;->a(Lkuw;)V

    .line 809
    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Lkwk;->a(I)V

    .line 810
    invoke-virtual {v0}, Lkuw;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lkwk;->b(Ljava/lang/String;)V

    .line 811
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 813
    :cond_1
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 816
    :cond_2
    new-instance v4, Lkwk;

    invoke-direct {v4}, Lkwk;-><init>()V

    .line 817
    invoke-virtual {v0}, Lkuw;->e()Ljava/lang/String;

    move-result-object v1

    const-string v5, " "

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmhj;->B(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 818
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0x1f4

    if-lt v5, v6, :cond_4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v5, 0x257

    if-gt v1, v5, :cond_4

    .line 819
    invoke-virtual {v0}, Lkuw;->e()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->b(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 820
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    :goto_1
    invoke-virtual {v4, v1}, Lkwk;->b(Ljava/lang/String;)V

    .line 824
    :goto_2
    invoke-virtual {v4, v0}, Lkwk;->a(Lkuw;)V

    .line 825
    invoke-virtual {v0}, Lkuw;->e()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->a(Ljava/util/List;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Lkwk;->a(I)V

    .line 826
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 820
    :cond_3
    invoke-virtual {v0}, Lkuw;->f()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 822
    :cond_4
    invoke-virtual {v0}, Lkuw;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lkwk;->b(Ljava/lang/String;)V

    goto :goto_2

    .line 831
    :cond_5
    invoke-direct {p0, v2}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->a(Ljava/util/List;)V

    .line 833
    return-object v2
.end method

.method private a(Ljava/util/List;Lkuw;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkwj;",
            ">;",
            "Lkuw;",
            ")",
            "Ljava/util/List",
            "<",
            "Lkwk;",
            ">;"
        }
    .end annotation

    .prologue
    .line 848
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 850
    if-eqz p1, :cond_1

    .line 851
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkwj;

    .line 852
    invoke-virtual {v0}, Lkwj;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "090"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 853
    new-instance v3, Lkwk;

    invoke-direct {v3}, Lkwk;-><init>()V

    .line 854
    invoke-virtual {v3, p2}, Lkwk;->a(Lkuw;)V

    .line 855
    invoke-virtual {v0}, Lkwj;->a()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lkwk;->a(I)V

    .line 856
    invoke-virtual {v0}, Lkwj;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lkwk;->b(Ljava/lang/String;)V

    .line 857
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 862
    :cond_1
    return-object v1
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;Lkvr;)Lkvr;
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->X:Lkvr;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;Llyp;)Llyp;
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->ag:Llyp;

    return-object p1
.end method

.method private a(I)V
    .locals 4

    .prologue
    .line 187
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->G:Lkzk;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->Y:Lkvp;

    new-instance v2, Llro;

    invoke-direct {v2, p0}, Llro;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;)V

    new-instance v3, Llrz;

    invoke-direct {v3, p0}, Llrz;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;)V

    invoke-interface {v0, v1, v2, v3}, Lkzk;->b(Lkvp;Lkxl;Lkxl;)V

    .line 213
    return-void
.end method

.method private a(IILjava/lang/String;)V
    .locals 3

    .prologue
    .line 669
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 671
    if-le p1, p2, :cond_0

    .line 672
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e008e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 679
    :goto_0
    return-void

    .line 673
    :cond_0
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->o()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 674
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e009b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 677
    :cond_1
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e006a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->k()V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;IILjava/lang/String;)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0, p1, p2, p3}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->a(IILjava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->b(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;Lkvx;)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->a(Lkvx;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkwk;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 235
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 237
    :try_start_0
    const-string v0, "jsons/sinister/document_info.json"

    invoke-static {p0, v0}, Lmhj;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 238
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 239
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 240
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 241
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 243
    new-instance v1, Lejm;

    invoke-direct {v1}, Lejm;-><init>()V

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-class v6, Lkoc;

    invoke-virtual {v1, v5, v6}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkoc;

    .line 244
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 254
    :catch_0
    move-exception v0

    .line 255
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 259
    :cond_0
    return-void

    .line 247
    :cond_1
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkwk;

    .line 248
    invoke-virtual {v0}, Lkwk;->d()Lkuw;

    move-result-object v1

    invoke-virtual {v1}, Lkuw;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lkwk;->d()Lkuw;

    move-result-object v1

    invoke-virtual {v1}, Lkuw;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkoc;

    invoke-virtual {v1}, Lkoc;->a()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Lkwk;->b(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v0}, Lkwk;->d()Lkuw;

    move-result-object v1

    invoke-virtual {v0}, Lkwk;->d()Lkuw;

    move-result-object v4

    invoke-virtual {v4}, Lkuw;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lkwk;->d()Lkuw;

    move-result-object v0

    invoke-virtual {v0}, Lkuw;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkoc;

    invoke-virtual {v0}, Lkoc;->c()Z

    move-result v0

    :goto_3
    invoke-virtual {v1, v0}, Lkuw;->a(Z)V

    goto :goto_1

    .line 248
    :cond_2
    invoke-virtual {v0}, Lkwk;->g()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_2

    .line 249
    :cond_3
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private a(Lkvx;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1208
    if-eqz p1, :cond_0

    .line 1210
    sget-object v0, Llry;->a:[I

    invoke-virtual {p1}, Lkvx;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1253
    :cond_0
    :goto_0
    return-void

    .line 1214
    :pswitch_0
    iget-boolean v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->F:Z

    if-nez v0, :cond_1

    .line 1215
    const-string v0, "Seguros_Sinistro_MeusSinistros_Carrossel_Acao"

    const-string v1, "Avisado"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    iput-boolean v2, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->F:Z

    .line 1218
    :cond_1
    const-string v0, "Seguros_Sinistro_MeusSinistros_Carrossel_SetaDetalhes_Acao"

    const-string v1, "Avisado"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1221
    :pswitch_1
    iget-boolean v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->F:Z

    if-nez v0, :cond_2

    .line 1222
    const-string v0, "Seguros_Sinistro_MeusSinistros_Carrossel_Acao"

    const-string v1, "Vistoria"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    iput-boolean v2, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->F:Z

    .line 1225
    :cond_2
    const-string v0, "Seguros_Sinistro_MeusSinistros_Carrossel_SetaDetalhes_Acao"

    const-string v1, "Vistoria"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1228
    :pswitch_2
    iget-boolean v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->F:Z

    if-nez v0, :cond_3

    .line 1229
    const-string v0, "Seguros_Sinistro_MeusSinistros_Carrossel_Acao"

    const-string v1, "Documentacao"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1230
    iput-boolean v2, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->F:Z

    .line 1232
    :cond_3
    const-string v0, "Seguros_Sinistro_MeusSinistros_Carrossel_SetaDetalhes_Acao"

    const-string v1, "Documentacao"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1235
    :pswitch_3
    iget-boolean v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->F:Z

    if-nez v0, :cond_4

    .line 1236
    const-string v0, "Seguros_Sinistro_MeusSinistros_Carrossel_Acao"

    const-string v1, "Analise"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    iput-boolean v2, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->F:Z

    .line 1239
    :cond_4
    const-string v0, "Seguros_Sinistro_MeusSinistros_Carrossel_SetaDetalhes_Acao"

    const-string v1, "Analise"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1242
    :pswitch_4
    iget-boolean v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->F:Z

    if-nez v0, :cond_5

    .line 1243
    const-string v0, "Seguros_Sinistro_MeusSinistros_Carrossel_Acao"

    const-string v1, "Concluido"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1244
    iput-boolean v2, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->F:Z

    .line 1246
    :cond_5
    const-string v0, "Seguros_Sinistro_MeusSinistros_Carrossel_SetaDetalhes_Acao"

    const-string v1, "Concluido"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1210
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;Z)Z
    .locals 0

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->ae:Z

    return p1
.end method

.method private b(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkwj;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 837
    if-eqz p1, :cond_1

    .line 838
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkwj;

    .line 839
    invoke-virtual {v0}, Lkwj;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 840
    invoke-virtual {v0}, Lkwj;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmhj;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 844
    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public static synthetic b(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->f()V

    return-void
.end method

.method public static synthetic b(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;I)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->a(I)V

    return-void
.end method

.method public static synthetic b(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->d(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic b(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;Z)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->b(Z)V

    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkwk;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 275
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->ah:Ljava/util/List;

    if-nez v0, :cond_2

    .line 276
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->ah:Ljava/util/List;

    .line 282
    :goto_0
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 283
    new-instance v0, Lkvs;

    invoke-direct {v0}, Lkvs;-><init>()V

    .line 284
    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->Y:Lkvp;

    invoke-virtual {v1}, Lkvp;->e()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkvs;->a(Ljava/util/Date;)V

    .line 285
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090890

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkvs;->d(Ljava/lang/String;)V

    .line 286
    invoke-virtual {v0, p1}, Lkvs;->a(Ljava/util/List;)V

    .line 287
    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->ah:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    :cond_0
    iget v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->ad:I

    iget v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->ac:I

    if-le v0, v1, :cond_4

    .line 291
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->ah:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->ah:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 292
    :cond_1
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->Y:Lkvp;

    iget-object v2, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->X:Lkvr;

    invoke-static {v0, v1, v2}, Llwr;->a(Ljava/util/List;Lkvp;Lkvr;)Llwr;

    move-result-object v0

    const-string v1, "sinister-details-fragment"

    iget-boolean v2, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->ae:Z

    invoke-virtual {p0, v0, v1, v2}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)V

    .line 301
    :goto_1
    return-void

    .line 278
    :cond_2
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->g()V

    goto :goto_0

    .line 294
    :cond_3
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->ah:Ljava/util/List;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->Y:Lkvp;

    iget-object v2, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->X:Lkvr;

    invoke-static {v0, v1, v2}, Llwr;->a(Ljava/util/List;Lkvp;Lkvr;)Llwr;

    move-result-object v0

    const-string v1, "sinister-details-fragment"

    iget-boolean v2, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->ae:Z

    invoke-virtual {p0, v0, v1, v2}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)V

    goto :goto_1

    .line 297
    :cond_4
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->ah:Ljava/util/List;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->Y:Lkvp;

    iget-object v2, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->X:Lkvr;

    invoke-static {v0, v1, v2}, Llwr;->a(Ljava/util/List;Lkvp;Lkvr;)Llwr;

    move-result-object v0

    const-string v1, "sinister-details-fragment"

    iget-boolean v2, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->ae:Z

    invoke-virtual {p0, v0, v1, v2}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method private b(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 891
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 893
    if-eqz p1, :cond_0

    .line 894
    aput v1, v0, v3

    .line 895
    aput v2, v0, v4

    .line 901
    :goto_0
    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->x:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-static {v1, v2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 902
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 903
    new-instance v1, Llrr;

    invoke-direct {v1, p0, p1}, Llrr;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 934
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 935
    return-void

    .line 897
    :cond_0
    aput v2, v0, v3

    .line 898
    aput v1, v0, v4

    goto :goto_0
.end method

.method private b(I)Z
    .locals 2

    .prologue
    .line 318
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->e(I)Lkvu;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->e(I)Lkvu;

    move-result-object v0

    invoke-virtual {v0}, Lkvu;->e()Lkvx;

    move-result-object v0

    sget-object v1, Lkvx;->DOCUMENTATION:Lkvx;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic c(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;I)I
    .locals 0

    .prologue
    .line 95
    iput p1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->ad:I

    return p1
.end method

.method public static synthetic c(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;)Lkvr;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->X:Lkvr;

    return-object v0
.end method

.method public static synthetic c(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;Z)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->c(Z)V

    return-void
.end method

.method private c(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkvu;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 531
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->c:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    move v2, v3

    .line 532
    :goto_0
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    .line 534
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvs;

    .line 535
    invoke-virtual {v0}, Lkvs;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ""

    move-object v4, v1

    .line 537
    :goto_1
    invoke-virtual {v0}, Lkvs;->c()Ljava/lang/String;

    move-result-object v1

    const-string v5, "02"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "002"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->n()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 539
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkvu;

    .line 540
    invoke-virtual {v1}, Lkvu;->e()Lkvx;

    move-result-object v6

    sget-object v7, Lkvx;->SURVEY:Lkvx;

    if-ne v6, v7, :cond_0

    .line 541
    invoke-virtual {v1, v3}, Lkvu;->b(Z)V

    goto :goto_2

    .line 535
    :cond_1
    invoke-virtual {v0}, Lkvs;->d()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x3

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    goto :goto_1

    .line 546
    :cond_2
    invoke-virtual {v0}, Lkvs;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "03"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "003"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 547
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvu;

    .line 548
    invoke-virtual {v0}, Lkvu;->e()Lkvx;

    move-result-object v4

    sget-object v5, Lkvx;->DOCUMENTATION:Lkvx;

    if-ne v4, v5, :cond_3

    .line 549
    invoke-virtual {v0, v3}, Lkvu;->b(Z)V

    goto :goto_3

    .line 532
    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 556
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 558
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvu;

    .line 559
    invoke-virtual {v0}, Lkvu;->e()Lkvx;

    move-result-object v2

    sget-object v4, Lkvx;->DOCUMENTATION:Lkvx;

    if-ne v2, v4, :cond_6

    .line 560
    invoke-virtual {v0}, Lkvu;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->al:Z

    goto :goto_4

    .line 565
    :cond_7
    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->d:Landroid/widget/TextView;

    iget v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->ac:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvu;

    invoke-virtual {v0}, Lkvu;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 569
    new-instance v0, Llut;

    invoke-direct {v0, p1, p0}, Llut;-><init>(Ljava/util/List;Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;)V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->ai:Llut;

    .line 570
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->ai:Llut;

    iget v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->ac:I

    invoke-virtual {v0, v1}, Llut;->a(I)V

    .line 571
    iget v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->ac:I

    invoke-direct {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->f(I)V

    .line 575
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->g:Lcom/santander/app/seguros/ui/widgets/MultiViewPager;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->ai:Llut;

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/MultiViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 576
    iget v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->ac:I

    iput v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->ad:I

    .line 577
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->g:Lcom/santander/app/seguros/ui/widgets/MultiViewPager;

    new-instance v1, Lmhy;

    invoke-direct {v1}, Lmhy;-><init>()V

    invoke-virtual {v0, v3, v1}, Lcom/santander/app/seguros/ui/widgets/MultiViewPager;->setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;)V

    .line 578
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->g:Lcom/santander/app/seguros/ui/widgets/MultiViewPager;

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-virtual {v0, v2, v3}, Lcom/santander/app/seguros/ui/widgets/MultiViewPager;->setScrollDurationFactor(D)V

    .line 579
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->w:Lme/relex/circleindicator/CircleIndicator;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->g:Lcom/santander/app/seguros/ui/widgets/MultiViewPager;

    invoke-virtual {v0, v1}, Lme/relex/circleindicator/CircleIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 580
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->W:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_8

    .line 581
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->g:Lcom/santander/app/seguros/ui/widgets/MultiViewPager;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->W:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/MultiViewPager;->removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 582
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->W:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 585
    :cond_8
    new-instance v0, Llsc;

    invoke-direct {v0, p0, p1}, Llsc;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->W:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 615
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->g:Lcom/santander/app/seguros/ui/widgets/MultiViewPager;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->W:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/MultiViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 617
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->g:Lcom/santander/app/seguros/ui/widgets/MultiViewPager;

    iget v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->ac:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/santander/app/seguros/ui/widgets/MultiViewPager;->setCurrentItem(IZ)V

    .line 619
    :cond_9
    return-void
.end method

.method private c(Z)V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v6, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x2

    .line 938
    if-eqz p1, :cond_0

    .line 939
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 940
    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->z:Landroid/widget/ImageView;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, v10, [F

    iget-object v4, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->B:Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;

    invoke-virtual {v4}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->U:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getTop()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->z:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    aput v4, v3, v9

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 941
    iget-object v2, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->D:Landroid/widget/LinearLayout;

    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v4, v10, [F

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a011c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    aput v5, v4, v9

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 942
    iget-object v3, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->A:Landroid/widget/TextView;

    const-string v4, "alpha"

    new-array v5, v8, [F

    fill-array-data v5, :array_0

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 943
    iget-object v4, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->z:Landroid/widget/ImageView;

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v8, [F

    fill-array-data v6, :array_1

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 944
    iget-object v5, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->z:Landroid/widget/ImageView;

    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v7, v8, [F

    fill-array-data v7, :array_2

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 945
    const/4 v6, 0x5

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v3, v6, v9

    aput-object v1, v6, v10

    aput-object v2, v6, v8

    aput-object v4, v6, v11

    const/4 v1, 0x4

    aput-object v5, v6, v1

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 947
    new-instance v1, Llrs;

    invoke-direct {v1, p0}, Llrs;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 969
    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->A:Landroid/widget/TextView;

    invoke-static {v1}, Lmhj;->b(Landroid/view/View;)V

    .line 970
    invoke-direct {p0, v10}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->d(Z)V

    .line 971
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1007
    :goto_0
    return-void

    .line 975
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 976
    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->A:Landroid/widget/TextView;

    const-string v2, "alpha"

    new-array v3, v8, [F

    fill-array-data v3, :array_3

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 977
    iget-object v2, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->z:Landroid/widget/ImageView;

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v10, [F

    aput v6, v4, v9

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 978
    iget-object v3, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->D:Landroid/widget/LinearLayout;

    sget-object v4, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v5, v10, [F

    aput v6, v5, v9

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 979
    iget-object v4, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->z:Landroid/widget/ImageView;

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v8, [F

    fill-array-data v6, :array_4

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 980
    iget-object v5, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->z:Landroid/widget/ImageView;

    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v7, v8, [F

    fill-array-data v7, :array_5

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 981
    const/4 v6, 0x5

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v1, v6, v9

    aput-object v2, v6, v10

    aput-object v3, v6, v8

    aput-object v4, v6, v11

    const/4 v1, 0x4

    aput-object v5, v6, v1

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 983
    new-instance v1, Llrt;

    invoke-direct {v1, p0}, Llrt;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1003
    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->A:Landroid/widget/TextView;

    invoke-static {v1}, Lmhj;->a(Landroid/view/View;)V

    .line 1004
    invoke-direct {p0, v9}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->d(Z)V

    .line 1005
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 942
    nop

    :array_0
    .array-data 4
        0x3ecccccd    # 0.4f
        0x0
    .end array-data

    .line 943
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
    .end array-data

    .line 944
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
    .end array-data

    .line 976
    :array_3
    .array-data 4
        0x3ecccccd    # 0.4f
        0x3f800000    # 1.0f
    .end array-data

    .line 979
    :array_4
    .array-data 4
        0x3f99999a    # 1.2f
        0x3f800000    # 1.0f
    .end array-data

    .line 980
    :array_5
    .array-data 4
        0x3f99999a    # 1.2f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private d(I)V
    .locals 3

    .prologue
    .line 322
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->a(Z)V

    .line 324
    iget v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->ac:I

    if-gt p1, v0, :cond_3

    .line 325
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->c:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->a(ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->ah:Ljava/util/List;

    .line 327
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->o()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 328
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->ah:Ljava/util/List;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->Y:Lkvp;

    iget-object v2, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->X:Lkvr;

    invoke-static {v0, v1, v2}, Llvz;->a(Ljava/util/List;Lkvp;Lkvr;)Llvz;

    move-result-object v0

    const-string v1, "completed-sinister-fragment"

    iget-boolean v2, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->ae:Z

    invoke-virtual {p0, v0, v1, v2}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)V

    .line 329
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->af:Z

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 332
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->c()V

    goto :goto_0

    .line 334
    :cond_2
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->ah:Ljava/util/List;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->Y:Lkvp;

    invoke-static {v0, v1}, Llwr;->a(Ljava/util/List;Lkvp;)Llwr;

    move-result-object v0

    const-string v1, "sinister-details-fragment"

    iget-boolean v2, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->ae:Z

    invoke-virtual {p0, v0, v1, v2}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)V

    goto :goto_0

    .line 339
    :cond_3
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->b(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 340
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->c:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->a(ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->ah:Ljava/util/List;

    .line 341
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->c()V

    goto :goto_0

    .line 343
    :cond_4
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->Y:Lkvp;

    iget-object v2, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->X:Lkvr;

    invoke-static {v0, v1, v2}, Llwr;->a(Ljava/util/List;Lkvp;Lkvr;)Llwr;

    move-result-object v0

    const-string v1, "sinister-details-fragment"

    iget-boolean v2, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->ae:Z

    invoke-virtual {p0, v0, v1, v2}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static synthetic d(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->i()V

    return-void
.end method

.method public static synthetic d(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;I)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->f(I)V

    return-void
.end method

.method public static synthetic d(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;Z)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->e(Z)V

    return-void
.end method

.method private d(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkuw;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 751
    new-instance v0, Lkwo;

    invoke-direct {v0}, Lkwo;-><init>()V

    .line 752
    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->Y:Lkvp;

    invoke-virtual {v1}, Lkvp;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkwo;->a(Ljava/lang/String;)V

    .line 753
    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->Y:Lkvp;

    invoke-virtual {v1}, Lkvp;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkwo;->b(Ljava/lang/String;)V

    .line 754
    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->Y:Lkvp;

    invoke-virtual {v1}, Lkvp;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkwo;->c(Ljava/lang/String;)V

    .line 755
    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->Y:Lkvp;

    invoke-virtual {v1}, Lkvp;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkwo;->d(Ljava/lang/String;)V

    .line 756
    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->Y:Lkvp;

    invoke-virtual {v1}, Lkvp;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkwo;->e(Ljava/lang/String;)V

    .line 757
    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->H:Lkyy;

    new-instance v2, Llsg;

    invoke-direct {v2, p0, p1}, Llsg;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;Ljava/util/List;)V

    new-instance v3, Llrp;

    invoke-direct {v3, p0, p1}, Llrp;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;Ljava/util/List;)V

    invoke-interface {v1, v0, v2, v3}, Lkyy;->a(Lkwo;Lkxl;Lkxl;)V

    .line 790
    return-void
.end method

.method private d(Z)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x190

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 1010
    if-eqz p1, :cond_0

    .line 1012
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->V:Landroid/widget/ImageView;

    sget-object v1, Landroid/view/View;->ROTATION:Landroid/util/Property;

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v3, v2, v4

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1013
    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1014
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1021
    :goto_0
    return-void

    .line 1017
    :cond_0
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->V:Landroid/widget/ImageView;

    sget-object v1, Landroid/view/View;->ROTATION:Landroid/util/Property;

    new-array v2, v2, [F

    const/high16 v3, 0x43340000    # 180.0f

    aput v3, v2, v4

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1018
    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1019
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method public static synthetic e(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;)I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->ac:I

    return v0
.end method

.method private e(I)Lkvu;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->aa:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->aa:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->aa:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvu;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->Y:Lkvp;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->C:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 178
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->p()V

    .line 179
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->h()V

    .line 183
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->b:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->EMPTY:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    goto :goto_0
.end method

.method public static synthetic e(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;I)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->d(I)V

    return-void
.end method

.method private e(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1119
    if-eqz p1, :cond_0

    .line 1120
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->x:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 1121
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->y:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 1126
    :goto_0
    return-void

    .line 1123
    :cond_0
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->x:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 1124
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->y:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    goto :goto_0
.end method

.method public static synthetic e(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;Z)Z
    .locals 0

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->ak:Z

    return p1
.end method

.method public static synthetic f(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;)I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->ad:I

    return v0
.end method

.method public static synthetic f(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;I)Lkvx;
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->g(I)Lkvx;

    move-result-object v0

    return-object v0
.end method

.method private f()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 216
    const-string v1, ""

    .line 217
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvs;

    .line 219
    invoke-virtual {v0}, Lkvs;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmhj;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "02"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 220
    invoke-virtual {v0}, Lkvs;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmhj;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, ""

    .line 221
    :goto_1
    const-string v4, "005"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 222
    invoke-virtual {v0}, Lkvs;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->N:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    return-void

    .line 220
    :cond_1
    invoke-virtual {v0}, Lkvs;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmhj;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 224
    :cond_2
    const-string v4, "003"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 225
    invoke-virtual {v0}, Lkvs;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v1, v0

    .line 228
    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method

.method private f(I)V
    .locals 5

    .prologue
    const v4, 0x7f0e008e

    const v3, 0x7f0e006a

    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 687
    if-nez p1, :cond_0

    .line 688
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 693
    :goto_0
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->aa:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    .line 694
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 699
    :goto_1
    iget v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->ac:I

    if-le p1, v0, :cond_2

    .line 700
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->f:Landroid/view/View;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 701
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->e:Landroid/view/View;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 706
    :goto_2
    return-void

    .line 690
    :cond_0
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 696
    :cond_1
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 703
    :cond_2
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->f:Landroid/view/View;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 704
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->e:Landroid/view/View;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_2
.end method

.method public static synthetic g(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->W:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-object v0
.end method

.method private g(I)Lkvx;
    .locals 1

    .prologue
    .line 1182
    packed-switch p1, :pswitch_data_0

    .line 1200
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1185
    :pswitch_0
    sget-object v0, Lkvx;->ADVISED:Lkvx;

    goto :goto_0

    .line 1188
    :pswitch_1
    sget-object v0, Lkvx;->SURVEY:Lkvx;

    goto :goto_0

    .line 1191
    :pswitch_2
    sget-object v0, Lkvx;->DOCUMENTATION:Lkvx;

    goto :goto_0

    .line 1194
    :pswitch_3
    sget-object v0, Lkvx;->ANALYSIS:Lkvx;

    goto :goto_0

    .line 1197
    :pswitch_4
    sget-object v0, Lkvx;->COMPLETED:Lkvx;

    goto :goto_0

    .line 1182
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private g()V
    .locals 3

    .prologue
    .line 308
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->ah:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvs;

    .line 309
    invoke-virtual {v0}, Lkvs;->a()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 311
    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->ah:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 315
    :cond_1
    return-void
.end method

.method public static synthetic g(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;I)Z
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->b(I)Z

    move-result v0

    return v0
.end method

.method public static synthetic h(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;)Lcom/santander/app/seguros/ui/widgets/MultiViewPager;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->g:Lcom/santander/app/seguros/ui/widgets/MultiViewPager;

    return-object v0
.end method

.method private h()V
    .locals 4

    .prologue
    .line 376
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->b:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->LOADING:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 378
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->G:Lkzk;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->Y:Lkvp;

    new-instance v2, Llsa;

    invoke-direct {v2, p0}, Llsa;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;)V

    new-instance v3, Llsb;

    invoke-direct {v3, p0}, Llsb;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;)V

    invoke-interface {v0, v1, v2, v3}, Lkzk;->a(Lkvp;Lkxl;Lkxl;)V

    .line 413
    return-void
.end method

.method public static synthetic i(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->E:Landroid/app/Dialog;

    return-object v0
.end method

.method private i()V
    .locals 8

    .prologue
    const v7, 0x7f090305

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 434
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->P:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->Y:Lkvp;

    invoke-virtual {v1}, Lkvp;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->Q:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->Y:Lkvp;

    invoke-virtual {v1}, Lkvp;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->Y:Lkvp;

    invoke-virtual {v0}, Lkvp;->e()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->S:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->Y:Lkvp;

    invoke-virtual {v1}, Lkvp;->e()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lmhj;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->T:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->Y:Lkvp;

    invoke-virtual {v1}, Lkvp;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 441
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->X:Lkvr;

    invoke-virtual {v0}, Lkvr;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 442
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->A:Landroid/widget/TextView;

    const-string v1, "%s %s"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->X:Lkvr;

    invoke-virtual {v3}, Lkvr;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmhj;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 443
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->O:Landroid/widget/TextView;

    const-string v1, "%s %s"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->X:Lkvr;

    invoke-virtual {v3}, Lkvr;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmhj;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    :cond_1
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->K:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->X:Lkvr;

    invoke-virtual {v1}, Lkvr;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 449
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->X:Lkvr;

    invoke-virtual {v0}, Lkvr;->B()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 450
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->X:Lkvr;

    invoke-virtual {v0}, Lkvr;->B()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmhj;->A(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 451
    if-eqz v0, :cond_4

    .line 452
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->L:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->X:Lkvr;

    invoke-virtual {v1}, Lkvr;->B()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmhj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 458
    :cond_2
    :goto_0
    const-string v0, "%s, %s,\n%s-%s-%s"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->X:Lkvr;

    invoke-virtual {v2}, Lkvr;->r()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmhj;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->X:Lkvr;

    invoke-virtual {v2}, Lkvr;->s()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmhj;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->X:Lkvr;

    .line 459
    invoke-virtual {v2}, Lkvr;->u()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmhj;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->X:Lkvr;

    invoke-virtual {v3}, Lkvr;->v()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmhj;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->X:Lkvr;

    invoke-virtual {v3}, Lkvr;->w()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmhj;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 458
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmhj;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 460
    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 461
    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->M:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 463
    :cond_3
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->N:Landroid/widget/TextView;

    const-string v1, "..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    return-void

    .line 454
    :cond_4
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->L:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->X:Lkvr;

    invoke-virtual {v1}, Lkvr;->B()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public static synthetic j(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->x:Landroid/view/View;

    return-object v0
.end method

.method private j()V
    .locals 1

    .prologue
    .line 468
    const v0, 0x7f10030d

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->d:Landroid/widget/TextView;

    .line 469
    const v0, 0x7f10038b

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->e:Landroid/view/View;

    .line 470
    const v0, 0x7f10038c

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->f:Landroid/view/View;

    .line 471
    const v0, 0x7f100408

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/MultiViewPager;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->g:Lcom/santander/app/seguros/ui/widgets/MultiViewPager;

    .line 472
    const v0, 0x7f10040a

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lme/relex/circleindicator/CircleIndicator;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->w:Lme/relex/circleindicator/CircleIndicator;

    .line 473
    const v0, 0x7f10040b

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/zup/multistatelayout/MultiStateLayout;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->a:Lbr/com/zup/multistatelayout/MultiStateLayout;

    .line 474
    const v0, 0x7f10040c

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->x:Landroid/view/View;

    .line 475
    const v0, 0x7f100406

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->y:Landroid/widget/RelativeLayout;

    .line 476
    const v0, 0x7f100410

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->z:Landroid/widget/ImageView;

    .line 477
    const v0, 0x7f100411

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->A:Landroid/widget/TextView;

    .line 478
    const v0, 0x7f10040d

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->I:Landroid/widget/Button;

    .line 479
    const v0, 0x7f100412

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->B:Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;

    .line 480
    const v0, 0x7f100414

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->C:Landroid/widget/ImageView;

    .line 481
    const v0, 0x7f100415

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->D:Landroid/widget/LinearLayout;

    .line 482
    const v0, 0x7f10010f

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/zup/multistatelayout/MultiStateLayout;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->b:Lbr/com/zup/multistatelayout/MultiStateLayout;

    .line 483
    const v0, 0x7f10041b

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->K:Landroid/widget/TextView;

    .line 484
    const v0, 0x7f10041c

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->L:Landroid/widget/TextView;

    .line 485
    const v0, 0x7f10041d

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->M:Landroid/widget/TextView;

    .line 486
    const v0, 0x7f10041e

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->N:Landroid/widget/TextView;

    .line 487
    const v0, 0x7f100416

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->O:Landroid/widget/TextView;

    .line 488
    const v0, 0x7f100417

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->P:Landroid/widget/TextView;

    .line 489
    const v0, 0x7f1003a0

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->Q:Landroid/widget/TextView;

    .line 490
    const v0, 0x7f100418

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->R:Landroid/widget/TextView;

    .line 491
    const v0, 0x7f100419

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->S:Landroid/widget/TextView;

    .line 492
    const v0, 0x7f10041a

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->T:Landroid/widget/TextView;

    .line 493
    const v0, 0x7f100413

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->U:Landroid/widget/LinearLayout;

    .line 494
    const v0, 0x7f10040f

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->V:Landroid/widget/ImageView;

    .line 496
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->s()V

    .line 497
    return-void
.end method

.method public static synthetic k(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;)Lkvp;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->Y:Lkvp;

    return-object v0
.end method

.method private k()V
    .locals 3

    .prologue
    .line 514
    const-string v0, "dd/MM/yyyy"

    invoke-static {v0}, Lmhj;->l(Ljava/lang/String;)Lejm;

    move-result-object v0

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "jsons/sinister/stepsSinisterViewPager.json"

    invoke-static {v1, v2}, Lmhj;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, [Lkvu;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->aa:Ljava/util/List;

    .line 516
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->aa:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvu;

    .line 517
    invoke-virtual {v0}, Lkvu;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkvx;->fromString(Ljava/lang/String;)Lkvx;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkvu;->a(Lkvx;)V

    goto :goto_0

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->aa:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->c(Ljava/util/List;)V

    .line 521
    return-void
.end method

.method public static synthetic l(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;)Llyp;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->ag:Llyp;

    return-object v0
.end method

.method private n()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 658
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->c:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 659
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvs;

    .line 660
    invoke-virtual {v0}, Lkvs;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ""

    .line 661
    :goto_0
    const-string v4, "004"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "005"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    invoke-virtual {v0}, Lkvs;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 665
    :goto_1
    return v0

    .line 660
    :cond_2
    invoke-virtual {v0}, Lkvs;->d()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 665
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private o()I
    .locals 1

    .prologue
    .line 682
    const/4 v0, 0x4

    return v0
.end method

.method private p()V
    .locals 2

    .prologue
    .line 867
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->B:Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;

    new-instance v1, Llrq;

    invoke-direct {v1, p0}, Llrq;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->setOnExpansionUpdateListener(Lmbu;)V

    .line 885
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->w:Lme/relex/circleindicator/CircleIndicator;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->g:Lcom/santander/app/seguros/ui/widgets/MultiViewPager;

    invoke-virtual {v0, v1}, Lme/relex/circleindicator/CircleIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 886
    return-void
.end method

.method private q()V
    .locals 3

    .prologue
    .line 1055
    :try_start_0
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 1056
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 1057
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 1058
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 1059
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0907c2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1064
    :goto_0
    return-void

    .line 1060
    :catch_0
    move-exception v0

    .line 1061
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1062
    const-string v0, "ERROR"

    const-string v1, "DEU ERRO NA HORA DE CRIAR O MENU"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private r()V
    .locals 3

    .prologue
    .line 1089
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->ak:Z

    .line 1090
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->b:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->LOADING:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 1091
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->Z:Lkwy;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->Y:Lkvp;

    invoke-virtual {v1}, Lkvp;->v()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Llru;

    invoke-direct {v2, p0}, Llru;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;)V

    invoke-virtual {v0, v1, v2}, Lkwy;->a(Ljava/lang/String;Lkxa;)V

    .line 1116
    return-void
.end method

.method private s()V
    .locals 2

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->y:Landroid/widget/RelativeLayout;

    new-instance v1, Llrv;

    invoke-direct {v1, p0}, Llrv;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1136
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->x:Landroid/view/View;

    new-instance v1, Llrw;

    invoke-direct {v1, p0}, Llrw;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1144
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->I:Landroid/widget/Button;

    new-instance v1, Llrx;

    invoke-direct {v1, p0}, Llrx;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1153
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 500
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->B:Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->a(Z)V

    .line 502
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->B:Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->f()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 503
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->I:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 511
    :cond_0
    :goto_0
    return-void

    .line 504
    :cond_1
    iget-boolean v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->J:Z

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->I:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 507
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->I:Landroid/widget/Button;

    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 508
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 509
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 507
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1024
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f10020e

    .line 1026
    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 1027
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 1028
    return-void
.end method

.method public a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)V
    .locals 5

    .prologue
    const v4, 0x7f050026

    const v3, 0x7f050025

    const v2, 0x7f050024

    const v1, 0x7f050023

    .line 1031
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 1032
    if-eqz p3, :cond_0

    .line 1034
    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    .line 1040
    :goto_0
    const v1, 0x7f10020e

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 1041
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1042
    return-void

    .line 1037
    :cond_0
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0
.end method

.method public a(Lkxc;)V
    .locals 1
    .annotation runtime Lnfq;
    .end annotation

    .prologue
    .line 1292
    iget-boolean v0, p1, Lkxc;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1293
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->finish()V

    .line 1295
    :cond_0
    return-void
.end method

.method public a(Lkxj;)V
    .locals 2
    .annotation runtime Lnfq;
    .end annotation

    .prologue
    .line 1157
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1165
    :cond_0
    :goto_0
    return-void

    .line 1158
    :cond_1
    iget-boolean v0, p1, Lkxj;->a:Z

    if-eqz v0, :cond_0

    .line 1160
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->b:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->LOADING:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 1161
    iget v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->ad:I

    invoke-direct {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->a(I)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 1256
    iput-boolean p1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->J:Z

    .line 1258
    if-eqz p1, :cond_0

    .line 1259
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->I:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1263
    :goto_0
    return-void

    .line 1261
    :cond_0
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->I:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(ZLkvx;)V
    .locals 4

    .prologue
    .line 623
    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->aa:Ljava/util/List;

    iget v2, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->ad:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvu;

    invoke-virtual {v0}, Lkvu;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 625
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->aa:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvu;

    .line 626
    invoke-virtual {v0}, Lkvu;->e()Lkvx;

    move-result-object v2

    if-ne v2, p2, :cond_0

    .line 627
    invoke-virtual {v0}, Lkvu;->d()Z

    move-result v1

    if-ne v1, p1, :cond_1

    invoke-virtual {v0}, Lkvu;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 654
    :goto_0
    return-void

    .line 631
    :cond_1
    invoke-virtual {v0, p1}, Lkvu;->b(Z)V

    .line 632
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lkvu;->a(Z)V

    .line 637
    :cond_2
    new-instance v0, Llut;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->aa:Ljava/util/List;

    invoke-direct {v0, v1, p0}, Llut;-><init>(Ljava/util/List;Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;)V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->ai:Llut;

    .line 638
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->ai:Llut;

    iget v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->ac:I

    invoke-virtual {v0, v1}, Llut;->a(I)V

    .line 639
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->g:Lcom/santander/app/seguros/ui/widgets/MultiViewPager;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->ai:Llut;

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/MultiViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 641
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->W:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_3

    .line 642
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->g:Lcom/santander/app/seguros/ui/widgets/MultiViewPager;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->W:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/MultiViewPager;->removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 645
    :cond_3
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->g:Lcom/santander/app/seguros/ui/widgets/MultiViewPager;

    iget v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->ad:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/santander/app/seguros/ui/widgets/MultiViewPager;->setCurrentItem(IZ)V

    .line 647
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Llsd;

    invoke-direct {v1, p0}, Llsd;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 526
    iget-boolean v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->al:Z

    return v0
.end method

.method public c()V
    .locals 4

    .prologue
    .line 711
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->E:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 712
    invoke-static {p0}, Lmhj;->a(Lgrs;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->E:Landroid/app/Dialog;

    .line 714
    :cond_0
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->E:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 715
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->E:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 718
    :cond_1
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->H:Lkyy;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->Y:Lkvp;

    new-instance v2, Llse;

    invoke-direct {v2, p0}, Llse;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;)V

    new-instance v3, Llsf;

    invoke-direct {v3, p0}, Llsf;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;)V

    invoke-interface {v0, v1, v2, v3}, Lkyy;->a(Lkvp;Lkxl;Lkxl;)V

    .line 748
    return-void
.end method

.method public d()Z
    .locals 5

    .prologue
    .line 1280
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvs;

    .line 1281
    invoke-virtual {v0}, Lkvs;->g()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "006"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lkvs;->g()Ljava/lang/String;

    move-result-object v0

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "007"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1283
    :cond_1
    const/4 v0, 0x1

    .line 1287
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1068
    iget-boolean v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->ak:Z

    if-eqz v0, :cond_0

    .line 1069
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->B:Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1070
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->B:Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->c(Z)V

    .line 1072
    iget-boolean v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->J:Z

    if-eqz v0, :cond_0

    .line 1073
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->I:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1086
    :cond_0
    :goto_0
    return-void

    .line 1075
    :cond_1
    iget-boolean v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->af:Z

    if-eqz v0, :cond_3

    .line 1076
    iput-boolean v2, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->af:Z

    .line 1077
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->d()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1078
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->r()V

    goto :goto_0

    .line 1080
    :cond_2
    invoke-super {p0}, Lgrs;->onBackPressed()V

    goto :goto_0

    .line 1083
    :cond_3
    invoke-super {p0}, Lgrs;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 157
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 158
    const v0, 0x7f0400a8

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->setContentView(I)V

    .line 160
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->j()V

    .line 161
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->q()V

    .line 163
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 164
    if-eqz v0, :cond_0

    const-string v1, "sinister-detail-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    new-instance v1, Lejm;

    invoke-direct {v1}, Lejm;-><init>()V

    const-string v2, "sinister-detail-key"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v2, Lkvp;

    invoke-virtual {v1, v0, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvp;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->Y:Lkvp;

    .line 167
    :cond_0
    new-instance v0, Lkwy;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->b:Lbr/com/zup/multistatelayout/MultiStateLayout;

    invoke-direct {v0, v1}, Lkwy;-><init>(Lbr/com/zup/multistatelayout/MultiStateLayout;)V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->Z:Lkwy;

    .line 168
    new-instance v0, Lkwv;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkwv;-><init>(Lbr/com/zup/multistatelayout/MultiStateLayout;)V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->aj:Lkwv;

    .line 169
    new-instance v0, Lkzl;

    invoke-direct {v0}, Lkzl;-><init>()V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->G:Lkzk;

    .line 170
    new-instance v0, Lkyz;

    invoke-direct {v0}, Lkyz;-><init>()V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->H:Lkyy;

    .line 171
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;->e()V

    .line 172
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1267
    invoke-super {p0}, Lgrs;->onDestroy()V

    .line 1268
    invoke-static {}, Lmhg;->a()Lmhg;

    move-result-object v0

    const-string v1, "send-tag"

    invoke-virtual {v0, v1}, Lmhg;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1269
    invoke-static {}, Lmhg;->a()Lmhg;

    move-result-object v0

    const-string v1, "send-tag"

    invoke-virtual {v0, v1}, Lmhg;->c(Ljava/lang/String;)V

    .line 1272
    :cond_0
    invoke-static {}, Lmhg;->a()Lmhg;

    move-result-object v0

    const-string v1, "bank-item-key"

    invoke-virtual {v0, v1}, Lmhg;->c(Ljava/lang/String;)V

    .line 1273
    sget-object v0, Lmge;->INSTANCE:Lmge;

    invoke-virtual {v0, v2}, Lmge;->setCodeNameBank(Ljava/lang/String;)V

    .line 1274
    sget-object v0, Lmge;->INSTANCE:Lmge;

    invoke-virtual {v0, v2}, Lmge;->setBankData(Lkum;)V

    .line 1275
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 1175
    invoke-super {p0}, Lgrs;->onPause()V

    .line 1176
    invoke-static {}, Lkws;->a()Lkws;

    move-result-object v0

    invoke-virtual {v0}, Lkws;->b()Lnfg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnfg;->c(Ljava/lang/Object;)V

    .line 1177
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 1169
    invoke-super {p0}, Lgrs;->onResume()V

    .line 1170
    invoke-static {}, Lkws;->a()Lkws;

    move-result-object v0

    invoke-virtual {v0}, Lkws;->b()Lnfg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnfg;->b(Ljava/lang/Object;)V

    .line 1171
    return-void
.end method
