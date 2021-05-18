.class public Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Llmz;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;


# instance fields
.field private c:Lbr/com/zup/multistatelayout/MultiStateLayout;

.field private d:Landroid/support/v7/widget/RecyclerView;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lkpv;

.field private w:Lkxv;

.field private x:Llho;

.field private y:Llhs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-string v0, "beneficiaries-scp"

    sput-object v0, Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;->a:Ljava/lang/String;

    .line 50
    const-string v0, "certificate-id-key"

    sput-object v0, Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;Lkpv;)Lkpv;
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;->g:Lkpv;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;->f()V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;Lkqa;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;->a(Lkqa;)V

    return-void
.end method

.method private a(Lkqa;)V
    .locals 3

    .prologue
    .line 152
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;->f:Ljava/lang/String;

    invoke-static {p1, v0}, Llmu;->a(Lkqa;Ljava/lang/String;)Llmu;

    move-result-object v0

    .line 153
    invoke-virtual {v0, p0}, Llmu;->a(Llmz;)V

    .line 154
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog-fragment"

    invoke-virtual {v0, v1, v2}, Llmu;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public static synthetic b(Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;)Lbr/com/zup/multistatelayout/MultiStateLayout;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;->c:Lbr/com/zup/multistatelayout/MultiStateLayout;

    return-object v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 87
    const v0, 0x7f10010f

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/zup/multistatelayout/MultiStateLayout;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;->c:Lbr/com/zup/multistatelayout/MultiStateLayout;

    .line 88
    const v0, 0x7f10011c

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;->d:Landroid/support/v7/widget/RecyclerView;

    .line 89
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 93
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 94
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 95
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 97
    const v1, 0x7f090146

    invoke-virtual {p0, v1}, Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method private d()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 101
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 102
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;->d:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 103
    iget-object v6, p0, Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;->d:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Lmgy;

    const/16 v4, 0x10

    const/16 v5, 0xc

    move-object v1, p0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lmgy;-><init>(Landroid/content/Context;ZZII)V

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 105
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;->g:Lkpv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;->g:Lkpv;

    invoke-virtual {v0}, Lkpv;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;->g:Lkpv;

    invoke-virtual {v0}, Lkpv;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 106
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;->f()V

    .line 111
    :goto_0
    return-void

    .line 109
    :cond_0
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;->e()V

    goto :goto_0
.end method

.method private e()V
    .locals 4

    .prologue
    .line 116
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;->c:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->LOADING:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 118
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;->w:Lkxv;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;->f:Ljava/lang/String;

    new-instance v2, Llgf;

    invoke-direct {v2, p0}, Llgf;-><init>(Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;)V

    new-instance v3, Llgg;

    invoke-direct {v3, p0}, Llgg;-><init>(Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;)V

    invoke-interface {v0, v1, v2, v3}, Lkxv;->b(Ljava/lang/String;Lkxl;Lkxl;)V

    .line 138
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 141
    new-instance v0, Llhs;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;->g:Lkpv;

    invoke-direct {v0, v1}, Llhs;-><init>(Lkpv;)V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;->y:Llhs;

    .line 142
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;->y:Llhs;

    new-instance v1, Llgh;

    invoke-direct {v1, p0}, Llgh;-><init>(Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;)V

    invoke-virtual {v0, v1}, Llhs;->a(Llhv;)V

    .line 148
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;->y:Llhs;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 149
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;->e()V

    .line 160
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 59
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v0, 0x7f040025

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;->setContentView(I)V

    .line 62
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_0

    const-string v1, "FIRE_INSURANCES_CERTIFICATE_NUMBER_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    const-string v1, "FIRE_INSURANCES_CERTIFICATE_NUMBER_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;->e:Ljava/lang/String;

    .line 67
    :cond_0
    if-eqz v0, :cond_2

    sget-object v1, Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 68
    sget-object v1, Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;->f:Ljava/lang/String;

    .line 73
    :goto_0
    if-eqz v0, :cond_1

    sget-object v1, Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    new-instance v1, Lejm;

    invoke-direct {v1}, Lejm;-><init>()V

    sget-object v2, Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v2, Lkpv;

    invoke-virtual {v1, v0, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkpv;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;->g:Lkpv;

    .line 77
    :cond_1
    new-instance v0, Lkxw;

    invoke-direct {v0}, Lkxw;-><init>()V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;->w:Lkxv;

    .line 81
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;->b()V

    .line 82
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;->d()V

    .line 83
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;->c()V

    .line 84
    return-void

    .line 70
    :cond_2
    const-string v1, ""

    iput-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/BeneficiariesActivity;->f:Ljava/lang/String;

    goto :goto_0
.end method
