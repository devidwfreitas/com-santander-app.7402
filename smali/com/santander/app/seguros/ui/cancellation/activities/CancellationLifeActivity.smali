.class public Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Llge;


# static fields
.field public static final a:Ljava/lang/String; = "certificate-key"

.field public static final b:Ljava/lang/String; = "family-key"

.field public static final c:Ljava/lang/String; = "position-number"

.field public static final d:Ljava/lang/String; = "processing-beneficiaries-key"

.field public static final e:Ljava/lang/String; = "is-processing-key"

.field public static final f:Ljava/lang/String; = "certificate-id"


# instance fields
.field private A:Lbr/com/zup/multistatelayout/MultiStateLayout;

.field private B:Landroid/view/View;

.field private C:Landroid/widget/RelativeLayout;

.field private D:Lkxv;

.field private E:Llft;

.field private F:Llet;

.field private G:Ljava/lang/String;

.field private H:Lkze;

.field private I:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkqf;",
            ">;"
        }
    .end annotation
.end field

.field private J:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkrc;",
            ">;"
        }
    .end annotation
.end field

.field private K:Ljava/lang/String;

.field private L:Ljava/lang/String;

.field private M:Ljava/lang/String;

.field private N:Lkyp;

.field private O:Z

.field private g:Landroid/widget/ImageView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/support/v7/widget/RecyclerView;

.field private z:Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 85
    new-instance v0, Lkxw;

    invoke-direct {v0}, Lkxw;-><init>()V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->D:Lkxv;

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->O:Z

    return-void
.end method

.method private a(Ljava/util/Date;I)Ljava/util/Date;
    .locals 2

    .prologue
    .line 490
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 491
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 492
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->add(II)V

    .line 493
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->I:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->I:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkqf;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 142
    new-instance v0, Llet;

    invoke-direct {v0, p1}, Llet;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->F:Llet;

    .line 143
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 144
    iget-object v1, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->y:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 145
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->y:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->F:Llet;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 146
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->y:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 147
    return-void
.end method

.method public static synthetic b(Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;)Lbr/com/zup/multistatelayout/MultiStateLayout;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->A:Lbr/com/zup/multistatelayout/MultiStateLayout;

    return-object v0
.end method

.method public static synthetic b(Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;Ljava/util/List;)Ljava/util/List;
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 151
    :try_start_0
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 152
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 153
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 154
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 155
    const v1, 0x7f090212

    invoke-virtual {p0, v1}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_0
    return-void

    .line 156
    :catch_0
    move-exception v0

    .line 157
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 481
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/seguros/ui/contract/activities/CsoInsuranceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 482
    const-string v1, "proposal-formalization-id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 483
    const-string v1, "status_insurance"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 484
    const-string v1, "family-id"

    iget-object v2, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->G:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 485
    const-string v1, "family-id"

    iget-object v2, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->G:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 486
    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->startActivity(Landroid/content/Intent;)V

    .line 487
    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkqf;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v1, 0x8

    .line 251
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 252
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->x:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090144

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    :goto_0
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->a(Ljava/util/List;)V

    .line 262
    :goto_1
    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->x:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->y:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->B:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 260
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->x:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090145

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public static synthetic c(Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->y:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method private c(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkpz;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lkqf;",
            ">;"
        }
    .end annotation

    .prologue
    .line 273
    if-eqz p1, :cond_1

    .line 275
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 277
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 278
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkpz;

    invoke-virtual {v0}, Lkpz;->a()Lkqa;

    move-result-object v0

    .line 279
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 282
    :cond_0
    invoke-static {}, Lmys;->a()Lejm;

    move-result-object v0

    invoke-virtual {v0, v2}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 283
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {}, Lmys;->a()Lejm;

    move-result-object v2

    const-class v3, [Lkqf;

    invoke-virtual {v2, v0, v3}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    .line 285
    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private c()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 162
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->G:Ljava/lang/String;

    invoke-static {v0}, Lmgt;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->G:Ljava/lang/String;

    invoke-static {v0}, Lmgt;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->A:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->ERROR:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 179
    :goto_0
    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->w:Landroid/widget/TextView;

    const-string v1, "fonts/opensans_semibold.ttf"

    const v2, 0x7f0e0075

    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090b7f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "risco"

    aput-object v5, v4, v7

    const/4 v5, 0x1

    const-string v6, "desproteger"

    aput-object v6, v4, v5

    invoke-static {p0, v1, v2, v3, v4}, Lmhj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;[Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    sget-object v0, Lleg;->SAFE:Lleg;

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->a(Lleg;)V

    .line 167
    iget-boolean v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->O:Z

    if-nez v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->y:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 169
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->e()V

    goto :goto_0

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->x:Landroid/widget/TextView;

    const v1, 0x7f0900aa

    invoke-virtual {p0, v1}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->y:Landroid/support/v7/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    goto :goto_0
.end method

.method public static synthetic c(Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->b(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic d(Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->B:Landroid/view/View;

    return-object v0
.end method

.method private d()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 199
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->I:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->I:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->I:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkqf;

    invoke-virtual {v0}, Lkqf;->e()Ljava/lang/String;

    move-result-object v0

    const-string v3, "CONFORME LEGISLACAO VIGENTE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->I:Ljava/util/List;

    .line 200
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkqf;

    invoke-virtual {v0}, Lkqf;->e()Ljava/lang/String;

    move-result-object v0

    const-string v3, "CONFORME LEGISLA\u00c7\u00c3O VIGENTE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    .line 199
    :goto_0
    return v0

    :cond_1
    move v0, v2

    .line 200
    goto :goto_0
.end method

.method public static synthetic e(Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->x:Landroid/widget/TextView;

    return-object v0
.end method

.method private e()V
    .locals 4

    .prologue
    .line 204
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->K:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    :goto_0
    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->A:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->LOADING:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 206
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->D:Lkxv;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->M:Ljava/lang/String;

    new-instance v2, Lldy;

    invoke-direct {v2, p0}, Lldy;-><init>(Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;)V

    new-instance v3, Lldz;

    invoke-direct {v3, p0}, Lldz;-><init>(Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;)V

    invoke-interface {v0, v1, v2, v3}, Lkxv;->b(Ljava/lang/String;Lkxl;Lkxl;)V

    goto :goto_0
.end method

.method public static synthetic f(Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;)Llet;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->F:Llet;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 290
    const v0, 0x7f100152

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->g:Landroid/widget/ImageView;

    .line 291
    const v0, 0x7f100153

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->w:Landroid/widget/TextView;

    .line 292
    const v0, 0x7f100156

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->x:Landroid/widget/TextView;

    .line 293
    const v0, 0x7f100158

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->y:Landroid/support/v7/widget/RecyclerView;

    .line 294
    const v0, 0x7f10010f

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/zup/multistatelayout/MultiStateLayout;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->A:Lbr/com/zup/multistatelayout/MultiStateLayout;

    .line 295
    const v0, 0x7f100157

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->B:Landroid/view/View;

    .line 296
    const v0, 0x7f100155

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->z:Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;

    .line 298
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->z:Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;

    new-instance v1, Llea;

    invoke-direct {v1, p0}, Llea;-><init>(Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;->setListener(Lmff;)V

    .line 329
    const v0, 0x7f100154

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->C:Landroid/widget/RelativeLayout;

    .line 330
    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    .line 333
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->G:Ljava/lang/String;

    invoke-static {v0}, Lmgt;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Llgd;->Vida:Llgd;

    :goto_0
    invoke-static {v0}, Llft;->a(Llgd;)Llft;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->E:Llft;

    .line 334
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->E:Llft;

    invoke-virtual {v0, p0}, Llft;->a(Llge;)V

    .line 335
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->E:Llft;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog-cancellation"

    invoke-virtual {v0, v1, v2}, Llft;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 336
    return-void

    .line 333
    :cond_0
    sget-object v0, Llgd;->AP:Llgd;

    goto :goto_0
.end method

.method public static synthetic g(Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->g()V

    return-void
.end method

.method private h()V
    .locals 15

    .prologue
    .line 418
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->A:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->LOADING:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 419
    new-instance v12, Lkst;

    invoke-direct {v12}, Lkst;-><init>()V

    .line 421
    const-string v0, ""

    .line 422
    iget-object v1, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->G:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 423
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->G:Ljava/lang/String;

    invoke-static {v0}, Lmgt;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    const-string v0, "0093"

    move-object v11, v0

    .line 432
    :goto_0
    new-instance v13, Lksn;

    const-string v0, "0000000005"

    const-string v1, "939"

    const-string v2, "0"

    invoke-direct {v13, v0, v1, v2}, Lksn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    new-instance v0, Lkqy;

    invoke-direct {v0}, Lkqy;-><init>()V

    .line 435
    const-string v1, "a@a.com"

    invoke-virtual {v0, v1}, Lkqy;->b(Ljava/lang/String;)V

    .line 436
    const-string v1, "001"

    invoke-virtual {v0, v1}, Lkqy;->a(Ljava/lang/String;)V

    .line 438
    new-instance v14, Lkso;

    invoke-direct {v14}, Lkso;-><init>()V

    .line 439
    invoke-virtual {v14, v0}, Lkso;->a(Lkqy;)V

    .line 441
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 442
    const-string v1, "yyyy-MM-dd"

    invoke-static {v0, v1}, Lmhj;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 443
    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->a(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v0

    const-string v1, "yyyy-MM-dd"

    invoke-static {v0, v1}, Lmhj;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 445
    new-instance v0, Lkss;

    const-string v1, "W"

    const-string v2, "Cancelamento de seguros"

    const-string v3, "Estou ciente que a partir da formaliza\u00e7\u00e3o do cancelamento do seguro estarei desprotegido"

    const-string v6, "I"

    const-string v7, ""

    const-string v8, ""

    const-string v9, "05"

    const-string v10, "0"

    invoke-direct/range {v0 .. v10}, Lkss;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    const-string v1, "0000000002"

    .line 450
    new-instance v2, Lksx;

    iget-object v3, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->L:Ljava/lang/String;

    invoke-direct {v2, v3}, Lksx;-><init>(Ljava/lang/String;)V

    .line 452
    new-instance v3, Lksl;

    const-string v5, "0000000001"

    const-string v6, "69"

    invoke-direct {v3, v5, v6, v4}, Lksl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    invoke-virtual {v12, v11}, Lkst;->a(Ljava/lang/String;)V

    .line 455
    invoke-virtual {v12, v14}, Lkst;->a(Lkso;)V

    .line 456
    invoke-virtual {v12, v13}, Lkst;->a(Lksn;)V

    .line 457
    invoke-virtual {v12, v0}, Lkst;->a(Lkss;)V

    .line 458
    invoke-virtual {v12, v1}, Lkst;->c(Ljava/lang/String;)V

    .line 459
    invoke-virtual {v12, v2}, Lkst;->a(Lksx;)V

    .line 460
    invoke-virtual {v12, v3}, Lkst;->a(Lksl;)V

    .line 462
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->N:Lkyp;

    new-instance v1, Lled;

    invoke-direct {v1, p0}, Lled;-><init>(Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;)V

    new-instance v2, Llee;

    invoke-direct {v2, p0}, Llee;-><init>(Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;)V

    invoke-virtual {v0, v12, v1, v2}, Lkyp;->a(Lkst;Lkxl;Lkxl;)V

    .line 478
    return-void

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->G:Ljava/lang/String;

    invoke-static {v0}, Lmgt;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 426
    const-string v0, "0082"

    move-object v11, v0

    goto/16 :goto_0

    .line 428
    :cond_1
    const-string v0, ""

    move-object v11, v0

    goto/16 :goto_0

    :cond_2
    move-object v11, v0

    goto/16 :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->z:Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/cancellation/CancelSeekBar;->a(Z)V

    .line 341
    sget-object v0, Lleg;->SAFE:Lleg;

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->a(Lleg;)V

    .line 342
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->F:Llet;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->F:Llet;

    invoke-virtual {v0}, Llet;->b()V

    .line 345
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 360
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->h()V

    .line 364
    return-void
.end method

.method public a(Lleg;)V
    .locals 5

    .prologue
    const v4, 0x7f0203ce

    const v3, 0x7f02032e

    const v2, 0x7f0900a8

    .line 373
    sget-object v0, Llef;->a:[I

    invoke-virtual {p1}, Lleg;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 406
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->O:Z

    if-nez v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->x:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->G:Ljava/lang/String;

    invoke-static {v0}, Lmgt;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 409
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 415
    :cond_1
    :goto_0
    return-void

    .line 376
    :pswitch_0
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->d()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->O:Z

    if-nez v0, :cond_2

    .line 377
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->x:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    :cond_2
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->G:Ljava/lang/String;

    invoke-static {v0}, Lmgt;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 379
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 380
    :cond_3
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->G:Ljava/lang/String;

    invoke-static {v0}, Lmgt;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 381
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 386
    :pswitch_1
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->d()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->O:Z

    if-nez v0, :cond_4

    .line 387
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->x:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    :cond_4
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->G:Ljava/lang/String;

    invoke-static {v0}, Lmgt;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 389
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->g:Landroid/widget/ImageView;

    const v1, 0x7f0203d0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 390
    :cond_5
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->G:Ljava/lang/String;

    invoke-static {v0}, Lmgt;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 391
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->g:Landroid/widget/ImageView;

    const v1, 0x7f020330

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 396
    :pswitch_2
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->d()Z

    move-result v0

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->O:Z

    if-nez v0, :cond_6

    .line 397
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->x:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    :cond_6
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->G:Ljava/lang/String;

    invoke-static {v0}, Lmgt;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 399
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->g:Landroid/widget/ImageView;

    const v1, 0x7f0203cf

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 400
    :cond_7
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->G:Ljava/lang/String;

    invoke-static {v0}, Lmgt;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 401
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->g:Landroid/widget/ImageView;

    const v1, 0x7f02032f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 410
    :cond_8
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->G:Ljava/lang/String;

    invoke-static {v0}, Lmgt;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 411
    iget-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 373
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 368
    invoke-super {p0}, Lgrs;->onBackPressed()V

    .line 369
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 105
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 106
    const v0, 0x7f04002f

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->setContentView(I)V

    .line 108
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "processing-beneficiaries-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {}, Lmys;->a()Lejm;

    move-result-object v0

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "processing-beneficiaries-key"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, [Lkrc;

    invoke-virtual {v0, v2, v3}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->J:Ljava/util/List;

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "is-processing-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "is-processing-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->O:Z

    .line 116
    :cond_1
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "certificate-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "certificate-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->K:Ljava/lang/String;

    .line 120
    :cond_2
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "family-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 121
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "family-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->G:Ljava/lang/String;

    .line 124
    :cond_3
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "position-number"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 125
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "position-number"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->L:Ljava/lang/String;

    .line 128
    :cond_4
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "certificate-id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 129
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "certificate-id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->M:Ljava/lang/String;

    .line 132
    :cond_5
    const-string v0, "Seguros_Cancelamento_Vida_AP_Acao"

    const-string v1, "TelaCancelamentoFamilia"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    new-instance v0, Lkzf;

    invoke-direct {v0}, Lkzf;-><init>()V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->H:Lkze;

    .line 134
    new-instance v0, Lkyp;

    invoke-direct {v0}, Lkyp;-><init>()V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->N:Lkyp;

    .line 136
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->b()V

    .line 137
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->f()V

    .line 138
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->c()V

    .line 139
    return-void
.end method
