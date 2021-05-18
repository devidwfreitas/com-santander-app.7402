.class public Llct;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Llaw;


# static fields
.field private static final a:Ljava/lang/String; = "ASSISTANCE_SUBSERVICE_EVENT_KEY"


# instance fields
.field private b:Llcx;

.field private c:Lbr/com/zup/multistatelayout/MultiStateLayout;

.field private d:Landroid/support/v7/widget/RecyclerView;

.field private e:Lkxm;

.field private f:Lkoj;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkon;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic a(Llct;)Lbr/com/zup/multistatelayout/MultiStateLayout;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Llct;->c:Lbr/com/zup/multistatelayout/MultiStateLayout;

    return-object v0
.end method

.method static synthetic a(Llct;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Llct;->g:Ljava/util/List;

    return-object p1
.end method

.method public static a(Lkoj;)Llct;
    .locals 4

    .prologue
    .line 52
    new-instance v0, Llct;

    invoke-direct {v0}, Llct;-><init>()V

    .line 53
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 54
    const-string v2, "ASSISTANCE_SUBSERVICE_EVENT_KEY"

    invoke-virtual {p0}, Lkoj;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0, v1}, Llct;->setArguments(Landroid/os/Bundle;)V

    .line 56
    return-object v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Llct;->g:Ljava/util/List;

    if-nez v0, :cond_0

    .line 87
    invoke-direct {p0}, Llct;->b()V

    .line 91
    :goto_0
    return-void

    .line 89
    :cond_0
    invoke-direct {p0}, Llct;->c()V

    goto :goto_0
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 81
    const v0, 0x7f10010f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/zup/multistatelayout/MultiStateLayout;

    iput-object v0, p0, Llct;->c:Lbr/com/zup/multistatelayout/MultiStateLayout;

    .line 82
    const v0, 0x7f100a19

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Llct;->d:Landroid/support/v7/widget/RecyclerView;

    .line 83
    return-void
.end method

.method private b()V
    .locals 4

    .prologue
    .line 94
    iget-object v0, p0, Llct;->c:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->LOADING:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 95
    iget-object v0, p0, Llct;->e:Lkxm;

    iget-object v1, p0, Llct;->f:Lkoj;

    new-instance v2, Llcu;

    invoke-direct {v2, p0}, Llcu;-><init>(Llct;)V

    new-instance v3, Llcv;

    invoke-direct {v3, p0}, Llcv;-><init>(Llct;)V

    invoke-interface {v0, v1, v2, v3}, Lkxm;->a(Lkoj;Lkxl;Lkxl;)V

    .line 113
    return-void
.end method

.method static synthetic b(Llct;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Llct;->c()V

    return-void
.end method

.method static synthetic c(Llct;)Llcx;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Llct;->b:Llcx;

    return-object v0
.end method

.method private c()V
    .locals 5

    .prologue
    .line 116
    new-instance v0, Llau;

    iget-object v1, p0, Llct;->g:Ljava/util/List;

    invoke-direct {v0, v1}, Llau;-><init>(Ljava/util/List;)V

    .line 117
    invoke-virtual {v0, p0}, Llau;->a(Llaw;)V

    .line 119
    iget-object v1, p0, Llct;->d:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Llct;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 120
    iget-object v1, p0, Llct;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 121
    return-void
.end method


# virtual methods
.method public a(Lkon;)V
    .locals 3

    .prologue
    .line 125
    invoke-virtual {p1}, Lkon;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    invoke-virtual {p1}, Lkon;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llay;->a(Ljava/lang/String;)Llay;

    move-result-object v0

    .line 128
    new-instance v1, Llcw;

    invoke-direct {v1, p0, p1}, Llcw;-><init>(Llct;Lkon;)V

    invoke-virtual {v0, v1}, Llay;->a(Llbb;)V

    .line 136
    invoke-virtual {p0}, Llct;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Llay;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 138
    :cond_0
    return-void
.end method

.method public a(Llcx;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Llct;->b:Llcx;

    .line 142
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 63
    new-instance v0, Lkxn;

    invoke-direct {v0}, Lkxn;-><init>()V

    iput-object v0, p0, Llct;->e:Lkxm;

    .line 65
    invoke-virtual {p0}, Llct;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    new-instance v0, Lejm;

    invoke-direct {v0}, Lejm;-><init>()V

    invoke-virtual {p0}, Llct;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "ASSISTANCE_SUBSERVICE_EVENT_KEY"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lkoj;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkoj;

    iput-object v0, p0, Llct;->f:Lkoj;

    .line 68
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

    .prologue
    .line 72
    const v0, 0x7f04020b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 74
    invoke-direct {p0, v0}, Llct;->a(Landroid/view/View;)V

    .line 75
    invoke-direct {p0}, Llct;->a()V

    .line 77
    return-object v0
.end method
