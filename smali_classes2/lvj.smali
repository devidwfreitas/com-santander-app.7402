.class public Llvj;
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
        "Llvm;",
        "Llvj",
        "<TParent;>;>;",
        "Lmdo",
        "<",
        "Llvj;",
        "Lmdt;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Llvl;

.field private i:Lkwh;

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lmew;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Llvj;->j:Z

    return-void
.end method

.method static synthetic a(Llvj;)Llvl;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Llvj;->a:Llvl;

    return-object v0
.end method

.method static synthetic b(Llvj;)Lkwh;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Llvj;->i:Lkwh;

    return-object v0
.end method

.method private b(Llvm;)V
    .locals 4

    .prologue
    .line 141
    invoke-static {p1}, Llvm;->a(Llvm;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 142
    iget-object v0, p1, Llvm;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 143
    invoke-static {p1}, Llvm;->a(Llvm;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e00b9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 144
    invoke-static {p1}, Llvm;->a(Llvm;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0200a5

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 145
    return-void
.end method

.method private c(Llvm;)V
    .locals 4

    .prologue
    .line 148
    invoke-static {p1}, Llvm;->a(Llvm;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 149
    iget-object v0, p1, Llvm;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 150
    invoke-static {p1}, Llvm;->a(Llvm;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e00b9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 151
    invoke-static {p1}, Llvm;->a(Llvm;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f02009c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 152
    return-void
.end method


# virtual methods
.method public a(Lkwh;)Llvj;
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Llvj;->i:Lkwh;

    .line 45
    return-object p0
.end method

.method public a(Llvl;)Llvj;
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Llvj;->a:Llvl;

    .line 50
    return-object p0
.end method

.method public a(Z)Llvj;
    .locals 0

    .prologue
    .line 60
    iput-boolean p1, p0, Llvj;->j:Z

    .line 61
    return-object p0
.end method

.method public a(Landroid/view/View;)Llvm;
    .locals 1

    .prologue
    .line 157
    new-instance v0, Llvm;

    invoke-direct {v0, p1}, Llvm;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 32
    check-cast p1, Llvm;

    invoke-virtual {p0, p1}, Llvj;->a(Llvm;)V

    return-void
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 32
    check-cast p1, Llvm;

    invoke-virtual {p0, p1, p2}, Llvj;->a(Llvm;Ljava/util/List;)V

    return-void
.end method

.method public a(Llvm;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 130
    invoke-super {p0, p1}, Lmew;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 131
    invoke-static {p1}, Llvm;->d(Llvm;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 132
    invoke-static {p1}, Llvm;->c(Llvm;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    invoke-static {p1}, Llvm;->d(Llvm;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 134
    invoke-static {p1}, Llvm;->a(Llvm;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 135
    invoke-static {p1}, Llvm;->a(Llvm;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 136
    invoke-static {p1}, Llvm;->a(Llvm;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    invoke-static {p1}, Llvm;->a(Llvm;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 138
    return-void
.end method

.method public a(Llvm;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llvm;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const v5, 0x7f090831

    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 91
    invoke-super {p0, p1, p2}, Lmew;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)V

    .line 92
    iget-object v0, p1, Llvm;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 93
    invoke-static {p1}, Llvm;->a(Llvm;)Landroid/widget/Button;

    move-result-object v4

    iget-object v0, p0, Llvj;->i:Lkwh;

    invoke-virtual {v0}, Lkwh;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 94
    invoke-static {p1}, Llvm;->a(Llvm;)Landroid/widget/Button;

    move-result-object v0

    iget-object v4, p0, Llvj;->i:Lkwh;

    invoke-virtual {v4}, Lkwh;->i()Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 95
    iget-object v0, p0, Llvj;->i:Lkwh;

    invoke-virtual {v0}, Lkwh;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    invoke-static {p1}, Llvm;->b(Llvm;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    invoke-static {p1}, Llvm;->c(Llvm;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    :goto_1
    iget-object v0, p0, Llvj;->i:Lkwh;

    invoke-virtual {v0}, Lkwh;->b()Lkwi;

    move-result-object v0

    sget-object v1, Lkwi;->SEND:Lkwi;

    if-ne v0, v1, :cond_2

    .line 105
    invoke-direct {p0, p1}, Llvj;->b(Llvm;)V

    .line 106
    invoke-static {p1}, Llvm;->a(Llvm;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0908ec

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 112
    :goto_2
    iget-object v0, p0, Llvj;->i:Lkwh;

    invoke-virtual {v0}, Lkwh;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 113
    invoke-static {p1}, Llvm;->d(Llvm;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02046d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 118
    :goto_3
    invoke-static {p1}, Llvm;->a(Llvm;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Llvk;

    invoke-direct {v1, p0}, Llvk;-><init>(Llvj;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    return-void

    :cond_0
    move v0, v2

    .line 93
    goto :goto_0

    .line 99
    :cond_1
    invoke-static {p1}, Llvm;->b(Llvm;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    invoke-static {p1}, Llvm;->b(Llvm;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    invoke-static {p1}, Llvm;->c(Llvm;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0904dd

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Llvj;->i:Lkwh;

    invoke-virtual {v5}, Lkwh;->e()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x1

    iget-object v5, p0, Llvj;->i:Lkwh;

    invoke-virtual {v5}, Lkwh;->f()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x2

    iget-object v5, p0, Llvj;->i:Lkwh;

    invoke-virtual {v5}, Lkwh;->g()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 108
    :cond_2
    invoke-direct {p0, p1}, Llvj;->c(Llvm;)V

    .line 109
    invoke-static {p1}, Llvm;->a(Llvm;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0903f4

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 115
    :cond_3
    invoke-static {p1}, Llvm;->d(Llvm;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02048b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Llvj;->j:Z

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 71
    const v0, 0x7f100005

    return v0
.end method

.method public synthetic b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Llvj;->a(Landroid/view/View;)Llvm;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 81
    const v0, 0x7f040361

    return v0
.end method

.method public synthetic c(Z)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Llvj;->a(Z)Llvj;

    move-result-object v0

    return-object v0
.end method
