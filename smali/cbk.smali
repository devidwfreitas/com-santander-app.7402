.class public Lcbk;
.super Lbny;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbny",
        "<",
        "Lcom/facebook/share/model/AppInviteContent;",
        "Lcbp;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = "AppInviteDialog"

.field private static final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lbnl;->AppInvite:Lbnl;

    .line 75
    invoke-virtual {v0}, Lbnl;->toRequestCode()I

    move-result v0

    sput v0, Lcbk;->c:I

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 147
    sget v0, Lcbk;->c:I

    invoke-direct {p0, p1, v0}, Lbny;-><init>(Landroid/app/Activity;I)V

    .line 148
    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 1

    .prologue
    .line 165
    new-instance v0, Lbpa;

    invoke-direct {v0, p1}, Lbpa;-><init>(Landroid/app/Fragment;)V

    invoke-direct {p0, v0}, Lcbk;-><init>(Lbpa;)V

    .line 166
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 1

    .prologue
    .line 156
    new-instance v0, Lbpa;

    invoke-direct {v0, p1}, Lbpa;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-direct {p0, v0}, Lcbk;-><init>(Lbpa;)V

    .line 157
    return-void
.end method

.method private constructor <init>(Lbpa;)V
    .locals 1

    .prologue
    .line 169
    sget v0, Lcbk;->c:I

    invoke-direct {p0, p1, v0}, Lbny;-><init>(Lbpa;I)V

    .line 170
    return-void
.end method

.method static synthetic a(Lcom/facebook/share/model/AppInviteContent;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 44
    invoke-static {p0}, Lcbk;->b(Lcom/facebook/share/model/AppInviteContent;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Lcom/facebook/share/model/AppInviteContent;)V
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lcbk;

    invoke-direct {v0, p0}, Lcbk;-><init>(Landroid/app/Activity;)V

    .line 97
    invoke-virtual {v0, p1}, Lcbk;->b(Ljava/lang/Object;)V

    .line 98
    return-void
.end method

.method public static a(Landroid/app/Fragment;Lcom/facebook/share/model/AppInviteContent;)V
    .locals 1

    .prologue
    .line 123
    new-instance v0, Lbpa;

    invoke-direct {v0, p0}, Lbpa;-><init>(Landroid/app/Fragment;)V

    invoke-static {v0, p1}, Lcbk;->a(Lbpa;Lcom/facebook/share/model/AppInviteContent;)V

    .line 124
    return-void
.end method

.method public static a(Landroid/support/v4/app/Fragment;Lcom/facebook/share/model/AppInviteContent;)V
    .locals 1

    .prologue
    .line 110
    new-instance v0, Lbpa;

    invoke-direct {v0, p0}, Lbpa;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-static {v0, p1}, Lcbk;->a(Lbpa;Lcom/facebook/share/model/AppInviteContent;)V

    .line 111
    return-void
.end method

.method private static a(Lbpa;Lcom/facebook/share/model/AppInviteContent;)V
    .locals 1

    .prologue
    .line 129
    new-instance v0, Lcbk;

    invoke-direct {v0, p0}, Lcbk;-><init>(Lbpa;)V

    .line 130
    invoke-virtual {v0, p1}, Lcbk;->b(Ljava/lang/Object;)V

    .line 131
    return-void
.end method

.method private static b(Lcom/facebook/share/model/AppInviteContent;)Landroid/os/Bundle;
    .locals 5

    .prologue
    .line 276
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 277
    const-string v0, "app_link_url"

    invoke-virtual {p0}, Lcom/facebook/share/model/AppInviteContent;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v0, "preview_image_url"

    invoke-virtual {p0}, Lcom/facebook/share/model/AppInviteContent;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string v0, "destination"

    .line 281
    invoke-virtual {p0}, Lcom/facebook/share/model/AppInviteContent;->e()Lcag;

    move-result-object v2

    invoke-virtual {v2}, Lcag;->toString()Ljava/lang/String;

    move-result-object v2

    .line 279
    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    invoke-virtual {p0}, Lcom/facebook/share/model/AppInviteContent;->c()Ljava/lang/String;

    move-result-object v0

    .line 285
    if-eqz v0, :cond_1

    .line 286
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/share/model/AppInviteContent;->d()Ljava/lang/String;

    move-result-object v2

    .line 288
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 291
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 292
    const-string v4, "promo_code"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 293
    const-string v4, "promo_text"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 295
    const-string v4, "deeplink_context"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-string v3, "promo_code"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string v0, "promo_text"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    :cond_0
    :goto_1
    return-object v1

    .line 285
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 298
    :catch_0
    move-exception v0

    .line 299
    const-string v0, "AppInviteDialog"

    const-string v2, "Json Exception in creating deeplink context"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static e()Z
    .locals 1

    .prologue
    .line 83
    invoke-static {}, Lcbk;->i()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcbk;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic f()Z
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Lcbk;->i()Z

    move-result v0

    return v0
.end method

.method static synthetic g()Lbnv;
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Lcbk;->k()Lbnv;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h()Z
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Lcbk;->j()Z

    move-result v0

    return v0
.end method

.method private static i()Z
    .locals 1

    .prologue
    .line 134
    invoke-static {}, Lcbk;->k()Lbnv;

    move-result-object v0

    invoke-static {v0}, Lbnw;->a(Lbnv;)Z

    move-result v0

    return v0
.end method

.method private static j()Z
    .locals 1

    .prologue
    .line 138
    invoke-static {}, Lcbk;->k()Lbnv;

    move-result-object v0

    invoke-static {v0}, Lbnw;->b(Lbnv;)Z

    move-result v0

    return v0
.end method

.method private static k()Lbnv;
    .locals 1

    .prologue
    .line 272
    sget-object v0, Lbwp;->APP_INVITES_DIALOG:Lbwp;

    return-object v0
.end method


# virtual methods
.method protected a(Lbnj;Lbhl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbnj;",
            "Lbhl",
            "<",
            "Lcbp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 175
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 189
    :goto_0
    new-instance v1, Lcbm;

    invoke-direct {v1, p0, v0}, Lcbm;-><init>(Lcbk;Lbyu;)V

    .line 201
    invoke-virtual {p0}, Lcbk;->a()I

    move-result v0

    .line 200
    invoke-virtual {p1, v0, v1}, Lbnj;->b(ILbnk;)V

    .line 203
    return-void

    .line 175
    :cond_0
    new-instance v0, Lcbl;

    invoke-direct {v0, p0, p2, p2}, Lcbl;-><init>(Lcbk;Lbhl;Lbhl;)V

    goto :goto_0
.end method

.method protected c()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lbny",
            "<",
            "Lcom/facebook/share/model/AppInviteContent;",
            "Lcbp;",
            ">.bnz;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 213
    new-instance v1, Lcbn;

    invoke-direct {v1, p0, v2}, Lcbn;-><init>(Lcbk;Lcbl;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    new-instance v1, Lcbq;

    invoke-direct {v1, p0, v2}, Lcbq;-><init>(Lcbk;Lcbl;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    return-object v0
.end method

.method protected d()Lbmr;
    .locals 2

    .prologue
    .line 207
    new-instance v0, Lbmr;

    invoke-virtual {p0}, Lcbk;->a()I

    move-result v1

    invoke-direct {v0, v1}, Lbmr;-><init>(I)V

    return-object v0
.end method
