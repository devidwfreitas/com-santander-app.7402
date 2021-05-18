.class public Llvn;
.super Lmew;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Parent::",
        "Lmdt;",
        ":",
        "Lmdp;",
        "SubItem::",
        "Lmdt;",
        ":",
        "Lmdx;",
        ">",
        "Lmew",
        "<",
        "Llvn",
        "<TParent;TSubItem;>;",
        "Llvp;",
        "TSubItem;>;"
    }
.end annotation


# instance fields
.field a:Llvq;

.field private i:Lmdg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmdg",
            "<",
            "Llvn;",
            ">;"
        }
    .end annotation
.end field

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Lkvs;

.field private final p:Lmdg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmdg",
            "<",
            "Llvn",
            "<TParent;TSubItem;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lmew;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Llvn;->n:Z

    .line 96
    new-instance v0, Llvo;

    invoke-direct {v0, p0}, Llvo;-><init>(Llvn;)V

    iput-object v0, p0, Llvn;->p:Lmdg;

    return-void
.end method

.method static synthetic a(Llvn;)Lmdg;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Llvn;->i:Lmdg;

    return-object v0
.end method

.method static synthetic a(Llvn;Z)Z
    .locals 0

    .prologue
    .line 29
    iput-boolean p1, p0, Llvn;->k:Z

    return p1
.end method


# virtual methods
.method public a(Lkvs;)Llvn;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkvs;",
            ")",
            "Llvn",
            "<TParent;TSubItem;>;"
        }
    .end annotation

    .prologue
    .line 65
    iput-object p1, p0, Llvn;->o:Lkvs;

    .line 66
    return-object p0
.end method

.method public a(Llvq;)Llvn;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llvq;",
            ")",
            "Llvn",
            "<TParent;TSubItem;>;"
        }
    .end annotation

    .prologue
    .line 81
    iput-object p1, p0, Llvn;->a:Llvq;

    .line 82
    return-object p0
.end method

.method public a(Lmdg;)Llvn;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmdg",
            "<",
            "Llvn;",
            ">;)",
            "Llvn",
            "<TParent;TSubItem;>;"
        }
    .end annotation

    .prologue
    .line 91
    iput-object p1, p0, Llvn;->i:Lmdg;

    .line 92
    return-object p0
.end method

.method public a(Z)Llvn;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Llvn",
            "<TParent;TSubItem;>;"
        }
    .end annotation

    .prologue
    .line 50
    iput-boolean p1, p0, Llvn;->k:Z

    .line 51
    return-object p0
.end method

.method public a(Landroid/view/View;)Llvp;
    .locals 1

    .prologue
    .line 199
    new-instance v0, Llvp;

    invoke-direct {v0, p1}, Llvp;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public a()Lmdg;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmdg",
            "<",
            "Llvn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Llvn;->i:Lmdg;

    return-object v0
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 29
    check-cast p1, Llvp;

    invoke-virtual {p0, p1}, Llvn;->a(Llvp;)V

    return-void
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 29
    check-cast p1, Llvp;

    invoke-virtual {p0, p1, p2}, Llvn;->a(Llvp;Ljava/util/List;)V

    return-void
.end method

.method public a(Llvp;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 181
    invoke-super {p0, p1}, Lmew;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 182
    invoke-static {p1}, Llvp;->b(Llvp;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    invoke-static {p1}, Llvp;->a(Llvp;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    invoke-static {p1}, Llvp;->c(Llvp;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {p0}, Llvn;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x43340000    # 180.0f

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setRotation(F)V

    .line 185
    invoke-static {p1}, Llvp;->d(Llvp;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 187
    invoke-static {p1}, Llvp;->e(Llvp;)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Llvn;->l:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 188
    invoke-static {p1}, Llvp;->f(Llvp;)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Llvn;->m:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 189
    iget-boolean v0, p0, Llvn;->n:Z

    if-eqz v0, :cond_3

    .line 190
    invoke-static {p1}, Llvp;->d(Llvp;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 195
    :goto_3
    return-void

    .line 184
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v2

    .line 187
    goto :goto_1

    :cond_2
    move v0, v2

    .line 188
    goto :goto_2

    .line 192
    :cond_3
    invoke-static {p1}, Llvp;->d(Llvp;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3
.end method

.method public a(Llvp;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llvp;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 161
    invoke-super {p0, p1, p2}, Lmew;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)V

    .line 162
    invoke-static {p1}, Llvp;->a(Llvp;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Llvn;->o:Lkvs;

    invoke-virtual {v3}, Lkvs;->i()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    invoke-static {p1}, Llvp;->b(Llvp;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Llvn;->o:Lkvs;

    invoke-virtual {v3}, Lkvs;->e()Ljava/util/Date;

    move-result-object v3

    invoke-static {v3}, Lmhj;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    invoke-static {p1}, Llvp;->c(Llvp;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {p0}, Llvn;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x43340000    # 180.0f

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setRotation(F)V

    .line 165
    iget-boolean v0, p0, Llvn;->j:Z

    if-eqz v0, :cond_2

    .line 166
    invoke-static {p1}, Llvp;->d(Llvp;)Landroid/widget/ImageView;

    move-result-object v0

    const v3, 0x7f02036d

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 171
    :goto_1
    iget-boolean v0, p0, Llvn;->n:Z

    if-eqz v0, :cond_0

    .line 172
    invoke-static {p1}, Llvp;->d(Llvp;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 175
    :cond_0
    invoke-static {p1}, Llvp;->e(Llvp;)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Llvn;->l:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 176
    invoke-static {p1}, Llvp;->f(Llvp;)Landroid/view/View;

    move-result-object v0

    iget-boolean v3, p0, Llvn;->m:Z

    if-eqz v3, :cond_4

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 177
    return-void

    .line 164
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 168
    :cond_2
    invoke-static {p1}, Llvp;->d(Llvp;)Landroid/widget/ImageView;

    move-result-object v0

    const v3, 0x7f02048b

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_3
    move v0, v2

    .line 175
    goto :goto_2

    :cond_4
    move v1, v2

    .line 176
    goto :goto_3
.end method

.method public b()I
    .locals 1

    .prologue
    .line 141
    const v0, 0x7f100006

    return v0
.end method

.method public synthetic b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Llvn;->a(Landroid/view/View;)Llvp;

    move-result-object v0

    return-object v0
.end method

.method public b(Z)Llvn;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Llvn",
            "<TParent;TSubItem;>;"
        }
    .end annotation

    .prologue
    .line 55
    iput-boolean p1, p0, Llvn;->j:Z

    .line 56
    return-object p0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 151
    const v0, 0x7f040373

    return v0
.end method

.method public c(Z)Llvn;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Llvn",
            "<TParent;TSubItem;>;"
        }
    .end annotation

    .prologue
    .line 60
    iput-boolean p1, p0, Llvn;->n:Z

    .line 61
    return-object p0
.end method

.method public d(Z)Llvn;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Llvn",
            "<TParent;TSubItem;>;"
        }
    .end annotation

    .prologue
    .line 70
    iput-boolean p1, p0, Llvn;->l:Z

    .line 71
    return-object p0
.end method

.method public d()Lmdg;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmdg",
            "<",
            "Llvn",
            "<TParent;TSubItem;>;>;"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Llvn;->p:Lmdg;

    return-object v0
.end method

.method public e(Z)Llvn;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Llvn",
            "<TParent;TSubItem;>;"
        }
    .end annotation

    .prologue
    .line 75
    iput-boolean p1, p0, Llvn;->m:Z

    .line 76
    return-object p0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Llvn;->j_()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 205
    iget-boolean v0, p0, Llvn;->k:Z

    return v0
.end method
