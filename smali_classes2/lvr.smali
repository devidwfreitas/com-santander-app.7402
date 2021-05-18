.class public Llvr;
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
        "Llvw;",
        "Llvr",
        "<TParent;>;>;",
        "Lmdo",
        "<",
        "Llvr;",
        "Lmdt;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Llvv;

.field private i:Z

.field private j:Llvu;

.field private k:Lkwk;

.field private l:Z

.field private m:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 34
    invoke-direct {p0}, Lmew;-><init>()V

    .line 40
    iput-boolean v1, p0, Llvr;->i:Z

    .line 49
    sget-object v0, Llvv;->ENVIAR:Llvv;

    iput-object v0, p0, Llvr;->a:Llvv;

    .line 51
    iput-boolean v1, p0, Llvr;->m:Z

    return-void
.end method

.method static synthetic a(Llvr;)Llvu;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Llvr;->j:Llvu;

    return-object v0
.end method

.method static synthetic b(Llvr;)Lkwk;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Llvr;->k:Lkwk;

    return-object v0
.end method

.method private b(Llvw;)V
    .locals 4

    .prologue
    .line 181
    invoke-static {p1}, Llvw;->d(Llvw;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 182
    iget-object v0, p1, Llvw;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 183
    invoke-static {p1}, Llvw;->d(Llvw;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e00b9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 184
    invoke-static {p1}, Llvw;->d(Llvw;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0200a5

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 185
    return-void
.end method

.method private c(Llvw;)V
    .locals 4

    .prologue
    .line 188
    invoke-static {p1}, Llvw;->d(Llvw;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 189
    iget-object v0, p1, Llvw;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 190
    invoke-static {p1}, Llvw;->d(Llvw;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e00b9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 191
    invoke-static {p1}, Llvw;->d(Llvw;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f02009c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 192
    return-void
.end method


# virtual methods
.method public a(Lkwk;)Llvr;
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Llvr;->k:Lkwk;

    .line 55
    return-object p0
.end method

.method public a(Llvu;)Llvr;
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Llvr;->j:Llvu;

    .line 60
    return-object p0
.end method

.method public a(Llvv;)Llvr;
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Llvr;->a:Llvv;

    .line 65
    return-object p0
.end method

.method public a(Z)Llvr;
    .locals 0

    .prologue
    .line 69
    iput-boolean p1, p0, Llvr;->l:Z

    .line 70
    return-object p0
.end method

.method public a(Landroid/view/View;)Llvw;
    .locals 1

    .prologue
    .line 197
    new-instance v0, Llvw;

    invoke-direct {v0, p1}, Llvw;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 34
    check-cast p1, Llvw;

    invoke-virtual {p0, p1}, Llvr;->a(Llvw;)V

    return-void
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 34
    check-cast p1, Llvw;

    invoke-virtual {p0, p1, p2}, Llvr;->a(Llvw;Ljava/util/List;)V

    return-void
.end method

.method public a(Llvw;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 170
    invoke-super {p0, p1}, Lmew;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 171
    invoke-static {p1}, Llvw;->a(Llvw;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 172
    invoke-static {p1}, Llvw;->c(Llvw;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    invoke-static {p1}, Llvw;->b(Llvw;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    invoke-static {p1}, Llvw;->d(Llvw;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 175
    invoke-static {p1}, Llvw;->d(Llvw;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 176
    invoke-static {p1}, Llvw;->d(Llvw;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 177
    invoke-static {p1}, Llvw;->d(Llvw;)Landroid/widget/Button;

    move-result-object v0

    iget-boolean v1, p0, Llvr;->i:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 178
    return-void
.end method

.method public a(Llvw;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llvw;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v3, 0x8

    .line 120
    invoke-super {p0, p1, p2}, Lmew;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)V

    .line 121
    iget-boolean v0, p0, Llvr;->l:Z

    if-eqz v0, :cond_1

    .line 122
    invoke-static {p1}, Llvw;->a(Llvw;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02046d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 127
    :goto_0
    iget-object v0, p0, Llvr;->k:Lkwk;

    invoke-virtual {v0}, Lkwk;->d()Lkuw;

    move-result-object v0

    invoke-virtual {v0}, Lkuw;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llvr;->k:Lkwk;

    invoke-virtual {v0}, Lkwk;->d()Lkuw;

    move-result-object v0

    invoke-virtual {v0}, Lkuw;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    invoke-static {p1}, Llvw;->b(Llvw;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    invoke-static {p1}, Llvw;->b(Llvw;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Llvr;->k:Lkwk;

    invoke-virtual {v1}, Lkwk;->d()Lkuw;

    move-result-object v1

    invoke-virtual {v1}, Lkuw;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    :cond_0
    invoke-static {p1}, Llvw;->c(Llvw;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Llvr;->k:Lkwk;

    invoke-virtual {v1}, Lkwk;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    invoke-static {p1}, Llvw;->d(Llvw;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Llvs;

    invoke-direct {v1, p0}, Llvs;-><init>(Llvr;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v0, p1, Llvw;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 143
    sget-object v1, Llvt;->a:[I

    iget-object v2, p0, Llvr;->a:Llvv;

    invoke-virtual {v2}, Llvv;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 161
    invoke-static {p1}, Llvw;->d(Llvw;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 165
    :goto_1
    invoke-static {p1}, Llvw;->d(Llvw;)Landroid/widget/Button;

    move-result-object v0

    iget-boolean v1, p0, Llvr;->i:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 166
    return-void

    .line 124
    :cond_1
    invoke-static {p1}, Llvw;->a(Llvw;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02048b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 145
    :pswitch_0
    invoke-direct {p0, p1}, Llvr;->b(Llvw;)V

    .line 146
    invoke-static {p1}, Llvw;->d(Llvw;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0908ec

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 149
    :pswitch_1
    invoke-direct {p0, p1}, Llvr;->b(Llvw;)V

    .line 150
    invoke-static {p1}, Llvw;->d(Llvw;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0908aa

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 154
    :pswitch_2
    invoke-direct {p0, p1}, Llvr;->c(Llvw;)V

    .line 155
    invoke-static {p1}, Llvw;->d(Llvw;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f090afb

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 158
    :pswitch_3
    invoke-static {p1}, Llvw;->d(Llvw;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 143
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Llvr;->m:Z

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 100
    const v0, 0x7f100007

    return v0
.end method

.method public synthetic b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Llvr;->a(Landroid/view/View;)Llvw;

    move-result-object v0

    return-object v0
.end method

.method public b(Z)Llvr;
    .locals 0

    .prologue
    .line 74
    iput-boolean p1, p0, Llvr;->i:Z

    .line 75
    return-object p0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 110
    const v0, 0x7f040364

    return v0
.end method

.method public synthetic c(Z)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Llvr;->d(Z)Llvr;

    move-result-object v0

    return-object v0
.end method

.method public d(Z)Llvr;
    .locals 0

    .prologue
    .line 89
    iput-boolean p1, p0, Llvr;->m:Z

    .line 90
    return-object p0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Llvr;->l:Z

    return v0
.end method
