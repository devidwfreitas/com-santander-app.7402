.class public Lhue;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lhug;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:I = 0x1

.field private static final b:I = 0x2

.field private static final c:I = 0x3


# instance fields
.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lhuk;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lhuk;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lhue;-><init>(Ljava/util/List;Z)V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lhuk;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 35
    iput-object p1, p0, Lhue;->d:Ljava/util/List;

    .line 36
    iput-boolean p2, p0, Lhue;->e:Z

    .line 37
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lhug;
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 55
    new-instance v0, Lhui;

    invoke-direct {v0, p1}, Lhui;-><init>(Landroid/view/ViewGroup;)V

    .line 59
    :goto_0
    return-object v0

    .line 56
    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 57
    new-instance v0, Lhuj;

    invoke-direct {v0, p1}, Lhuj;-><init>(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 59
    :cond_1
    new-instance v0, Lhuh;

    invoke-direct {v0, p1}, Lhuh;-><init>(Landroid/view/ViewGroup;)V

    goto :goto_0
.end method

.method public a(Lhug;I)V
    .locals 2

    .prologue
    .line 65
    invoke-virtual {p0, p2}, Lhue;->getItemViewType(I)I

    move-result v0

    .line 66
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 67
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lhug;->a(Lhuk;)V

    .line 75
    :goto_0
    return-void

    .line 69
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 70
    add-int/lit8 p2, p2, -0x1

    .line 72
    :cond_1
    iget-object v0, p0, Lhue;->d:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhuk;

    .line 73
    invoke-virtual {p1, v0}, Lhug;->a(Lhuk;)V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lhue;->e:Z

    return v0
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lhue;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 80
    iget-boolean v1, p0, Lhue;->e:Z

    if-nez v1, :cond_0

    .line 81
    add-int/lit8 v0, v0, 0x1

    .line 83
    :cond_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lhue;->e:Z

    if-eqz v0, :cond_0

    .line 42
    const/4 v0, 0x3

    .line 47
    :goto_0
    return v0

    .line 44
    :cond_0
    if-nez p1, :cond_1

    .line 45
    const/4 v0, 0x1

    goto :goto_0

    .line 47
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Lhug;

    invoke-virtual {p0, p1, p2}, Lhue;->a(Lhug;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1, p2}, Lhue;->a(Landroid/view/ViewGroup;I)Lhug;

    move-result-object v0

    return-object v0
.end method
