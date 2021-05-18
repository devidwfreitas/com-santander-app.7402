.class public Lamy;
.super Lamr;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lamr",
        "<",
        "Lanb;",
        "Lamu;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lanb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lamr;-><init>(Ljava/util/List;)V

    .line 23
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lamu;
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 28
    new-instance v0, Lanc;

    invoke-direct {v0, p1}, Lanc;-><init>(Landroid/view/ViewGroup;)V

    .line 32
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 30
    new-instance v0, Lamw;

    invoke-direct {v0, p1}, Lamw;-><init>(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 32
    :cond_1
    new-instance v0, Lamz;

    invoke-direct {v0, p1}, Lamz;-><init>(Landroid/view/ViewGroup;)V

    goto :goto_0
.end method

.method public a(Lamu;I)V
    .locals 2

    .prologue
    .line 38
    invoke-virtual {p0, p2}, Lamy;->getItemViewType(I)I

    move-result v0

    .line 39
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 40
    invoke-virtual {p0, p2}, Lamy;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Land;

    .line 41
    check-cast p1, Lanc;

    invoke-virtual {p1, v0}, Lanc;->a(Land;)V

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 43
    invoke-virtual {p0, p2}, Lamy;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lamx;

    .line 44
    check-cast p1, Lamw;

    invoke-virtual {p1, v0}, Lamw;->a(Lamx;)V

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lamy;->a(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Land;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    .line 52
    :cond_0
    invoke-virtual {p0, p1}, Lamy;->a(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lamx;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 15
    check-cast p1, Lamu;

    invoke-virtual {p0, p1, p2}, Lamy;->a(Lamu;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0, p1, p2}, Lamy;->a(Landroid/view/ViewGroup;I)Lamu;

    move-result-object v0

    return-object v0
.end method
