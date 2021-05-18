.class public Llnf;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "checking-account"


# instance fields
.field private b:Landroid/support/v4/widget/NestedScrollView;

.field private c:Landroid/widget/Button;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkqi;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/support/v7/widget/RecyclerView;

.field private f:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

.field private g:Llni;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llnf;->d:Ljava/util/List;

    return-void
.end method

.method public static a(Ljava/util/List;)Llnf;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkqi;",
            ">;)",
            "Llnf;"
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 51
    const-string v1, "checking-account"

    new-instance v2, Lejm;

    invoke-direct {v2}, Lejm;-><init>()V

    invoke-virtual {v2, p0}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    new-instance v1, Llnf;

    invoke-direct {v1}, Llnf;-><init>()V

    .line 53
    invoke-virtual {v1, v0}, Llnf;->setArguments(Landroid/os/Bundle;)V

    .line 54
    return-object v1
.end method

.method static synthetic a(Llnf;)Llni;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Llnf;->g:Llni;

    return-object v0
.end method

.method private a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 92
    iget-object v0, p0, Llnf;->b:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v0, v4, v4}, Landroid/support/v4/widget/NestedScrollView;->smoothScrollTo(II)V

    .line 94
    iget-object v0, p0, Llnf;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 95
    iget-object v0, p0, Llnf;->e:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Llnf;->f:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 96
    new-instance v0, Llke;

    iget-object v1, p0, Llnf;->d:Ljava/util/List;

    invoke-direct {v0, v1}, Llke;-><init>(Ljava/util/List;)V

    .line 97
    new-instance v1, Llng;

    invoke-direct {v1, p0}, Llng;-><init>(Llnf;)V

    invoke-virtual {v0, v1}, Llke;->a(Llkh;)V

    .line 107
    iget-object v1, p0, Llnf;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 108
    iget-object v0, p0, Llnf;->e:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lmgw;

    iget-object v2, p0, Llnf;->f:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    sget-object v3, Lmgx;->GRAY_REP:Lmgx;

    invoke-direct {v1, v2, v3}, Lmgw;-><init>(Landroid/content/Context;Lmgx;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 110
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 113
    const v0, 0x7f100451

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/NestedScrollView;

    iput-object v0, p0, Llnf;->b:Landroid/support/v4/widget/NestedScrollView;

    .line 114
    const v0, 0x7f10072e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Llnf;->c:Landroid/widget/Button;

    .line 115
    const v0, 0x7f1009ed

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Llnf;->e:Landroid/support/v7/widget/RecyclerView;

    .line 117
    iget-object v0, p0, Llnf;->c:Landroid/widget/Button;

    new-instance v1, Llnh;

    invoke-direct {v1, p0}, Llnh;-><init>(Llnf;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    return-void
.end method


# virtual methods
.method public a(Llni;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Llnf;->g:Llni;

    .line 71
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    .line 62
    instance-of v0, p1, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    if-eqz v0, :cond_0

    .line 63
    check-cast p1, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    iput-object p1, p0, Llnf;->f:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    .line 65
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llnf;->d:Ljava/util/List;

    .line 77
    invoke-virtual {p0}, Llnf;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Llnf;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "checking-account"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    new-instance v1, Ljava/util/ArrayList;

    new-instance v0, Lejm;

    invoke-direct {v0}, Lejm;-><init>()V

    invoke-virtual {p0}, Llnf;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "checking-account"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, [Lkqi;

    invoke-virtual {v0, v2, v3}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Llnf;->d:Ljava/util/List;

    .line 80
    :cond_0
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
    .line 85
    const v0, 0x7f0401fe

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 86
    invoke-direct {p0, v0}, Llnf;->a(Landroid/view/View;)V

    .line 87
    invoke-direct {p0}, Llnf;->a()V

    .line 88
    return-object v0
.end method
