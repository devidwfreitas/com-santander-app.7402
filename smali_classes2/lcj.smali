.class public Llcj;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Llai;
.implements Llbh;


# instance fields
.field private a:Landroid/widget/ImageButton;

.field private b:Landroid/support/v7/widget/RecyclerView;

.field private c:Landroid/widget/Button;

.field private d:Llcm;

.field private e:Llag;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkom;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llcj;->f:Ljava/util/List;

    return-void
.end method

.method public static a()Llcj;
    .locals 1

    .prologue
    .line 45
    new-instance v0, Llcj;

    invoke-direct {v0}, Llcj;-><init>()V

    return-object v0
.end method

.method static synthetic a(Llcj;)Llcm;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Llcj;->d:Llcm;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 60
    const v0, 0x7f1009ab

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Llcj;->a:Landroid/widget/ImageButton;

    .line 61
    const v0, 0x7f1009ac

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Llcj;->b:Landroid/support/v7/widget/RecyclerView;

    .line 62
    const v0, 0x7f10093d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Llcj;->c:Landroid/widget/Button;

    .line 63
    return-void
.end method

.method static synthetic b(Llcj;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Llcj;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Llcj;->a:Landroid/widget/ImageButton;

    new-instance v1, Llck;

    invoke-direct {v1, p0}, Llck;-><init>(Llcj;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Llcj;->c:Landroid/widget/Button;

    invoke-static {v0}, Lmhj;->d(Landroid/view/View;)V

    .line 76
    iget-object v0, p0, Llcj;->c:Landroid/widget/Button;

    new-instance v1, Llcl;

    invoke-direct {v1, p0}, Llcl;-><init>(Llcj;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v0, p0, Llcj;->b:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Llcj;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 86
    new-instance v0, Llag;

    invoke-direct {v0}, Llag;-><init>()V

    iput-object v0, p0, Llcj;->e:Llag;

    .line 87
    iget-object v0, p0, Llcj;->e:Llag;

    invoke-virtual {v0, p0}, Llag;->a(Llai;)V

    .line 88
    iget-object v0, p0, Llcj;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Llcj;->e:Llag;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 89
    iget-object v0, p0, Llcj;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 90
    iget-object v0, p0, Llcj;->e:Llag;

    iget-object v1, p0, Llcj;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Llag;->a(Ljava/util/List;)V

    .line 92
    :cond_0
    return-void
.end method

.method private c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Llcj;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 111
    iget-object v0, p0, Llcj;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkom;

    invoke-virtual {v0}, Lkom;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget-object v0, p0, Llcj;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq v1, v0, :cond_0

    .line 113
    const-string v0, "; "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 116
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Llcj;->c:Landroid/widget/Button;

    invoke-static {v0}, Lmhj;->e(Landroid/view/View;)V

    .line 97
    iget-object v0, p0, Llcj;->b:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Llcj;->f:Ljava/util/List;

    new-instance v1, Lkom;

    invoke-direct {v1, p1, p2, p3}, Lkom;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v0, p0, Llcj;->e:Llag;

    iget-object v1, p0, Llcj;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Llag;->a(Ljava/util/List;)V

    .line 100
    return-void
.end method

.method public a(Lkom;)V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Llcj;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 105
    iget-object v0, p0, Llcj;->e:Llag;

    iget-object v1, p0, Llcj;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Llag;->a(Ljava/util/List;)V

    .line 106
    return-void
.end method

.method public a(Llcm;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Llcj;->d:Llcm;

    .line 121
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
    .line 51
    const v0, 0x7f0401f1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 53
    invoke-direct {p0, v0}, Llcj;->a(Landroid/view/View;)V

    .line 54
    invoke-direct {p0}, Llcj;->b()V

    .line 56
    return-object v0
.end method
