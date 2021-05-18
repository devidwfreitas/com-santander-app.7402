.class public Lhub;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/widget/NestedScrollView$OnScrollChangeListener;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lhud;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I

.field private d:Z


# direct methods
.method public varargs constructor <init>([Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput v1, p0, Lhub;->b:I

    .line 21
    const/16 v0, 0x3e8

    iput v0, p0, Lhub;->c:I

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhub;->d:Z

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhub;->a:Ljava/util/List;

    .line 26
    array-length v2, p1

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p1, v0

    .line 27
    iget-object v4, p0, Lhub;->a:Ljava/util/List;

    new-instance v5, Lhud;

    const/4 v6, 0x0

    invoke-direct {v5, v3, v6}, Lhud;-><init>(Landroid/view/View;Lhuc;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 26
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method

.method static synthetic a(Lhub;)I
    .locals 2

    .prologue
    .line 17
    iget v0, p0, Lhub;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lhub;->b:I

    return v0
.end method

.method private a(I)V
    .locals 6

    .prologue
    .line 46
    iget v0, p0, Lhub;->b:I

    iget-object v1, p0, Lhub;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 60
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lhub;->a:Ljava/util/List;

    iget v1, p0, Lhub;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhud;

    .line 50
    invoke-static {v0, p1}, Lhud;->a(Lhud;I)I

    .line 51
    invoke-virtual {p0}, Lhub;->b()V

    .line 52
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lhuc;

    invoke-direct {v2, p0, v0}, Lhuc;-><init>(Lhub;Lhud;)V

    iget v0, p0, Lhub;->c:I

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private b(I)V
    .locals 3

    .prologue
    .line 63
    iget v0, p0, Lhub;->b:I

    if-nez v0, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-object v0, p0, Lhub;->a:Ljava/util/List;

    iget v1, p0, Lhub;->b:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhud;

    .line 66
    invoke-static {v0}, Lhud;->b(Lhud;)I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 68
    iget v0, p0, Lhub;->b:I

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    iget-object v0, p0, Lhub;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 69
    iget-object v0, p0, Lhub;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhud;

    .line 70
    invoke-static {v0}, Lhud;->a(Lhud;)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 68
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 73
    :cond_2
    iget v0, p0, Lhub;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lhub;->b:I

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhub;->d:Z

    .line 79
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhub;->d:Z

    .line 83
    return-void
.end method

.method public onScrollChange(Landroid/support/v4/widget/NestedScrollView;IIII)V
    .locals 2

    .prologue
    .line 35
    iget-boolean v0, p0, Lhub;->d:Z

    if-nez v0, :cond_0

    .line 43
    :goto_0
    return-void

    .line 37
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/support/v4/widget/NestedScrollView;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 38
    if-lt p3, v0, :cond_1

    .line 39
    invoke-direct {p0, p3}, Lhub;->a(I)V

    goto :goto_0

    .line 41
    :cond_1
    invoke-direct {p0, p3}, Lhub;->b(I)V

    goto :goto_0
.end method
