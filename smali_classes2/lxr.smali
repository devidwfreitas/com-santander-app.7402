.class public Llxr;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkvq;",
            ">;"
        }
    .end annotation
.end field

.field private c:Llud;

.field private d:Llxv;

.field private e:Landroid/support/v4/app/FragmentActivity;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/support/v7/widget/RecyclerView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/Button;

.field private j:Landroid/widget/Button;

.field private k:Ljava/lang/String;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkvq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "sinister-coverage-name"

    sput-object v0, Llxr;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkvq;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lkvq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 131
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 132
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvq;

    invoke-virtual {v0}, Lkvq;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 136
    :cond_1
    return-object v2
.end method

.method public static a(Ljava/lang/String;)Llxr;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 61
    sget-object v1, Llxr;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    new-instance v1, Llxr;

    invoke-direct {v1}, Llxr;-><init>()V

    .line 64
    invoke-virtual {v1, v0}, Llxr;->setArguments(Landroid/os/Bundle;)V

    .line 65
    return-object v1
.end method

.method static synthetic a(Llxr;)Llxv;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Llxr;->d:Llxv;

    return-object v0
.end method

.method static synthetic a(Llxr;Llxv;)Llxv;
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Llxr;->d:Llxv;

    return-object p1
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 181
    const v0, 0x7f100113

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llxr;->f:Landroid/widget/TextView;

    .line 182
    const v0, 0x7f100114

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Llxr;->g:Landroid/support/v7/widget/RecyclerView;

    .line 183
    const v0, 0x7f100116

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llxr;->h:Landroid/widget/TextView;

    .line 184
    const v0, 0x7f100117

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Llxr;->i:Landroid/widget/Button;

    .line 185
    const v0, 0x7f100118

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Llxr;->j:Landroid/widget/Button;

    .line 186
    invoke-virtual {p0}, Llxr;->a()V

    .line 187
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkvq;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 140
    new-instance v0, Llud;

    invoke-direct {v0, p1}, Llud;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Llxr;->c:Llud;

    .line 142
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Llxr;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 143
    iget-object v1, p0, Llxr;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 144
    iget-object v0, p0, Llxr;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Llxr;->c:Llud;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 146
    iget-object v0, p0, Llxr;->c:Llud;

    new-instance v1, Llxs;

    invoke-direct {v1, p0, p1}, Llxs;-><init>(Llxr;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Llud;->a(Llug;)V

    .line 155
    return-void
.end method

.method static synthetic b(Llxr;)Landroid/support/v4/app/FragmentActivity;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Llxr;->e:Landroid/support/v4/app/FragmentActivity;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 110
    iget-object v0, p0, Llxr;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Llxr;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090a06

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    invoke-direct {p0}, Llxr;->c()V

    .line 112
    return-void
.end method

.method private c()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 116
    new-instance v3, Ljava/util/ArrayList;

    new-instance v0, Lejm;

    invoke-direct {v0}, Lejm;-><init>()V

    invoke-virtual {p0}, Llxr;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-string v5, "jsons/sinister/sinisterAssistance.json"

    invoke-static {v4, v5}, Lmhj;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-class v5, [Lkvq;

    invoke-virtual {v0, v4, v5}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Llxr;->b:Ljava/util/List;

    .line 118
    iget-object v0, p0, Llxr;->b:Ljava/util/List;

    iget-object v3, p0, Llxr;->k:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Llxr;->a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Llxr;->l:Ljava/util/List;

    .line 121
    iget-object v0, p0, Llxr;->l:Ljava/util/List;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v3, p0, Llxr;->l:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    :goto_1
    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Llxr;->l:Ljava/util/List;

    invoke-direct {p0, v0}, Llxr;->a(Ljava/util/List;)V

    .line 125
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 121
    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Llxr;->i:Landroid/widget/Button;

    new-instance v1, Llxt;

    invoke-direct {v1, p0}, Llxt;-><init>(Llxr;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v0, p0, Llxr;->j:Landroid/widget/Button;

    new-instance v1, Llxu;

    invoke-direct {v1, p0}, Llxu;-><init>(Llxr;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    .line 72
    invoke-virtual {p0}, Llxr;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Llxr;->e:Landroid/support/v4/app/FragmentActivity;

    .line 73
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Llxr;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Llxr;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Llxr;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p0}, Llxr;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Llxr;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llxr;->k:Ljava/lang/String;

    .line 83
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 97
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 99
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 100
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 101
    return-object v0
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
    .line 88
    const v0, 0x7f040175

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 89
    invoke-direct {p0, v0}, Llxr;->a(Landroid/view/View;)V

    .line 90
    invoke-direct {p0}, Llxr;->b()V

    .line 91
    return-object v0
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 106
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroyView()V

    .line 107
    return-void
.end method
