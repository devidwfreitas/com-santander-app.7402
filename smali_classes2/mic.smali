.class public abstract Lmic;
.super Lmia;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/RelativeLayout;

.field private b:Landroid/support/v7/widget/RecyclerView;

.field private c:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lmia;-><init>()V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 46
    const v0, 0x7f100781

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lmic;->a:Landroid/widget/RelativeLayout;

    .line 47
    const v0, 0x7f100782

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lmic;->b:Landroid/support/v7/widget/RecyclerView;

    .line 48
    const v0, 0x7f10072e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lmic;->c:Landroid/widget/Button;

    .line 50
    iget-object v0, p0, Lmic;->c:Landroid/widget/Button;

    new-instance v1, Lmid;

    invoke-direct {v1, p0}, Lmid;-><init>(Lmic;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    return-void
.end method

.method private b()V
    .locals 5

    .prologue
    .line 39
    iget-object v0, p0, Lmic;->b:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lmic;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 40
    iget-object v0, p0, Lmic;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0}, Lmic;->a()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 41
    return-void
.end method


# virtual methods
.method public abstract a()Landroid/support/v7/widget/RecyclerView$Adapter;
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 32
    const v0, 0x7f040187

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 33
    invoke-direct {p0, v0}, Lmic;->a(Landroid/view/View;)V

    .line 34
    invoke-direct {p0}, Lmic;->b()V

    .line 35
    return-object v0
.end method
