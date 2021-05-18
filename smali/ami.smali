.class public Lami;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lamh;


# instance fields
.field final synthetic a:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

.field private b:Ljava/lang/Object;

.field private c:Ljava/lang/Object;

.field private d:Z


# direct methods
.method public constructor <init>(Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lami;->a:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private j()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lami;->a:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    invoke-static {v0}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->f(Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {p0}, Lami;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 143
    return-void

    .line 142
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lami;->d()V

    .line 57
    iget-object v0, p0, Lami;->a:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    invoke-static {v0}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->a(Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;)Lamr;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lami;->a:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    invoke-static {v0}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->a(Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;)Lamr;

    move-result-object v0

    invoke-static {v0}, Lamr;->a(Lamr;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    :cond_0
    invoke-virtual {p0}, Lami;->g()V

    .line 62
    :goto_0
    invoke-direct {p0}, Lami;->j()V

    .line 63
    return-void

    .line 60
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lami;->a(I)V

    goto :goto_0
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lami;->a:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    invoke-static {v0}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->b(Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 78
    iget-object v0, p0, Lami;->c:Ljava/lang/Object;

    iput-object v0, p0, Lami;->b:Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Lami;->a:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    invoke-static {v0}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->a(Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;)Lamr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lamr;->a(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lami;->c:Ljava/lang/Object;

    .line 80
    invoke-virtual {p0}, Lami;->h()V

    .line 82
    iget-object v0, p0, Lami;->a:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    invoke-static {v0}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->a(Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;)Lamr;

    move-result-object v0

    iget-object v1, p0, Lami;->a:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    invoke-static {v0, v1, p1}, Lamr;->a(Lamr;Landroid/view/ViewGroup;I)Lamu;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lami;->a:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    invoke-static {v1}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->b(Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 85
    iget-object v0, p0, Lami;->a:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    invoke-static {v0}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->a(Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;)Lamr;

    move-result-object v0

    invoke-static {v0}, Lamr;->b(Lamr;)V

    .line 87
    invoke-direct {p0}, Lami;->j()V

    .line 88
    return-void
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lami;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lami;->a:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    invoke-static {v0}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->c(Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;)V

    .line 93
    invoke-virtual {p0, p1}, Lami;->a(I)V

    .line 94
    return-void
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lami;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lami;->a:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    invoke-static {v0}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->d(Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lami;->a:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    invoke-static {v0}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->c(Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;)V

    .line 101
    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lami;->a:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    invoke-static {v0}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->d(Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lami;->a:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    invoke-static {v0}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->c(Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;)V

    .line 108
    :cond_0
    return-void
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lami;->a:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    invoke-static {v0}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->a(Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;)Lamr;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lami;->a:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    invoke-static {v0}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->a(Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;)Lamr;

    move-result-object v0

    invoke-static {v0}, Lamr;->c(Lamr;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()V
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lami;->c:Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Lami;->a:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    invoke-static {v0}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->b(Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 119
    return-void
.end method

.method public h()V
    .locals 4

    .prologue
    .line 124
    iget-object v0, p0, Lami;->a:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    invoke-static {v0}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->e(Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;)Lamt;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lami;->d:Z

    if-nez v0, :cond_0

    .line 126
    :try_start_0
    iget-object v0, p0, Lami;->a:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    invoke-static {v0}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->e(Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;)Lamt;

    move-result-object v0

    iget-object v1, p0, Lami;->a:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    iget-object v2, p0, Lami;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lamt;->a(Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lami;->d:Z

    .line 133
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 128
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid class in in OnItemSelectedListener - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 129
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public i()V
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lami;->d:Z

    .line 138
    iget-object v0, p0, Lami;->a:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    invoke-static {v0}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->a(Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;)Lamr;

    move-result-object v0

    invoke-virtual {v0}, Lamr;->notifyDataSetChanged()V

    .line 139
    return-void
.end method
