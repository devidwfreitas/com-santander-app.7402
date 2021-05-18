.class public Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;
.super Lgrs;
.source "SourceFile"


# instance fields
.field private a:Landroid/support/design/widget/TabLayout;

.field private b:Landroid/support/v4/view/ViewPager;

.field private c:Lbr/com/zup/multistatelayout/MultiStateLayout;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkvp;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkvp;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkvp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;->b:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;->d:Ljava/util/List;

    return-object p1
.end method

.method private a()V
    .locals 1

    .prologue
    .line 119
    const v0, 0x7f1003a4

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;->a:Landroid/support/design/widget/TabLayout;

    .line 120
    const v0, 0x7f1003a5

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;->b:Landroid/support/v4/view/ViewPager;

    .line 121
    const v0, 0x7f10010f

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/zup/multistatelayout/MultiStateLayout;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;->c:Lbr/com/zup/multistatelayout/MultiStateLayout;

    .line 122
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkvp;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 205
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 207
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 209
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvp;

    invoke-virtual {v0}, Lkvp;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmgk;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 210
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvp;

    invoke-virtual {v0, v2}, Lkvp;->h(Ljava/lang/String;)V

    .line 214
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvp;

    invoke-virtual {v0}, Lkvp;->o()Ljava/lang/String;

    move-result-object v0

    const-string v2, "05"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;->f:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;->e:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 221
    :cond_2
    new-instance v0, Llqs;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;->e:Ljava/util/List;

    iget-object v3, p0, Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;->f:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2, v3}, Llqs;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;Landroid/support/v4/app/FragmentManager;Ljava/util/List;Ljava/util/List;)V

    .line 223
    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;->f:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;->b(Ljava/util/List;)V

    .line 229
    :goto_2
    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 231
    return-void

    .line 226
    :cond_3
    new-instance v0, Llqs;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2, v2}, Llqs;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;Landroid/support/v4/app/FragmentManager;Ljava/util/List;Ljava/util/List;)V

    goto :goto_2
.end method

.method public static synthetic b(Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;)Landroid/support/design/widget/TabLayout;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;->a:Landroid/support/design/widget/TabLayout;

    return-object v0
.end method

.method private b()V
    .locals 5

    .prologue
    const v4, 0x7f0907c2

    const/4 v0, 0x0

    .line 165
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    .line 166
    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 167
    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 168
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020664

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 169
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 170
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 171
    const v2, 0x7f04039b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 172
    const v2, 0x7f100071

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 173
    invoke-virtual {p0, v4}, Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method public static synthetic b(Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;->a(Ljava/util/List;)V

    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkvp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 235
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;->a:Landroid/support/design/widget/TabLayout;

    new-instance v1, Llqp;

    invoke-direct {v1, p0, p1}, Llqp;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->addOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    .line 263
    return-void
.end method

.method public static synthetic c(Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;)Lbr/com/zup/multistatelayout/MultiStateLayout;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;->c:Lbr/com/zup/multistatelayout/MultiStateLayout;

    return-object v0
.end method

.method private c()V
    .locals 6

    .prologue
    .line 177
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;->c:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->LOADING:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 178
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 180
    :try_start_0
    const-string v0, "X-Application-Key"

    invoke-static {}, Lmzx;->a()Lmzx;

    move-result-object v1

    invoke-virtual {v1}, Lmzx;->c()Ljava/util/Properties;

    move-result-object v1

    const-string v2, "appKey"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    const-string v0, "Content-Type"

    const-string v1, "application/json"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :goto_0
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v0

    sget-object v1, Lkwr;->SINISTER:Lkwr;

    invoke-virtual {v1}, Lkwr;->getEndpoint()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lim;->GET:Lim;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lgnp;->a(Ljava/lang/String;Lim;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)Lir;

    move-result-object v0

    .line 187
    new-instance v1, Lgnv;

    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;->d()Lgkw;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lgnv;-><init>(Lgkw;Lir;)V

    .line 189
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 192
    :try_start_1
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lie;->a(Lir;Lih;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 201
    :cond_0
    :goto_1
    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 184
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 193
    :catch_1
    move-exception v0

    .line 194
    const-string v1, "ERROR_SERV"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 196
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;->c:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->ERROR:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 197
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;->c:Lbr/com/zup/multistatelayout/MultiStateLayout;

    const v1, 0x7f10089f

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090362

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private d()Lgkw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lgkw",
            "<",
            "Lis;",
            ">;"
        }
    .end annotation

    .prologue
    .line 266
    new-instance v0, Llqq;

    invoke-direct {v0, p0}, Llqq;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;)V

    return-object v0
.end method

.method public static synthetic d(Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;->d:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 74
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const v0, 0x7f04008b

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;->setContentView(I)V

    .line 77
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;->a()V

    .line 78
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;->b()V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;->d:Ljava/util/List;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;->e:Ljava/util/List;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;->f:Ljava/util/List;

    .line 84
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;->c()V

    .line 87
    const-string v0, "Seguros_Sinistro_MeusSinistros_Acao"

    const-string v1, "SinistrosAbertos"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;->a:Landroid/support/design/widget/TabLayout;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 91
    iget-object v0, p0, Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;->b:Landroid/support/v4/view/ViewPager;

    new-instance v1, Llqo;

    invoke-direct {v1, p0}, Llqo;-><init>(Lcom/santander/app/seguros/ui/sinister/activities/MySinisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 116
    return-void
.end method
