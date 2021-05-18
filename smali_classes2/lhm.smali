.class public Llhm;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Llhn;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkpw;",
            ">;"
        }
    .end annotation
.end field

.field private b:D


# direct methods
.method public constructor <init>(Lkpu;)V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 31
    invoke-virtual {p1}, Lkpu;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Llhm;->a:Ljava/util/List;

    .line 33
    :try_start_0
    invoke-virtual {p1}, Lkpu;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Llhm;->b:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Llhn;
    .locals 3

    .prologue
    .line 41
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040352

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 42
    new-instance v1, Llhn;

    invoke-direct {v1, p0, v0}, Llhn;-><init>(Llhm;Landroid/view/View;)V

    return-object v1
.end method

.method public a(Llhn;I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 47
    iget-object v0, p0, Llhm;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkpw;

    .line 48
    invoke-static {p1}, Llhn;->a(Llhn;)Landroid/support/v7/widget/AppCompatSeekBar;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/support/v7/widget/AppCompatSeekBar;->setEnabled(Z)V

    .line 49
    invoke-static {p1}, Llhn;->a(Llhn;)Landroid/support/v7/widget/AppCompatSeekBar;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/AppCompatSeekBar;->setMax(I)V

    .line 50
    invoke-static {p1}, Llhn;->a(Llhn;)Landroid/support/v7/widget/AppCompatSeekBar;

    move-result-object v1

    invoke-virtual {v0}, Lkpw;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/AppCompatSeekBar;->setProgress(I)V

    .line 51
    invoke-static {p1}, Llhn;->b(Llhn;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lkpw;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmhj;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    invoke-static {p1}, Llhn;->c(Llhn;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lkpw;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmhj;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    invoke-static {p1}, Llhn;->d(Llhn;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "%s%%"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lkpw;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-wide v2, p0, Llhm;->b:D

    invoke-virtual {v0}, Lkpw;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lmhj;->a(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-static {p1}, Llhn;->e(Llhn;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Llhm;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 25
    check-cast p1, Llhn;

    invoke-virtual {p0, p1, p2}, Llhm;->a(Llhn;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2}, Llhm;->a(Landroid/view/ViewGroup;I)Llhn;

    move-result-object v0

    return-object v0
.end method
