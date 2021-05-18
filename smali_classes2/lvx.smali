.class public Llvx;
.super Lmew;
.source "SourceFile"

# interfaces
.implements Lmdo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Parent::",
        "Lmdt;",
        ":",
        "Lmdp;",
        ":",
        "Lmdx;",
        ":",
        "Lmdn;",
        ">",
        "Lmew",
        "<TParent;",
        "Llvy;",
        "Llvx",
        "<TParent;>;>;",
        "Lmdo",
        "<",
        "Llvx;",
        "Lmdt;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lkvs;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 30
    invoke-direct {p0}, Lmew;-><init>()V

    .line 34
    iput-boolean v0, p0, Llvx;->j:Z

    .line 35
    iput-boolean v0, p0, Llvx;->k:Z

    .line 36
    iput-boolean v0, p0, Llvx;->l:Z

    .line 38
    iput-boolean v0, p0, Llvx;->m:Z

    return-void
.end method

.method private b(Llvy;)V
    .locals 4

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 126
    invoke-static {p1}, Llvy;->d(Llvy;)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Llvx;->j:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 127
    invoke-static {p1}, Llvy;->e(Llvy;)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Llvx;->k:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 128
    invoke-static {p1}, Llvy;->f(Llvy;)Landroid/view/View;

    move-result-object v0

    iget-boolean v3, p0, Llvx;->l:Z

    if-eqz v3, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 129
    return-void

    :cond_0
    move v0, v2

    .line 126
    goto :goto_0

    :cond_1
    move v0, v2

    .line 127
    goto :goto_1

    :cond_2
    move v1, v2

    .line 128
    goto :goto_2
.end method


# virtual methods
.method public a(Lkvs;)Llvx;
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Llvx;->a:Lkvs;

    .line 42
    return-object p0
.end method

.method public a(Z)Llvx;
    .locals 0

    .prologue
    .line 46
    iput-boolean p1, p0, Llvx;->i:Z

    .line 47
    return-object p0
.end method

.method public a(Landroid/view/View;)Llvy;
    .locals 1

    .prologue
    .line 133
    new-instance v0, Llvy;

    invoke-direct {v0, p1}, Llvy;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 30
    check-cast p1, Llvy;

    invoke-virtual {p0, p1}, Llvx;->a(Llvy;)V

    return-void
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 30
    check-cast p1, Llvy;

    invoke-virtual {p0, p1, p2}, Llvx;->a(Llvy;Ljava/util/List;)V

    return-void
.end method

.method public a(Llvy;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 118
    invoke-super {p0, p1}, Lmew;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 119
    invoke-static {p1}, Llvy;->a(Llvy;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 120
    invoke-static {p1}, Llvy;->b(Llvy;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    invoke-static {p1}, Llvy;->c(Llvy;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    invoke-direct {p0, p1}, Llvx;->b(Llvy;)V

    .line 123
    return-void
.end method

.method public a(Llvy;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llvy;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 103
    invoke-super {p0, p1, p2}, Lmew;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)V

    .line 104
    iget-boolean v0, p0, Llvx;->i:Z

    if-eqz v0, :cond_1

    .line 105
    invoke-static {p1}, Llvy;->a(Llvy;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02036d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 109
    :goto_0
    iget-object v0, p0, Llvx;->a:Lkvs;

    invoke-virtual {v0}, Lkvs;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    invoke-static {p1}, Llvy;->b(Llvy;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Llvx;->a:Lkvs;

    invoke-virtual {v1}, Lkvs;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    :cond_0
    invoke-static {p1}, Llvy;->c(Llvy;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Llvx;->a:Lkvs;

    invoke-virtual {v1}, Lkvs;->e()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lmhj;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    invoke-direct {p0, p1}, Llvx;->b(Llvy;)V

    .line 114
    return-void

    .line 107
    :cond_1
    invoke-static {p1}, Llvy;->a(Llvy;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02048b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Llvx;->m:Z

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 83
    const v0, 0x7f100010

    return v0
.end method

.method public synthetic b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Llvx;->a(Landroid/view/View;)Llvy;

    move-result-object v0

    return-object v0
.end method

.method public b(Z)Llvx;
    .locals 0

    .prologue
    .line 51
    iput-boolean p1, p0, Llvx;->j:Z

    .line 52
    return-object p0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 93
    const v0, 0x7f04036f

    return v0
.end method

.method public synthetic c(Z)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Llvx;->f(Z)Llvx;

    move-result-object v0

    return-object v0
.end method

.method public d(Z)Llvx;
    .locals 0

    .prologue
    .line 56
    iput-boolean p1, p0, Llvx;->l:Z

    .line 57
    return-object p0
.end method

.method public e(Z)Llvx;
    .locals 0

    .prologue
    .line 61
    iput-boolean p1, p0, Llvx;->k:Z

    .line 62
    return-object p0
.end method

.method public f(Z)Llvx;
    .locals 0

    .prologue
    .line 72
    iput-boolean p1, p0, Llvx;->m:Z

    .line 73
    return-object p0
.end method
