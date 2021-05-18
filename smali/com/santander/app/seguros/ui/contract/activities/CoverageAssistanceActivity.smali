.class public Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;
.super Lgrs;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "code-product-key"

.field public static final b:Ljava/lang/String; = "family-key"


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkqo;",
            ">;"
        }
    .end annotation
.end field

.field private D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkqd;",
            ">;"
        }
    .end annotation
.end field

.field private E:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkqp;",
            ">;"
        }
    .end annotation
.end field

.field private F:Lkqp;

.field private c:Llka;

.field private d:Llko;

.field private e:Landroid/support/v7/widget/RecyclerView;

.field private f:Landroid/support/v7/widget/RecyclerView;

.field private g:Llna;

.field private w:Llms;

.field private x:Landroid/widget/Button;

.field private y:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

.field private z:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;->B:Ljava/lang/String;

    return-object v0
.end method

.method private a(Lkqn;)Lkqp;
    .locals 3

    .prologue
    .line 105
    const/4 v1, 0x0

    .line 107
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;->E:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkqp;

    invoke-virtual {v0}, Lkqp;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkqn;->valueOf(Ljava/lang/String;)Lkqn;

    move-result-object v0

    .line 110
    if-ne v0, p1, :cond_1

    .line 111
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;->E:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkqp;

    .line 107
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    .line 114
    :cond_0
    return-object v1

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;Llms;)Llms;
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;->w:Llms;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;Llna;)Llna;
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;->g:Llna;

    return-object p1
.end method

.method private a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 97
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 98
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 99
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 100
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 101
    const v1, 0x7f09052c

    invoke-virtual {p0, v1}, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method private a(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkqo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lkqd;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 146
    new-instance v0, Llko;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;->F:Lkqp;

    invoke-virtual {v1}, Lkqp;->b()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Llko;-><init>(Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;->d:Llko;

    .line 147
    new-instance v0, Llka;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;->F:Lkqp;

    invoke-virtual {v1}, Lkqp;->c()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Llka;-><init>(Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;->c:Llka;

    .line 149
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0, v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 150
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0, v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 152
    iget-object v2, p0, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 153
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 155
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 156
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 158
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;->d:Llko;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 159
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;->c:Llka;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 161
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;->d:Llko;

    new-instance v1, Lljl;

    invoke-direct {v1, p0}, Lljl;-><init>(Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;)V

    invoke-virtual {v0, v1}, Llko;->a(Llks;)V

    .line 176
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;->c:Llka;

    new-instance v1, Lljm;

    invoke-direct {v1, p0}, Lljm;-><init>(Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;)V

    invoke-virtual {v0, v1}, Llka;->a(Llkd;)V

    .line 190
    return-void
.end method

.method public static synthetic b(Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;)Llna;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;->g:Llna;

    return-object v0
.end method

.method private b()V
    .locals 9

    .prologue
    const v8, 0x7f0e00a9

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 119
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;->y:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    const-string v1, "fonts/opensans_semibold.ttf"

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090a0c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "2 (dois) anos"

    aput-object v5, v4, v6

    invoke-static {p0, v1, v2, v3, v4}, Lmhj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;[Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;->z:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    const-string v1, "fonts/opensans_semibold.ttf"

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090a0d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "60 (sessenta) dias"

    aput-object v5, v4, v6

    invoke-static {p0, v1, v2, v3, v4}, Lmhj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;[Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v6}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 123
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v6}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 125
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;->C:Ljava/util/List;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;->D:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;->a(Ljava/util/List;Ljava/util/List;)V

    .line 126
    return-void
.end method

.method public static synthetic c(Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;)Llms;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;->w:Llms;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 130
    const v0, 0x7f10021e

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;->f:Landroid/support/v7/widget/RecyclerView;

    .line 131
    const v0, 0x7f10021d

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;->e:Landroid/support/v7/widget/RecyclerView;

    .line 132
    const v0, 0x7f10021f

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;->y:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    .line 133
    const v0, 0x7f100220

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;->z:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    .line 135
    const v0, 0x7f100221

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;->x:Landroid/widget/Button;

    .line 137
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;->x:Landroid/widget/Button;

    new-instance v1, Lljk;

    invoke-direct {v1, p0}, Lljk;-><init>(Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 194
    invoke-super {p0}, Lgrs;->onBackPressed()V

    .line 195
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 65
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v0, 0x7f040049

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;->setContentView(I)V

    .line 67
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;->c()V

    .line 68
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;->a()V

    .line 70
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "code-product-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "code-product-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;->A:Ljava/lang/String;

    .line 74
    :cond_0
    sget-object v0, Lkqm;->INSTANCE:Lkqm;

    invoke-virtual {v0}, Lkqm;->getmCoverages()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 75
    sget-object v0, Lkqm;->INSTANCE:Lkqm;

    invoke-virtual {v0}, Lkqm;->getmCoverages()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;->C:Ljava/util/List;

    .line 80
    :goto_0
    sget-object v0, Lkqm;->INSTANCE:Lkqm;

    invoke-virtual {v0}, Lkqm;->getmAssistances()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 81
    sget-object v0, Lkqm;->INSTANCE:Lkqm;

    invoke-virtual {v0}, Lkqm;->getmAssistances()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;->D:Ljava/util/List;

    .line 86
    :goto_1
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "family-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "family-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;->B:Ljava/lang/String;

    .line 90
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    new-instance v0, Lejm;

    invoke-direct {v0}, Lejm;-><init>()V

    iget-object v2, p0, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;->i:Landroid/app/Activity;

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

    iput-object v1, p0, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;->E:Ljava/util/List;

    .line 91
    iget-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;->A:Ljava/lang/String;

    invoke-static {v0}, Lmhj;->H(Ljava/lang/String;)Lkqn;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;->a(Lkqn;)Lkqp;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;->F:Lkqp;

    .line 93
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;->b()V

    .line 94
    return-void

    .line 77
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;->C:Ljava/util/List;

    goto :goto_0

    .line 83
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/contract/activities/CoverageAssistanceActivity;->D:Ljava/util/List;

    goto :goto_1
.end method
