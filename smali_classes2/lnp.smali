.class public Llnp;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Landroid/support/v4/app/FragmentActivity;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkrn;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/support/v7/widget/RecyclerView;

.field private e:Llme;

.field private f:Landroid/widget/Button;

.field private g:Llns;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "contract-coverage-list"

    sput-object v0, Llnp;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/List;)Llnp;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkrn;",
            ">;)",
            "Llnp;"
        }
    .end annotation

    .prologue
    .line 55
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 56
    sget-object v1, Llnp;->a:Ljava/lang/String;

    new-instance v2, Lejm;

    invoke-direct {v2}, Lejm;-><init>()V

    invoke-virtual {v2, p0}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    new-instance v1, Llnp;

    invoke-direct {v1}, Llnp;-><init>()V

    .line 58
    invoke-virtual {v1, v0}, Llnp;->setArguments(Landroid/os/Bundle;)V

    .line 59
    return-object v1
.end method

.method static synthetic a(Llnp;)Llns;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Llnp;->g:Llns;

    return-object v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Llnp;->c:Ljava/util/List;

    invoke-direct {p0, v0}, Llnp;->b(Ljava/util/List;)V

    .line 110
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 114
    const v0, 0x7f100777

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Llnp;->d:Landroid/support/v7/widget/RecyclerView;

    .line 115
    const v0, 0x7f100779

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Llnp;->f:Landroid/widget/Button;

    .line 116
    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkrn;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 121
    new-instance v0, Llme;

    invoke-direct {v0, p1}, Llme;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Llnp;->e:Llme;

    .line 123
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Llnp;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 124
    iget-object v1, p0, Llnp;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 125
    iget-object v0, p0, Llnp;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Llnp;->e:Llme;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 127
    iget-object v0, p0, Llnp;->e:Llme;

    new-instance v1, Llnr;

    invoke-direct {v1, p0, p1}, Llnr;-><init>(Llnp;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Llme;->a(Llmh;)V

    .line 137
    return-void
.end method


# virtual methods
.method public a(Llns;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Llnp;->g:Llns;

    .line 51
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    .line 67
    invoke-virtual {p0}, Llnp;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Llnp;->b:Landroid/support/v4/app/FragmentActivity;

    .line 69
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Llnp;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Llnp;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Llnp;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    new-instance v1, Ljava/util/ArrayList;

    new-instance v0, Lejm;

    invoke-direct {v0}, Lejm;-><init>()V

    invoke-virtual {p0}, Llnp;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    sget-object v3, Llnp;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, [Lkrn;

    invoke-virtual {v0, v2, v3}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Llnp;->c:Ljava/util/List;

    .line 78
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 101
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 103
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 104
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 105
    return-object v0
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
    .line 83
    const v0, 0x7f040185

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 84
    invoke-direct {p0, v0}, Llnp;->a(Landroid/view/View;)V

    .line 85
    invoke-direct {p0}, Llnp;->a()V

    .line 88
    iget-object v1, p0, Llnp;->f:Landroid/widget/Button;

    new-instance v2, Llnq;

    invoke-direct {v2, p0}, Llnq;-><init>(Llnp;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    return-object v0
.end method
