.class public Llak;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I

.field private c:Llal;

.field private d:Landroid/content/Context;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkpo;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lkpo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Llak;->a:I

    .line 26
    const/4 v0, 0x1

    iput v0, p0, Llak;->b:I

    .line 39
    iput-object p1, p0, Llak;->d:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Llak;->e:Ljava/util/List;

    .line 41
    iput-boolean p3, p0, Llak;->f:Z

    .line 42
    return-void
.end method

.method static synthetic a(Llak;)Llal;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Llak;->c:Llal;

    return-object v0
.end method


# virtual methods
.method public a(Llal;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Llak;->c:Llal;

    .line 86
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Llak;->f:Z

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Llak;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 80
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Llak;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 46
    if-nez p1, :cond_0

    iget-boolean v0, p0, Llak;->f:Z

    if-eqz v0, :cond_0

    .line 47
    const/4 v0, 0x0

    .line 49
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .prologue
    .line 66
    instance-of v0, p1, Llam;

    if-eqz v0, :cond_1

    .line 67
    iget-boolean v0, p0, Llak;->f:Z

    if-eqz v0, :cond_0

    add-int/lit8 p2, p2, -0x1

    .line 68
    :cond_0
    iget-object v0, p0, Llak;->e:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkpo;

    .line 69
    check-cast p1, Llam;

    invoke-virtual {p1, v0}, Llam;->a(Lkpo;)V

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_1
    check-cast p1, Llan;

    invoke-virtual {p1}, Llan;->a()V

    goto :goto_0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 55
    if-nez p2, :cond_0

    .line 56
    iget-object v0, p0, Llak;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0402b2

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 57
    new-instance v0, Llan;

    invoke-direct {v0, p0, v1}, Llan;-><init>(Llak;Landroid/view/View;)V

    .line 60
    :goto_0
    return-object v0

    .line 59
    :cond_0
    iget-object v0, p0, Llak;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0402b3

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 60
    new-instance v0, Llam;

    invoke-direct {v0, p0, v1}, Llam;-><init>(Llak;Landroid/view/View;)V

    goto :goto_0
.end method
