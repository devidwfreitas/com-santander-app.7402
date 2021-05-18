.class Lgma;
.super Landroid/support/v4/view/PagerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lgly;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lgly;Landroid/content/Context;Ljava/util/List;)V
    .locals 1

    .prologue
    .line 111
    iput-object p1, p0, Lgma;->c:Lgly;

    iput-object p2, p0, Lgma;->a:Landroid/content/Context;

    iput-object p3, p0, Lgma;->b:Ljava/util/List;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgma;->d:Ljava/util/List;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgma;->e:Ljava/util/List;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgma;->f:Ljava/util/List;

    return-void
.end method

.method private a()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 209
    iget-object v0, p0, Lgma;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 210
    iget-object v2, p0, Lgma;->c:Lgly;

    invoke-static {v2}, Lgly;->c(Lgly;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 211
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 213
    :cond_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 217
    :cond_1
    iget-object v0, p0, Lgma;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 218
    iget-object v2, p0, Lgma;->c:Lgly;

    invoke-static {v2}, Lgly;->c(Lgly;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 219
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 222
    :cond_2
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 227
    :cond_3
    iget-object v0, p0, Lgma;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 228
    iget-object v2, p0, Lgma;->c:Lgly;

    invoke-static {v2}, Lgly;->c(Lgly;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 229
    const v2, 0x7f0204d3

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 231
    :cond_4
    const v2, 0x7f0204f7

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 234
    :cond_5
    return-void
.end method

.method static synthetic a(Lgma;)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Lgma;->a()V

    return-void
.end method

.method private b()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 238
    iget-object v0, p0, Lgma;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 239
    iget-object v2, p0, Lgma;->c:Lgly;

    invoke-static {v2}, Lgly;->c(Lgly;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 240
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 242
    :cond_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 246
    :cond_1
    iget-object v0, p0, Lgma;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 247
    iget-object v2, p0, Lgma;->c:Lgly;

    invoke-static {v2}, Lgly;->c(Lgly;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 248
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 250
    :cond_2
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 254
    :cond_3
    iget-object v0, p0, Lgma;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 255
    iget-object v2, p0, Lgma;->c:Lgly;

    invoke-static {v2}, Lgly;->c(Lgly;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 256
    const v2, 0x7f0204d3

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 258
    :cond_4
    const v2, 0x7f0204f7

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 261
    :cond_5
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 276
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lgma;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f10059d

    const v4, 0x7f0906b9

    const/16 v5, 0x8

    .line 119
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 121
    if-nez v1, :cond_1

    .line 122
    iget-object v0, p0, Lgma;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 123
    const v1, 0x7f040106

    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 125
    iget-object v0, p0, Lgma;->c:Lgly;

    new-instance v2, Lgme;

    iget-object v3, p0, Lgma;->c:Lgly;

    invoke-direct {v2, v3, v7}, Lgme;-><init>(Lgly;Lglz;)V

    invoke-static {v0, v2}, Lgly;->a(Lgly;Lgme;)Lgme;

    .line 127
    iget-object v0, p0, Lgma;->c:Lgly;

    invoke-static {v0}, Lgly;->b(Lgly;)Lgme;

    move-result-object v2

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {v2, v0}, Lgme;->a(Lgme;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 128
    iget-object v0, p0, Lgma;->c:Lgly;

    invoke-static {v0}, Lgly;->b(Lgly;)Lgme;

    move-result-object v2

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {v2, v0}, Lgme;->b(Lgme;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 129
    iget-object v0, p0, Lgma;->c:Lgly;

    invoke-static {v0}, Lgly;->b(Lgly;)Lgme;

    move-result-object v2

    const v0, 0x7f100599

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v2, v0}, Lgme;->a(Lgme;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 130
    iget-object v0, p0, Lgma;->c:Lgly;

    invoke-static {v0}, Lgly;->b(Lgly;)Lgme;

    move-result-object v2

    const v0, 0x7f10059b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v2, v0}, Lgme;->b(Lgme;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 131
    iget-object v0, p0, Lgma;->c:Lgly;

    invoke-static {v0}, Lgly;->b(Lgly;)Lgme;

    move-result-object v0

    invoke-static {v0}, Lgme;->a(Lgme;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lgma;->c:Lgly;

    invoke-static {v0}, Lgly;->b(Lgly;)Lgme;

    move-result-object v2

    const v0, 0x7f10059a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v2, v0}, Lgme;->a(Lgme;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 133
    iget-object v0, p0, Lgma;->c:Lgly;

    invoke-static {v0}, Lgly;->b(Lgly;)Lgme;

    move-result-object v2

    const v0, 0x7f10059c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-static {v2, v0}, Lgme;->a(Lgme;Landroid/widget/Button;)Landroid/widget/Button;

    .line 134
    iget-object v0, p0, Lgma;->c:Lgly;

    invoke-static {v0}, Lgly;->b(Lgly;)Lgme;

    move-result-object v2

    const v0, 0x7f100598

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-static {v2, v0}, Lgme;->a(Lgme;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    .line 135
    iget-object v0, p0, Lgma;->c:Lgly;

    invoke-static {v0}, Lgly;->b(Lgly;)Lgme;

    move-result-object v2

    const v0, 0x7f1005a0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v2, v0}, Lgme;->c(Lgme;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 136
    iget-object v0, p0, Lgma;->c:Lgly;

    invoke-static {v0}, Lgly;->b(Lgly;)Lgme;

    move-result-object v2

    const v0, 0x7f1005a1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v2, v0}, Lgme;->d(Lgme;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 137
    iget-object v0, p0, Lgma;->c:Lgly;

    invoke-static {v0}, Lgly;->b(Lgly;)Lgme;

    move-result-object v2

    const v0, 0x7f1005a2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v2, v0}, Lgme;->e(Lgme;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 138
    iget-object v0, p0, Lgma;->c:Lgly;

    invoke-static {v0}, Lgly;->b(Lgly;)Lgme;

    move-result-object v2

    const v0, 0x7f1005a3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v2, v0}, Lgme;->f(Lgme;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 140
    iget-object v0, p0, Lgma;->c:Lgly;

    invoke-static {v0}, Lgly;->b(Lgly;)Lgme;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 146
    :goto_0
    iget-object v0, p0, Lgma;->d:Ljava/util/List;

    iget-object v2, p0, Lgma;->c:Lgly;

    invoke-static {v2}, Lgly;->b(Lgly;)Lgme;

    move-result-object v2

    invoke-static {v2}, Lgme;->b(Lgme;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v0, p0, Lgma;->e:Ljava/util/List;

    iget-object v2, p0, Lgma;->c:Lgly;

    invoke-static {v2}, Lgly;->b(Lgly;)Lgme;

    move-result-object v2

    invoke-static {v2}, Lgme;->c(Lgme;)Landroid/widget/Button;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v0, p0, Lgma;->f:Ljava/util/List;

    iget-object v2, p0, Lgma;->c:Lgly;

    invoke-static {v2}, Lgly;->b(Lgly;)Lgme;

    move-result-object v2

    invoke-static {v2}, Lgme;->d(Lgme;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object v0, p0, Lgma;->c:Lgly;

    invoke-static {v0}, Lgly;->c(Lgly;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 151
    iget-object v0, p0, Lgma;->c:Lgly;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lgly;->a(Lgly;Z)Z

    .line 155
    :goto_1
    invoke-direct {p0}, Lgma;->b()V

    .line 157
    iget-object v0, p0, Lgma;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljde;

    .line 159
    iget-object v2, p0, Lgma;->c:Lgly;

    invoke-virtual {v2, v0}, Lgly;->a(Ljava/lang/Object;)V

    .line 160
    iget-object v2, p0, Lgma;->c:Lgly;

    invoke-static {v2}, Lgly;->d(Lgly;)Ljde;

    move-result-object v2

    if-nez v2, :cond_0

    .line 161
    iget-object v2, p0, Lgma;->c:Lgly;

    invoke-virtual {v2, v0}, Lgly;->a(Ljava/lang/Object;)V

    .line 164
    :cond_0
    iget-object v2, p0, Lgma;->c:Lgly;

    invoke-static {v2}, Lgly;->b(Lgly;)Lgme;

    move-result-object v2

    invoke-static {v2}, Lgme;->e(Lgme;)Landroid/widget/RelativeLayout;

    move-result-object v2

    new-instance v3, Lgmb;

    invoke-direct {v3, p0}, Lgmb;-><init>(Lgma;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v2, p0, Lgma;->c:Lgly;

    invoke-static {v2}, Lgly;->b(Lgly;)Lgme;

    move-result-object v2

    invoke-static {v2}, Lgme;->c(Lgme;)Landroid/widget/Button;

    move-result-object v2

    new-instance v3, Lgmc;

    invoke-direct {v3, p0, p2}, Lgmc;-><init>(Lgma;I)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget-object v2, p0, Lgma;->c:Lgly;

    invoke-static {v2}, Lgly;->b(Lgly;)Lgme;

    move-result-object v2

    invoke-static {v2}, Lgme;->b(Lgme;)Landroid/widget/LinearLayout;

    move-result-object v2

    new-instance v3, Lgmd;

    invoke-direct {v3, p0, p2}, Lgmd;-><init>(Lgma;I)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object v2, p0, Lgma;->c:Lgly;

    invoke-static {v2}, Lgly;->b(Lgly;)Lgme;

    move-result-object v2

    invoke-static {v2}, Lgme;->c(Lgme;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lgma;->c:Lgly;

    invoke-static {v3}, Lgly;->g(Lgly;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v2, p0, Lgma;->c:Lgly;

    invoke-static {v2}, Lgly;->b(Lgly;)Lgme;

    move-result-object v2

    invoke-static {v2}, Lgme;->f(Lgme;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Ljde;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v2, p0, Lgma;->c:Lgly;

    invoke-static {v2}, Lgly;->b(Lgly;)Lgme;

    move-result-object v2

    invoke-static {v2}, Lgme;->a(Lgme;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lgma;->c:Lgly;

    invoke-static {v3}, Lgly;->g(Lgly;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v2, p0, Lgma;->c:Lgly;

    invoke-static {v2}, Lgly;->b(Lgly;)Lgme;

    move-result-object v2

    invoke-static {v2}, Lgme;->g(Lgme;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lgma;->a:Landroid/content/Context;

    const v4, 0x7f0906d2

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v2, p0, Lgma;->c:Lgly;

    invoke-static {v2}, Lgly;->b(Lgly;)Lgme;

    move-result-object v2

    invoke-static {v2}, Lgme;->h(Lgme;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Ljde;->b()Lftx;

    move-result-object v0

    invoke-virtual {v0}, Lftx;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v0, p0, Lgma;->c:Lgly;

    invoke-static {v0}, Lgly;->b(Lgly;)Lgme;

    move-result-object v0

    invoke-static {v0}, Lgme;->i(Lgme;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lgma;->c:Lgly;

    invoke-static {v0}, Lgly;->b(Lgly;)Lgme;

    move-result-object v0

    invoke-static {v0}, Lgme;->j(Lgme;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 205
    return-object v1

    .line 143
    :cond_1
    iget-object v2, p0, Lgma;->c:Lgly;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgme;

    invoke-static {v2, v0}, Lgly;->a(Lgly;Lgme;)Lgme;

    goto/16 :goto_0

    .line 153
    :cond_2
    iget-object v0, p0, Lgma;->c:Lgly;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lgly;->a(Lgly;Z)Z

    goto/16 :goto_1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 270
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
