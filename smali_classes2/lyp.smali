.class public Llyp;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "sinister-code-key"


# instance fields
.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;

.field private e:Lbr/com/zup/multistatelayout/MultiStateLayout;

.field private f:Landroid/widget/RatingBar;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/support/v7/widget/RecyclerView;

.field private j:Lkwy;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkvh;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lkvk;",
            "Lkvh;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lltd;

.field private n:Lmgv;

.field private o:Lkvk;

.field private p:Ljava/lang/String;

.field private q:Lkvh;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 74
    const-string v0, ""

    iput-object v0, p0, Llyp;->p:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Llyp;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Llyp;->k:Ljava/util/List;

    return-object p1
.end method

.method public static a(Ljava/lang/String;)Llyp;
    .locals 3

    .prologue
    .line 78
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 79
    new-instance v1, Llyp;

    invoke-direct {v1}, Llyp;-><init>()V

    .line 80
    const-string v2, "sinister-code-key"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {v1, v0}, Llyp;->setArguments(Landroid/os/Bundle;)V

    .line 82
    return-object v1
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 263
    const v0, 0x7f1007b8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Llyp;->b:Landroid/widget/EditText;

    .line 264
    const v0, 0x7f1007ba

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Llyp;->c:Landroid/widget/Button;

    .line 265
    const v0, 0x7f10010f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/zup/multistatelayout/MultiStateLayout;

    iput-object v0, p0, Llyp;->e:Lbr/com/zup/multistatelayout/MultiStateLayout;

    .line 266
    const v0, 0x7f1007ac

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, p0, Llyp;->f:Landroid/widget/RatingBar;

    .line 267
    const v0, 0x7f1007ae

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llyp;->g:Landroid/widget/TextView;

    .line 268
    const v0, 0x7f1007ad

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Llyp;->h:Landroid/widget/LinearLayout;

    .line 269
    const v0, 0x7f1007b9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Llyp;->d:Landroid/widget/Button;

    .line 270
    const v0, 0x7f1007b7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Llyp;->i:Landroid/support/v7/widget/RecyclerView;

    .line 271
    new-instance v0, Lkwy;

    iget-object v1, p0, Llyp;->e:Lbr/com/zup/multistatelayout/MultiStateLayout;

    invoke-direct {v0, v1}, Lkwy;-><init>(Lbr/com/zup/multistatelayout/MultiStateLayout;)V

    iput-object v0, p0, Llyp;->j:Lkwy;

    .line 272
    invoke-virtual {p0}, Llyp;->a()V

    .line 273
    return-void
.end method

.method private a(Lkvk;)V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 177
    iput-object p1, p0, Llyp;->o:Lkvk;

    .line 178
    if-eqz p1, :cond_2

    iget-object v0, p0, Llyp;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Llyp;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvh;

    :goto_0
    iput-object v0, p0, Llyp;->q:Lkvh;

    .line 180
    iget-object v0, p0, Llyp;->q:Lkvh;

    if-eqz v0, :cond_5

    .line 181
    iget-object v0, p0, Llyp;->g:Landroid/widget/TextView;

    iget-object v1, p0, Llyp;->q:Lkvh;

    invoke-virtual {v1}, Lkvh;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v0, p0, Llyp;->q:Lkvh;

    invoke-virtual {v0}, Lkvh;->f()Ljava/util/List;

    move-result-object v0

    .line 184
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 185
    new-instance v1, Lkvi;

    invoke-direct {v1}, Lkvi;-><init>()V

    .line 186
    invoke-virtual {v1, v6}, Lkvi;->a(Z)V

    .line 187
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    :cond_0
    iget-object v1, p0, Llyp;->m:Lltd;

    if-eqz v1, :cond_3

    .line 192
    iget-object v1, p0, Llyp;->m:Lltd;

    invoke-virtual {v1, v0}, Lltd;->a(Ljava/util/List;)V

    .line 200
    :goto_1
    iget-object v0, p0, Llyp;->m:Lltd;

    new-instance v1, Llys;

    invoke-direct {v1, p0}, Llys;-><init>(Llyp;)V

    invoke-virtual {v0, v1}, Lltd;->a(Lltf;)V

    .line 212
    iget-object v0, p0, Llyp;->m:Lltd;

    invoke-virtual {v0}, Lltd;->getItemCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 213
    iget-object v0, p0, Llyp;->c:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 218
    :goto_2
    invoke-direct {p0}, Llyp;->f()V

    .line 219
    iget-object v0, p0, Llyp;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-ne v0, v7, :cond_1

    .line 220
    iget-object v0, p0, Llyp;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 237
    :cond_1
    :goto_3
    return-void

    .line 178
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 194
    :cond_3
    iget-object v1, p0, Llyp;->i:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Llyp;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 195
    new-instance v1, Lltd;

    iget-object v2, p0, Llyp;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {v1, v0, v2}, Lltd;-><init>(Ljava/util/List;Landroid/support/v7/widget/RecyclerView;)V

    iput-object v1, p0, Llyp;->m:Lltd;

    .line 196
    iget-object v0, p0, Llyp;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Llyp;->m:Lltd;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto :goto_1

    .line 215
    :cond_4
    iget-object v0, p0, Llyp;->c:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2

    .line 223
    :cond_5
    iget-object v0, p0, Llyp;->f:Landroid/widget/RatingBar;

    invoke-virtual {v0}, Landroid/widget/RatingBar;->getProgress()I

    move-result v0

    if-gtz v0, :cond_7

    .line 224
    iget-object v0, p0, Llyp;->c:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 228
    :goto_4
    iget-object v0, p0, Llyp;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    .line 229
    iget-object v0, p0, Llyp;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 232
    :cond_6
    iget-object v0, p0, Llyp;->m:Lltd;

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Llyp;->m:Lltd;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lltd;->a(Ljava/util/List;)V

    goto :goto_3

    .line 226
    :cond_7
    iget-object v0, p0, Llyp;->c:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_4
.end method

.method static synthetic a(Llyp;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Llyp;->d()V

    return-void
.end method

.method static synthetic a(Llyp;Lkvk;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1}, Llyp;->a(Lkvk;)V

    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 105
    iget-object v0, p0, Llyp;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 106
    iget-object v0, p0, Llyp;->i:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 107
    iget-object v0, p0, Llyp;->c:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 108
    invoke-direct {p0}, Llyp;->c()V

    .line 109
    return-void
.end method

.method static synthetic b(Llyp;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Llyp;->e()V

    return-void
.end method

.method static synthetic c(Llyp;)Lbr/com/zup/multistatelayout/MultiStateLayout;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Llyp;->e:Lbr/com/zup/multistatelayout/MultiStateLayout;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Llyp;->e:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->LOADING:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 113
    iget-object v0, p0, Llyp;->j:Lkwy;

    new-instance v1, Llyq;

    invoke-direct {v1, p0}, Llyq;-><init>(Llyp;)V

    invoke-virtual {v0, v1}, Lkwy;->a(Lkxa;)V

    .line 145
    return-void
.end method

.method static synthetic d(Llyp;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Llyp;->c:Landroid/widget/Button;

    return-object v0
.end method

.method private d()V
    .locals 7

    .prologue
    .line 149
    invoke-static {}, Lkvk;->values()[Lkvk;

    move-result-object v2

    .line 150
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Llyp;->l:Ljava/util/Map;

    .line 151
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    .line 152
    iget-object v0, p0, Llyp;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvh;

    .line 153
    invoke-virtual {v0}, Lkvh;->c()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0}, Lkvh;->g()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 154
    iget-object v5, p0, Llyp;->l:Ljava/util/Map;

    invoke-interface {v5, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 159
    :cond_2
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Llyp;->f:Landroid/widget/RatingBar;

    new-instance v1, Llyr;

    invoke-direct {v1, p0}, Llyr;-><init>(Llyp;)V

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setOnRatingBarChangeListener(Landroid/widget/RatingBar$OnRatingBarChangeListener;)V

    .line 174
    return-void
.end method

.method static synthetic e(Llyp;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Llyp;->g()V

    return-void
.end method

.method static synthetic f(Llyp;)Landroid/widget/RatingBar;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Llyp;->f:Landroid/widget/RatingBar;

    return-object v0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 240
    iget-object v0, p0, Llyp;->n:Lmgv;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Llyp;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Llyp;->n:Lmgv;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 242
    const/4 v0, 0x0

    iput-object v0, p0, Llyp;->n:Lmgv;

    .line 245
    :cond_0
    iget-object v0, p0, Llyp;->m:Lltd;

    invoke-virtual {v0}, Lltd;->getItemCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 246
    new-instance v0, Lmgv;

    const/4 v1, 0x5

    iget-object v2, p0, Llyp;->m:Lltd;

    invoke-virtual {v2}, Lltd;->getItemCount()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lmgv;-><init>(II)V

    iput-object v0, p0, Llyp;->n:Lmgv;

    .line 247
    iget-object v0, p0, Llyp;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Llyp;->n:Lmgv;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 248
    iget-object v0, p0, Llyp;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->invalidateItemDecorations()V

    .line 250
    :cond_1
    return-void
.end method

.method private g()V
    .locals 4

    .prologue
    .line 296
    iget-object v0, p0, Llyp;->e:Lbr/com/zup/multistatelayout/MultiStateLayout;

    const v1, 0x7f04030e

    sget-object v2, Laor;->LOADING:Laor;

    invoke-virtual {v0, v1, v2}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setViewForState(ILaor;)V

    .line 297
    iget-object v0, p0, Llyp;->e:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->LOADING:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 298
    new-instance v1, Lkvm;

    invoke-direct {v1}, Lkvm;-><init>()V

    .line 299
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    const-string v2, "yyyyMMdd"

    invoke-static {v0, v2}, Lmhj;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lkvm;->a(Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Llyp;->o:Lkvk;

    invoke-virtual {v1, v0}, Lkvm;->a(Lkvk;)V

    .line 301
    iget-object v0, p0, Llyp;->p:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lkvm;->b(Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Llyp;->q:Lkvh;

    if-eqz v0, :cond_1

    iget-object v0, p0, Llyp;->q:Lkvh;

    invoke-virtual {v0}, Lkvh;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lkvm;->c(Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Llyp;->m:Lltd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llyp;->m:Lltd;

    invoke-virtual {v0}, Lltd;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Llyp;->m:Lltd;

    invoke-virtual {v0}, Lltd;->b()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lkvm;->a(Ljava/util/List;)V

    .line 308
    :cond_0
    const-string v0, "Origin"

    invoke-virtual {v1, v0}, Lkvm;->d(Ljava/lang/String;)V

    .line 309
    const-string v0, "1"

    invoke-virtual {v1, v0}, Lkvm;->e(Ljava/lang/String;)V

    .line 314
    :try_start_0
    iget-object v0, p0, Llyp;->j:Lkwy;

    new-instance v2, Llyv;

    invoke-direct {v2, p0}, Llyv;-><init>(Llyp;)V

    invoke-virtual {v0, v1, v2}, Lkwy;->a(Lkvm;Lkxa;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    :goto_1
    return-void

    .line 302
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 335
    :catch_0
    move-exception v0

    .line 336
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic g(Llyp;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Llyp;->h()V

    return-void
.end method

.method private h()V
    .locals 5

    .prologue
    .line 343
    iget-object v0, p0, Llyp;->m:Lltd;

    invoke-virtual {v0}, Lltd;->a()Ljava/util/List;

    move-result-object v2

    .line 344
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 345
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 346
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvi;

    .line 347
    invoke-virtual {v0}, Lkvi;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 348
    invoke-virtual {v0}, Lkvi;->g()Ljava/lang/String;

    move-result-object v0

    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmhj;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 349
    const-string v3, "Seguros_Sinistro_MeusSinistros_Carrossel_Concluido_PopUpAvaliacao_OndeErramos"

    invoke-static {v0}, Lmhj;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 354
    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Llyp;->c:Landroid/widget/Button;

    new-instance v1, Llyt;

    invoke-direct {v1, p0}, Llyt;-><init>(Llyp;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    iget-object v0, p0, Llyp;->d:Landroid/widget/Button;

    new-instance v1, Llyu;

    invoke-direct {v1, p0}, Llyu;-><init>(Llyp;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Llyp;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Llyp;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "sinister-code-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p0}, Llyp;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "sinister-code-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llyp;->p:Ljava/lang/String;

    .line 91
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 255
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 256
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 257
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 258
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 259
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 96
    const v0, 0x7f04019e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 97
    invoke-direct {p0, v0}, Llyp;->a(Landroid/view/View;)V

    .line 98
    invoke-direct {p0}, Llyp;->b()V

    .line 100
    const-string v1, "Seguros_Sinistro_MeusSinistros_Carrossel_Concluido_Acao"

    const-string v2, "PopUpAvaliacao"

    invoke-static {v1, v2}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-object v0
.end method
