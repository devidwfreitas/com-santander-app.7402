.class public Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;
.super Lgrs;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "insurance-details-key"

.field public static final b:Ljava/lang/String; = "insurance-name"


# instance fields
.field private A:Lcom/santander/app/seguros/ui/widgets/BillingItemImage;

.field private B:Landroid/widget/LinearLayout;

.field private C:Landroid/widget/TextView;

.field private D:Landroid/widget/ImageView;

.field private E:Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;

.field private F:Landroid/widget/LinearLayout;

.field private G:Landroid/widget/TextView;

.field private H:Landroid/support/v7/widget/RecyclerView;

.field private I:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lknx;",
            ">;"
        }
    .end annotation
.end field

.field private J:Lktp;

.field private K:Ljava/lang/String;

.field private L:Ljava/lang/String;

.field private c:Lbr/com/zup/multistatelayout/MultiStateLayout;

.field private d:Landroid/support/v4/widget/NestedScrollView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/LinearLayout;

.field private g:Lcom/santander/app/seguros/ui/widgets/BillingItem;

.field private w:Lcom/santander/app/seguros/ui/widgets/BillingItem;

.field private x:Lcom/santander/app/seguros/ui/widgets/BillingItem;

.field private y:Lcom/santander/app/seguros/ui/widgets/BillingItem;

.field private z:Lcom/santander/app/seguros/ui/widgets/BillingItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 288
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    .line 289
    const/4 v0, 0x0

    .line 291
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 293
    const-string v2, "4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 294
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02056c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 299
    :cond_0
    :goto_0
    return-object v0

    .line 295
    :cond_1
    const-string v2, "5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02056a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->B:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->I:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;Lktp;)Lktp;
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->J:Lktp;

    return-object p1
.end method

.method public static synthetic b(Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;)Landroid/support/v4/widget/NestedScrollView;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->d:Landroid/support/v4/widget/NestedScrollView;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 303
    const-string v0, ""

    .line 304
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 305
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 307
    :cond_0
    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 122
    const v0, 0x7f10011d

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/zup/multistatelayout/MultiStateLayout;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->c:Lbr/com/zup/multistatelayout/MultiStateLayout;

    .line 123
    const v0, 0x7f10009f

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/NestedScrollView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->d:Landroid/support/v4/widget/NestedScrollView;

    .line 124
    const v0, 0x7f10011e

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->e:Landroid/widget/TextView;

    .line 125
    const v0, 0x7f10011f

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->f:Landroid/widget/LinearLayout;

    .line 126
    const v0, 0x7f100120

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/BillingItem;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->g:Lcom/santander/app/seguros/ui/widgets/BillingItem;

    .line 127
    const v0, 0x7f100121

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/BillingItem;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->w:Lcom/santander/app/seguros/ui/widgets/BillingItem;

    .line 128
    const v0, 0x7f100122

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/BillingItem;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->x:Lcom/santander/app/seguros/ui/widgets/BillingItem;

    .line 129
    const v0, 0x7f100124

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/BillingItem;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->y:Lcom/santander/app/seguros/ui/widgets/BillingItem;

    .line 130
    const v0, 0x7f100125

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/BillingItem;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->z:Lcom/santander/app/seguros/ui/widgets/BillingItem;

    .line 131
    const v0, 0x7f100123

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/BillingItemImage;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->A:Lcom/santander/app/seguros/ui/widgets/BillingItemImage;

    .line 132
    const v0, 0x7f100126

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->B:Landroid/widget/LinearLayout;

    .line 133
    const v0, 0x7f100127

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->C:Landroid/widget/TextView;

    .line 134
    const v0, 0x7f100128

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->D:Landroid/widget/ImageView;

    .line 135
    const v0, 0x7f100129

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->E:Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;

    .line 136
    const v0, 0x7f10012a

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->F:Landroid/widget/LinearLayout;

    .line 137
    const v0, 0x7f10012b

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->G:Landroid/widget/TextView;

    .line 138
    const v0, 0x7f10012e

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->H:Landroid/support/v7/widget/RecyclerView;

    .line 139
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->B:Landroid/widget/LinearLayout;

    new-instance v1, Llgi;

    invoke-direct {v1, p0}, Llgi;-><init>(Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    return-void
.end method

.method public static synthetic c(Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;)Lbr/com/zup/multistatelayout/MultiStateLayout;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->c:Lbr/com/zup/multistatelayout/MultiStateLayout;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 173
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 174
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 175
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 176
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 177
    const v1, 0x7f090149

    invoke-virtual {p0, v1}, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public static synthetic d(Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->I:Ljava/util/List;

    return-object v0
.end method

.method private d()V
    .locals 6

    .prologue
    .line 181
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->c:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->LOADING:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 183
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 184
    const-string v1, "certificateKey"

    iget-object v2, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->K:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    invoke-static {}, Lgnp;->a()Lgnp;

    invoke-static {v0}, Lgnp;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 188
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lkwr;->BILLING:Lkwr;

    invoke-virtual {v3}, Lkwr;->getEndpoint()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lim;->GET:Lim;

    const/4 v3, 0x0

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lgnp;->a(Ljava/lang/String;Lim;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)Lir;

    move-result-object v0

    .line 189
    new-instance v1, Lgnv;

    invoke-direct {p0}, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->k()Lgkw;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lgnv;-><init>(Lgkw;Lir;)V

    .line 191
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 194
    :try_start_0
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lie;->a(Lir;Lih;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 195
    :catch_0
    move-exception v0

    .line 196
    const-string v1, "ERROR_SERV"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static synthetic e(Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->i()V

    return-void
.end method

.method private e()Z
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->J:Lktp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->J:Lktp;

    invoke-virtual {v0}, Lktp;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmhj;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DEBITO EM CONTA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic f(Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->d()V

    return-void
.end method

.method private f()Z
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->J:Lktp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->J:Lktp;

    invoke-virtual {v0}, Lktp;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmhj;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CREDITO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g()Z
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->J:Lktp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->J:Lktp;

    invoke-virtual {v0}, Lktp;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmhj;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BOLETO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h()Z
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->J:Lktp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->J:Lktp;

    invoke-virtual {v0}, Lktp;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmhj;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NA PARCELA DO EMPRESTIMO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private i()V
    .locals 8

    .prologue
    const v4, 0x7f0203de

    const/4 v7, 0x0

    const/16 v3, 0x8

    .line 223
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->J:Lktp;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->I:Ljava/util/List;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->I:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 224
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->g:Lcom/santander/app/seguros/ui/widgets/BillingItem;

    invoke-virtual {v0, v3}, Lcom/santander/app/seguros/ui/widgets/BillingItem;->setLineBilling1(I)V

    .line 225
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->z:Lcom/santander/app/seguros/ui/widgets/BillingItem;

    invoke-virtual {v0, v3}, Lcom/santander/app/seguros/ui/widgets/BillingItem;->setLineBilling2(I)V

    .line 229
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->I:Ljava/util/List;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->I:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    :cond_0
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lknx;

    .line 232
    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->g:Lcom/santander/app/seguros/ui/widgets/BillingItem;

    iget-object v2, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->I:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/santander/app/seguros/ui/widgets/BillingItem;->setValue(Ljava/lang/String;)V

    .line 234
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->e()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 235
    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->A:Lcom/santander/app/seguros/ui/widgets/BillingItemImage;

    invoke-virtual {v1, v3}, Lcom/santander/app/seguros/ui/widgets/BillingItemImage;->setVisibility(I)V

    .line 236
    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->w:Lcom/santander/app/seguros/ui/widgets/BillingItem;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09035f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/santander/app/seguros/ui/widgets/BillingItem;->setValue(Ljava/lang/String;)V

    .line 237
    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->w:Lcom/santander/app/seguros/ui/widgets/BillingItem;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/santander/app/seguros/ui/widgets/BillingItem;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 238
    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->x:Lcom/santander/app/seguros/ui/widgets/BillingItem;

    const-string v2, "%s/%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->J:Lktp;

    invoke-virtual {v4}, Lktp;->b()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x30

    const/4 v6, 0x4

    invoke-static {v4, v5, v6}, Lmhj;->a(Ljava/lang/String;CI)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->J:Lktp;

    invoke-virtual {v5}, Lktp;->g()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/santander/app/seguros/ui/widgets/BillingItem;->setValue(Ljava/lang/String;)V

    .line 264
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lknx;->b()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 265
    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->z:Lcom/santander/app/seguros/ui/widgets/BillingItem;

    invoke-virtual {v0}, Lknx;->b()Ljava/util/Date;

    move-result-object v2

    const-string v3, "dd"

    invoke-static {v2, v3}, Lmhj;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/santander/app/seguros/ui/widgets/BillingItem;->setValue(Ljava/lang/String;)V

    .line 272
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lknx;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PAGA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 273
    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->y:Lcom/santander/app/seguros/ui/widgets/BillingItem;

    invoke-virtual {v0}, Lknx;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmhj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/santander/app/seguros/ui/widgets/BillingItem;->setValue(Ljava/lang/String;)V

    .line 280
    :goto_2
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->H:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Llhw;

    iget-object v2, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->I:Ljava/util/List;

    invoke-direct {v1, v2, p0}, Llhw;-><init>(Ljava/util/List;Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 285
    :goto_3
    return-void

    .line 239
    :cond_3
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->f()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 240
    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->A:Lcom/santander/app/seguros/ui/widgets/BillingItemImage;

    invoke-virtual {v1, v7}, Lcom/santander/app/seguros/ui/widgets/BillingItemImage;->setVisibility(I)V

    .line 241
    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->x:Lcom/santander/app/seguros/ui/widgets/BillingItem;

    invoke-virtual {v1, v3}, Lcom/santander/app/seguros/ui/widgets/BillingItem;->setVisibility(I)V

    .line 242
    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->w:Lcom/santander/app/seguros/ui/widgets/BillingItem;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090314

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/santander/app/seguros/ui/widgets/BillingItem;->setValue(Ljava/lang/String;)V

    .line 243
    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->w:Lcom/santander/app/seguros/ui/widgets/BillingItem;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02035b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/santander/app/seguros/ui/widgets/BillingItem;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 244
    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->A:Lcom/santander/app/seguros/ui/widgets/BillingItemImage;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XXXX.XXXX.XXXX."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->J:Lktp;

    invoke-virtual {v3}, Lktp;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/santander/app/seguros/ui/widgets/BillingItemImage;->setDesc(Ljava/lang/String;)V

    .line 245
    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->J:Lktp;

    invoke-virtual {v1}, Lktp;->a()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->J:Lktp;

    invoke-virtual {v1}, Lktp;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 246
    :cond_4
    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->A:Lcom/santander/app/seguros/ui/widgets/BillingItemImage;

    iget-object v2, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->J:Lktp;

    invoke-virtual {v2}, Lktp;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/santander/app/seguros/ui/widgets/BillingItemImage;->setImageItem(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 249
    :cond_5
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->g()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 250
    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->A:Lcom/santander/app/seguros/ui/widgets/BillingItemImage;

    invoke-virtual {v1, v3}, Lcom/santander/app/seguros/ui/widgets/BillingItemImage;->setVisibility(I)V

    .line 251
    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->x:Lcom/santander/app/seguros/ui/widgets/BillingItem;

    invoke-virtual {v1, v3}, Lcom/santander/app/seguros/ui/widgets/BillingItem;->setVisibility(I)V

    .line 252
    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->w:Lcom/santander/app/seguros/ui/widgets/BillingItem;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090a6a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/santander/app/seguros/ui/widgets/BillingItem;->setValue(Ljava/lang/String;)V

    .line 253
    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->w:Lcom/santander/app/seguros/ui/widgets/BillingItem;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/santander/app/seguros/ui/widgets/BillingItem;->setImage(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 254
    :cond_6
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 255
    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->A:Lcom/santander/app/seguros/ui/widgets/BillingItemImage;

    invoke-virtual {v1, v3}, Lcom/santander/app/seguros/ui/widgets/BillingItemImage;->setVisibility(I)V

    .line 256
    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->x:Lcom/santander/app/seguros/ui/widgets/BillingItem;

    invoke-virtual {v1, v3}, Lcom/santander/app/seguros/ui/widgets/BillingItem;->setVisibility(I)V

    .line 257
    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->w:Lcom/santander/app/seguros/ui/widgets/BillingItem;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0907fe

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/santander/app/seguros/ui/widgets/BillingItem;->setValue(Ljava/lang/String;)V

    .line 258
    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->w:Lcom/santander/app/seguros/ui/widgets/BillingItem;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/santander/app/seguros/ui/widgets/BillingItem;->setImage(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 267
    :cond_7
    invoke-virtual {v0}, Lknx;->a()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 268
    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->z:Lcom/santander/app/seguros/ui/widgets/BillingItem;

    invoke-virtual {v0}, Lknx;->a()Ljava/util/Date;

    move-result-object v2

    const-string v3, "dd"

    invoke-static {v2, v3}, Lmhj;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/santander/app/seguros/ui/widgets/BillingItem;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 276
    :cond_8
    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->y:Lcom/santander/app/seguros/ui/widgets/BillingItem;

    invoke-virtual {v0}, Lknx;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmhj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/santander/app/seguros/ui/widgets/BillingItem;->setValue(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 282
    :cond_9
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->c:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->ERROR:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    goto/16 :goto_3
.end method

.method private j()V
    .locals 6

    .prologue
    .line 312
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->c:Lbr/com/zup/multistatelayout/MultiStateLayout;

    sget-object v1, Laor;->LOADING:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 314
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 315
    const-string v1, "certificateKey"

    iget-object v2, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->K:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    invoke-static {}, Lgnp;->a()Lgnp;

    invoke-static {v0}, Lgnp;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 319
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lkwr;->INSURANCE_DETAILS:Lkwr;

    invoke-virtual {v3}, Lkwr;->getEndpoint()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lim;->GET:Lim;

    const/4 v3, 0x0

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lgnp;->a(Ljava/lang/String;Lim;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)Lir;

    move-result-object v0

    .line 320
    new-instance v1, Lgnv;

    invoke-direct {p0}, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->n()Lgkw;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lgnv;-><init>(Lgkw;Lir;)V

    .line 322
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 325
    :try_start_0
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v2

    invoke-virtual {v2}, Lgnp;->b()Lie;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lie;->a(Lir;Lih;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 326
    :catch_0
    move-exception v0

    .line 327
    const-string v1, "ERROR_SERV"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private k()Lgkw;
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
    .line 335
    new-instance v0, Llgk;

    invoke-direct {v0, p0}, Llgk;-><init>(Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;)V

    return-object v0
.end method

.method private n()Lgkw;
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
    .line 394
    new-instance v0, Llgm;

    invoke-direct {v0, p0}, Llgm;-><init>(Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x190

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 148
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Llgj;

    invoke-direct {v1, p0}, Llgj;-><init>(Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 155
    const-string v0, "Seguros_Consultivo_DadosCobranca_Extrato_Produto_Acao"

    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->L:Ljava/lang/String;

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->E:Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->D:Landroid/widget/ImageView;

    sget-object v1, Landroid/view/View;->ROTATION_X:Landroid/util/Property;

    new-array v2, v5, [F

    const/high16 v3, 0x43340000    # 180.0f

    aput v3, v2, v4

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 160
    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 161
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 162
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->E:Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;

    invoke-virtual {v0, v4}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->b(Z)V

    .line 170
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->D:Landroid/widget/ImageView;

    sget-object v1, Landroid/view/View;->ROTATION_X:Landroid/util/Property;

    new-array v2, v5, [F

    const/4 v3, 0x0

    aput v3, v2, v4

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 165
    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 166
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 167
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->E:Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->setDuration(I)V

    .line 168
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->E:Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;

    invoke-virtual {v0, v5}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->c(Z)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 96
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 97
    const v0, 0x7f040026

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->setContentView(I)V

    .line 99
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_0

    const-string v1, "FIRE_INSURANCES_CERTIFICATE_NUMBER_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    const-string v1, "FIRE_INSURANCES_CERTIFICATE_NUMBER_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->K:Ljava/lang/String;

    .line 104
    :cond_0
    if-eqz v0, :cond_1

    const-string v1, "insurance-name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    const-string v1, "insurance-name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->L:Ljava/lang/String;

    .line 110
    :goto_0
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->b()V

    .line 112
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->H:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 113
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->H:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 114
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->H:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 115
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->E:Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;

    invoke-virtual {v0, v3}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->c(Z)V

    .line 116
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->c()V

    .line 118
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->j()V

    .line 119
    return-void

    .line 107
    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/BillingActivity;->L:Ljava/lang/String;

    goto :goto_0
.end method
