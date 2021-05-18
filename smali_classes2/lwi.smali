.class public Llwi;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "sinister-key"


# instance fields
.field private b:Landroid/support/v7/widget/RecyclerView;

.field private c:Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkvp;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lbr/com/zup/multistatelayout/MultiStateLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic a(Llwi;)Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Llwi;->c:Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;

    return-object v0
.end method

.method public static a(Ljava/util/List;)Llwi;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkvp;",
            ">;)",
            "Llwi;"
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 63
    const-string v1, "sinister-key"

    new-instance v2, Lejm;

    invoke-direct {v2}, Lejm;-><init>()V

    invoke-virtual {v2, p0}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    new-instance v1, Llwi;

    invoke-direct {v1}, Llwi;-><init>()V

    .line 65
    invoke-virtual {v1, v0}, Llwi;->setArguments(Landroid/os/Bundle;)V

    .line 66
    return-object v1
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 152
    const v0, 0x7f1009a8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Llwi;->b:Landroid/support/v7/widget/RecyclerView;

    .line 153
    const v0, 0x7f10010f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/zup/multistatelayout/MultiStateLayout;

    iput-object v0, p0, Llwi;->e:Lbr/com/zup/multistatelayout/MultiStateLayout;

    .line 154
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 55
    instance-of v0, p1, Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;

    if-eqz v0, :cond_0

    .line 56
    check-cast p1, Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;

    iput-object p1, p0, Llwi;->c:Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;

    .line 58
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
    .line 71
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Llwi;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Llwi;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "sinister-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p0}, Llwi;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "sinister-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    :try_start_0
    new-instance v0, Lejm;

    invoke-direct {v0}, Lejm;-><init>()V

    invoke-virtual {p0}, Llwi;->getArguments()Landroid/os/Bundle;

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

    iput-object v0, p0, Llwi;->d:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Llwi;->d:Ljava/util/List;

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

    .line 88
    const v0, 0x7f0401f9

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 89
    invoke-direct {p0, v0}, Llwi;->a(Landroid/view/View;)V

    .line 91
    iget-object v1, p0, Llwi;->d:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Llwi;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 93
    :cond_0
    iget-object v1, p0, Llwi;->e:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v2, Laor;->EMPTY:Laor;

    invoke-virtual {v1, v2}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 117
    :goto_0
    return-object v0

    .line 95
    :cond_1
    iget-object v1, p0, Llwi;->e:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v2, Laor;->CONTENT:Laor;

    invoke-virtual {v1, v2}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 97
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Llwi;->c:Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 98
    new-instance v2, Lltz;

    iget-object v3, p0, Llwi;->d:Ljava/util/List;

    iget-object v4, p0, Llwi;->c:Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;

    invoke-direct {v2, v3, v4}, Lltz;-><init>(Ljava/util/List;Landroid/support/v7/app/AppCompatActivity;)V

    .line 99
    iget-object v3, p0, Llwi;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 100
    iget-object v1, p0, Llwi;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 101
    iget-object v1, p0, Llwi;->b:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Lmgw;

    iget-object v4, p0, Llwi;->c:Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;

    sget-object v5, Lmgx;->GREY:Lmgx;

    invoke-direct {v3, v4, v5}, Lmgw;-><init>(Landroid/content/Context;Lmgx;)V

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 103
    new-instance v1, Llwj;

    invoke-direct {v1, p0}, Llwj;-><init>(Llwi;)V

    invoke-virtual {v2, v1}, Lltz;->a(Lluc;)V

    goto :goto_0
.end method
