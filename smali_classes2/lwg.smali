.class public Llwg;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "sinister-key"


# instance fields
.field private b:Landroid/support/v7/widget/RecyclerView;

.field private c:Lbr/com/zup/multistatelayout/MultiStateLayout;

.field private d:Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkvp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic a(Llwg;)Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Llwg;->d:Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;

    return-object v0
.end method

.method public static a(Ljava/util/List;)Llwg;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkvp;",
            ">;)",
            "Llwg;"
        }
    .end annotation

    .prologue
    .line 61
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 62
    const-string v1, "sinister-key"

    new-instance v2, Lejm;

    invoke-direct {v2}, Lejm;-><init>()V

    invoke-virtual {v2, p0}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    new-instance v1, Llwg;

    invoke-direct {v1}, Llwg;-><init>()V

    .line 64
    invoke-virtual {v1, v0}, Llwg;->setArguments(Landroid/os/Bundle;)V

    .line 65
    return-object v1
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 149
    const v0, 0x7f1009a8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Llwg;->b:Landroid/support/v7/widget/RecyclerView;

    .line 150
    const v0, 0x7f10010f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/zup/multistatelayout/MultiStateLayout;

    iput-object v0, p0, Llwg;->c:Lbr/com/zup/multistatelayout/MultiStateLayout;

    .line 151
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 54
    instance-of v0, p1, Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;

    if-eqz v0, :cond_0

    .line 55
    check-cast p1, Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;

    iput-object p1, p0, Llwg;->d:Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;

    .line 57
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
    .line 70
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Llwg;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Llwg;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "sinister-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p0}, Llwg;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "sinister-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    :try_start_0
    new-instance v0, Lejm;

    invoke-direct {v0}, Lejm;-><init>()V

    invoke-virtual {p0}, Llwg;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "sinister-key"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, [Lkvp;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Llwg;->e:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Llwg;->e:Ljava/util/List;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 86
    const v0, 0x7f0401ef

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 87
    invoke-direct {p0, v0}, Llwg;->a(Landroid/view/View;)V

    .line 89
    iget-object v1, p0, Llwg;->e:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Llwg;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 91
    :cond_0
    iget-object v1, p0, Llwg;->c:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v2, Laor;->EMPTY:Laor;

    invoke-virtual {v1, v2}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 114
    :goto_0
    return-object v0

    .line 93
    :cond_1
    iget-object v1, p0, Llwg;->c:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v2, Laor;->CONTENT:Laor;

    invoke-virtual {v1, v2}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 94
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Llwg;->d:Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 95
    new-instance v2, Lltz;

    iget-object v3, p0, Llwg;->e:Ljava/util/List;

    iget-object v4, p0, Llwg;->d:Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;

    invoke-direct {v2, v3, v4}, Lltz;-><init>(Ljava/util/List;Landroid/support/v7/app/AppCompatActivity;)V

    .line 96
    iget-object v3, p0, Llwg;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 97
    iget-object v1, p0, Llwg;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 98
    iget-object v1, p0, Llwg;->b:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Lmgw;

    iget-object v4, p0, Llwg;->d:Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;

    sget-object v5, Lmgx;->GREY:Lmgx;

    invoke-direct {v3, v4, v5}, Lmgw;-><init>(Landroid/content/Context;Lmgx;)V

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 100
    new-instance v1, Llwh;

    invoke-direct {v1, p0}, Llwh;-><init>(Llwg;)V

    invoke-virtual {v2, v1}, Lltz;->a(Lluc;)V

    goto :goto_0
.end method
