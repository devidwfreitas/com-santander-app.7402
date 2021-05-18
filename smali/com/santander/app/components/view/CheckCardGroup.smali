.class public Lcom/santander/app/components/view/CheckCardGroup;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/components/view/CheckCardView;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lgor;

.field private c:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field private d:Z

.field private e:Lgoy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/santander/app/components/view/CheckCardGroup;->d:Z

    .line 137
    new-instance v0, Lgoq;

    invoke-direct {v0, p0}, Lgoq;-><init>(Lcom/santander/app/components/view/CheckCardGroup;)V

    iput-object v0, p0, Lcom/santander/app/components/view/CheckCardGroup;->e:Lgoy;

    .line 30
    invoke-direct {p0}, Lcom/santander/app/components/view/CheckCardGroup;->a()V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/santander/app/components/view/CheckCardGroup;->d:Z

    .line 137
    new-instance v0, Lgoq;

    invoke-direct {v0, p0}, Lgoq;-><init>(Lcom/santander/app/components/view/CheckCardGroup;)V

    iput-object v0, p0, Lcom/santander/app/components/view/CheckCardGroup;->e:Lgoy;

    .line 35
    invoke-direct {p0}, Lcom/santander/app/components/view/CheckCardGroup;->a()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/santander/app/components/view/CheckCardGroup;->d:Z

    .line 137
    new-instance v0, Lgoq;

    invoke-direct {v0, p0}, Lgoq;-><init>(Lcom/santander/app/components/view/CheckCardGroup;)V

    iput-object v0, p0, Lcom/santander/app/components/view/CheckCardGroup;->e:Lgoy;

    .line 40
    invoke-direct {p0}, Lcom/santander/app/components/view/CheckCardGroup;->a()V

    .line 41
    return-void
.end method

.method public static synthetic a(Lcom/santander/app/components/view/CheckCardGroup;)Lgoy;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/santander/app/components/view/CheckCardGroup;->e:Lgoy;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    const/16 v0, 0xa

    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/santander/app/components/view/CheckCardGroup;->setPadding(IIII)V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/santander/app/components/view/CheckCardGroup;->a:Ljava/util/List;

    .line 46
    new-instance v0, Lgop;

    invoke-direct {v0, p0}, Lgop;-><init>(Lcom/santander/app/components/view/CheckCardGroup;)V

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 77
    return-void
.end method

.method public static synthetic b(Lcom/santander/app/components/view/CheckCardGroup;)Ljava/util/List;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/santander/app/components/view/CheckCardGroup;->a:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic c(Lcom/santander/app/components/view/CheckCardGroup;)Landroid/view/ViewGroup$OnHierarchyChangeListener;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/santander/app/components/view/CheckCardGroup;->c:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-object v0
.end method

.method public static synthetic d(Lcom/santander/app/components/view/CheckCardGroup;)Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/santander/app/components/view/CheckCardGroup;->d:Z

    return v0
.end method

.method public static synthetic e(Lcom/santander/app/components/view/CheckCardGroup;)Lgor;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/santander/app/components/view/CheckCardGroup;->b:Lgor;

    return-object v0
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .prologue
    .line 163
    iput-boolean p1, p0, Lcom/santander/app/components/view/CheckCardGroup;->d:Z

    .line 164
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 86
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/santander/app/components/view/CheckCardView;

    if-eqz v0, :cond_0

    .line 87
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 89
    :cond_0
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 93
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/santander/app/components/view/CheckCardView;

    if-eqz v0, :cond_0

    .line 94
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 96
    :cond_0
    return-void
.end method

.method public addView(Landroid/view/View;II)V
    .locals 1

    .prologue
    .line 100
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/santander/app/components/view/CheckCardView;

    if-eqz v0, :cond_0

    .line 101
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 103
    :cond_0
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 114
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/santander/app/components/view/CheckCardView;

    if-eqz v0, :cond_0

    .line 115
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 117
    :cond_0
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 107
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/santander/app/components/view/CheckCardView;

    if-eqz v0, :cond_0

    .line 108
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    :cond_0
    return-void
.end method

.method public removeAllViews()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/santander/app/components/view/CheckCardGroup;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 122
    invoke-super {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 123
    return-void
.end method

.method public setCheckedItem(I)V
    .locals 3
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    .line 130
    iget-object v0, p0, Lcom/santander/app/components/view/CheckCardGroup;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/CheckCardView;

    .line 131
    invoke-virtual {v0}, Lcom/santander/app/components/view/CheckCardView;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 132
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/santander/app/components/view/CheckCardView;->setChecked(Z)V

    goto :goto_0

    .line 135
    :cond_1
    return-void
.end method

.method public setCheckedItem(Lcom/santander/app/components/view/CheckCardView;)V
    .locals 1

    .prologue
    .line 126
    invoke-virtual {p1}, Lcom/santander/app/components/view/CheckCardView;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/santander/app/components/view/CheckCardGroup;->setCheckedItem(I)V

    .line 127
    return-void
.end method

.method public setOnCheckedChangeListener(Lgor;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/santander/app/components/view/CheckCardGroup;->b:Lgor;

    .line 168
    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/santander/app/components/view/CheckCardGroup;->c:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 82
    return-void
.end method
