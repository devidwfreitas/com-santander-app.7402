.class public Llvf;
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
        "Llvi;",
        "Llvf",
        "<TParent;>;>;",
        "Lmdo",
        "<",
        "Llvf;",
        "Lmdt;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Llvh;

.field private i:Lkuw;

.field private j:Z

.field private k:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 32
    invoke-direct {p0}, Lmew;-><init>()V

    .line 40
    iput-boolean v0, p0, Llvf;->j:Z

    .line 42
    iput-boolean v0, p0, Llvf;->k:Z

    return-void
.end method

.method static synthetic a(Llvf;)Llvh;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Llvf;->a:Llvh;

    return-object v0
.end method

.method private b(Llvi;)V
    .locals 4

    .prologue
    .line 120
    invoke-static {p1}, Llvi;->c(Llvi;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 121
    iget-object v0, p1, Llvi;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 122
    invoke-static {p1}, Llvi;->c(Llvi;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e00b9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 123
    invoke-static {p1}, Llvi;->c(Llvi;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0200a5

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 124
    return-void
.end method

.method private c(Llvi;)V
    .locals 4

    .prologue
    .line 127
    invoke-static {p1}, Llvi;->c(Llvi;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 128
    iget-object v0, p1, Llvi;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 129
    invoke-static {p1}, Llvi;->c(Llvi;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e00b9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 130
    invoke-static {p1}, Llvi;->c(Llvi;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f02009c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 131
    return-void
.end method


# virtual methods
.method public a(Llvh;)Llvf;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Llvf;->a:Llvh;

    .line 46
    return-object p0
.end method

.method public a(Z)Llvf;
    .locals 0

    .prologue
    .line 50
    iput-boolean p1, p0, Llvf;->j:Z

    .line 51
    return-object p0
.end method

.method public a(Landroid/view/View;)Llvi;
    .locals 1

    .prologue
    .line 136
    new-instance v0, Llvi;

    invoke-direct {v0, p1}, Llvi;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 32
    check-cast p1, Llvi;

    invoke-virtual {p0, p1}, Llvf;->a(Llvi;)V

    return-void
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 32
    check-cast p1, Llvi;

    invoke-virtual {p0, p1, p2}, Llvf;->a(Llvi;Ljava/util/List;)V

    return-void
.end method

.method public a(Llvi;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 111
    invoke-super {p0, p1}, Lmew;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 112
    invoke-static {p1}, Llvi;->a(Llvi;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 113
    invoke-static {p1}, Llvi;->b(Llvi;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    invoke-static {p1}, Llvi;->c(Llvi;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 115
    invoke-static {p1}, Llvi;->c(Llvi;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 116
    invoke-static {p1}, Llvi;->c(Llvi;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 117
    return-void
.end method

.method public a(Llvi;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llvi;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    invoke-super {p0, p1, p2}, Lmew;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)V

    .line 93
    iget-object v0, p1, Llvi;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 94
    invoke-static {p1}, Llvi;->a(Llvi;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f020372

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 95
    invoke-static {p1}, Llvi;->b(Llvi;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0903dd

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    invoke-direct {p0, p1}, Llvf;->b(Llvi;)V

    .line 97
    invoke-static {p1}, Llvi;->c(Llvi;)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f090082

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 98
    invoke-static {p1}, Llvi;->c(Llvi;)Landroid/widget/Button;

    move-result-object v0

    iget-boolean v1, p0, Llvf;->j:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 99
    invoke-static {p1}, Llvi;->c(Llvi;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Llvg;

    invoke-direct {v1, p0}, Llvg;-><init>(Llvf;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Llvf;->k:Z

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 72
    const v0, 0x7f100004

    return v0
.end method

.method public synthetic b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Llvf;->a(Landroid/view/View;)Llvi;

    move-result-object v0

    return-object v0
.end method

.method public b(Z)Llvf;
    .locals 0

    .prologue
    .line 61
    iput-boolean p1, p0, Llvf;->k:Z

    .line 62
    return-object p0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 82
    const v0, 0x7f040360

    return v0
.end method

.method public synthetic c(Z)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Llvf;->b(Z)Llvf;

    move-result-object v0

    return-object v0
.end method
