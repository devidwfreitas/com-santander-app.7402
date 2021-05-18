.class public Llbz;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Llas;


# static fields
.field private static final a:Ljava/lang/String; = "SCHEDULING_LIST_KEY"


# instance fields
.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/support/v7/widget/RecyclerView;

.field private d:Lcom/santander/app/seguros/ui/assistance/activities/MyAssistancesActivity;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkph;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/List;)Llbz;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkph;",
            ">;)",
            "Llbz;"
        }
    .end annotation

    .prologue
    .line 44
    new-instance v0, Llbz;

    invoke-direct {v0}, Llbz;-><init>()V

    .line 45
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 46
    const-string v2, "SCHEDULING_LIST_KEY"

    new-instance v3, Lejm;

    invoke-direct {v3}, Lejm;-><init>()V

    invoke-virtual {v3, p0}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0, v1}, Llbz;->setArguments(Landroid/os/Bundle;)V

    .line 48
    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 83
    iget-object v0, p0, Llbz;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Llbz;->b:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 91
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Llbz;->c:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Llbz;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 87
    new-instance v0, Llaq;

    iget-object v1, p0, Llbz;->e:Ljava/util/List;

    invoke-direct {v0, v1}, Llaq;-><init>(Ljava/util/List;)V

    .line 88
    invoke-virtual {v0, p0}, Llaq;->a(Llas;)V

    .line 89
    iget-object v1, p0, Llbz;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 78
    const v0, 0x7f1009c8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Llbz;->b:Landroid/widget/LinearLayout;

    .line 79
    const v0, 0x7f1009c7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Llbz;->c:Landroid/support/v7/widget/RecyclerView;

    .line 80
    return-void
.end method


# virtual methods
.method public a(Lkph;)V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Llbz;->d:Lcom/santander/app/seguros/ui/assistance/activities/MyAssistancesActivity;

    invoke-static {p1}, Llbq;->a(Lkph;)Llbq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/assistance/activities/MyAssistancesActivity;->a(Landroid/support/v4/app/Fragment;)V

    .line 96
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 64
    check-cast p1, Lcom/santander/app/seguros/ui/assistance/activities/MyAssistancesActivity;

    iput-object p1, p0, Llbz;->d:Lcom/santander/app/seguros/ui/assistance/activities/MyAssistancesActivity;

    .line 65
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Llbz;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    new-instance v1, Ljava/util/ArrayList;

    new-instance v0, Lejm;

    invoke-direct {v0}, Lejm;-><init>()V

    invoke-virtual {p0}, Llbz;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "SCHEDULING_LIST_KEY"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, [Lkph;

    invoke-virtual {v0, v2, v3}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Llbz;->e:Ljava/util/List;

    .line 58
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
    .line 69
    const v0, 0x7f0401f7

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 71
    invoke-direct {p0, v0}, Llbz;->a(Landroid/view/View;)V

    .line 72
    invoke-direct {p0}, Llbz;->a()V

    .line 74
    return-object v0
.end method
