.class public final Lcom/facebook/AccessToken;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/AccessToken;",
            ">;"
        }
    .end annotation
.end field

.field public static final a:Ljava/lang/String; = "access_token"

.field public static final b:Ljava/lang/String; = "expires_in"

.field public static final c:Ljava/lang/String; = "user_id"

.field private static final d:Ljava/util/Date;

.field private static final e:Ljava/util/Date;

.field private static final f:Ljava/util/Date;

.field private static final g:Lbgy;

.field private static final h:I = 0x1

.field private static final i:Ljava/lang/String; = "version"

.field private static final j:Ljava/lang/String; = "expires_at"

.field private static final k:Ljava/lang/String; = "permissions"

.field private static final l:Ljava/lang/String; = "declined_permissions"

.field private static final m:Ljava/lang/String; = "token"

.field private static final n:Ljava/lang/String; = "source"

.field private static final o:Ljava/lang/String; = "last_refresh"

.field private static final p:Ljava/lang/String; = "application_id"


# instance fields
.field private final q:Ljava/util/Date;

.field private final r:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Ljava/lang/String;

.field private final u:Lbgy;

.field private final v:Ljava/util/Date;

.field private final w:Ljava/lang/String;

.field private final x:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 58
    new-instance v0, Ljava/util/Date;

    const-wide v2, 0x7fffffffffffffffL

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Lcom/facebook/AccessToken;->d:Ljava/util/Date;

    .line 59
    sget-object v0, Lcom/facebook/AccessToken;->d:Ljava/util/Date;

    sput-object v0, Lcom/facebook/AccessToken;->e:Ljava/util/Date;

    .line 60
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Lcom/facebook/AccessToken;->f:Ljava/util/Date;

    .line 61
    sget-object v0, Lbgy;->FACEBOOK_APPLICATION_WEB:Lbgy;

    sput-object v0, Lcom/facebook/AccessToken;->g:Lbgy;

    .line 606
    new-instance v0, Lbgn;

    invoke-direct {v0}, Lbgn;-><init>()V

    sput-object v0, Lcom/facebook/AccessToken;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    .line 573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 574
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/facebook/AccessToken;->q:Ljava/util/Date;

    .line 575
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 576
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 577
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/AccessToken;->r:Ljava/util/Set;

    .line 578
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 579
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 580
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/AccessToken;->s:Ljava/util/Set;

    .line 582
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/AccessToken;->t:Ljava/lang/String;

    .line 583
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbgy;->valueOf(Ljava/lang/String;)Lbgy;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/AccessToken;->u:Lbgy;

    .line 584
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/facebook/AccessToken;->v:Ljava/util/Date;

    .line 585
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/AccessToken;->w:Ljava/lang/String;

    .line 586
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/AccessToken;->x:Ljava/lang/String;

    .line 587
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Lbgy;Ljava/util/Date;Ljava/util/Date;)V
    .locals 1
    .param p4    # Ljava/util/Collection;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/util/Collection;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lbgy;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/util/Date;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/util/Date;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lbgy;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    const-string v0, "accessToken"

    invoke-static {p1, v0}, Lbqx;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v0, "applicationId"

    invoke-static {p2, v0}, Lbqx;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v0, "userId"

    invoke-static {p3, v0}, Lbqx;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    if-eqz p7, :cond_0

    :goto_0
    iput-object p7, p0, Lcom/facebook/AccessToken;->q:Ljava/util/Date;

    .line 129
    if-eqz p4, :cond_1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/AccessToken;->r:Ljava/util/Set;

    .line 131
    if-eqz p5, :cond_2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/AccessToken;->s:Ljava/util/Set;

    .line 135
    iput-object p1, p0, Lcom/facebook/AccessToken;->t:Ljava/lang/String;

    .line 136
    if-eqz p6, :cond_3

    :goto_3
    iput-object p6, p0, Lcom/facebook/AccessToken;->u:Lbgy;

    .line 137
    if-eqz p8, :cond_4

    :goto_4
    iput-object p8, p0, Lcom/facebook/AccessToken;->v:Ljava/util/Date;

    .line 138
    iput-object p2, p0, Lcom/facebook/AccessToken;->w:Ljava/lang/String;

    .line 139
    iput-object p3, p0, Lcom/facebook/AccessToken;->x:Ljava/lang/String;

    .line 140
    return-void

    .line 128
    :cond_0
    sget-object p7, Lcom/facebook/AccessToken;->e:Ljava/util/Date;

    goto :goto_0

    .line 129
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_1

    .line 131
    :cond_2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_2

    .line 136
    :cond_3
    sget-object p6, Lcom/facebook/AccessToken;->g:Lbgy;

    goto :goto_3

    .line 137
    :cond_4
    sget-object p8, Lcom/facebook/AccessToken;->f:Ljava/util/Date;

    goto :goto_4
.end method

.method public static a()Lcom/facebook/AccessToken;
    .locals 1

    .prologue
    .line 148
    invoke-static {}, Lbgs;->a()Lbgs;

    move-result-object v0

    invoke-virtual {v0}, Lbgs;->b()Lcom/facebook/AccessToken;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/os/Bundle;)Lcom/facebook/AccessToken;
    .locals 9

    .prologue
    .line 423
    const-string v0, "com.facebook.TokenCachingStrategy.Permissions"

    invoke-static {p0, v0}, Lcom/facebook/AccessToken;->a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 426
    const-string v0, "com.facebook.TokenCachingStrategy.DeclinedPermissions"

    invoke-static {p0, v0}, Lcom/facebook/AccessToken;->a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 430
    invoke-static {p0}, Lbja;->j(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    .line 431
    invoke-static {v2}, Lbqq;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    invoke-static {}, Lbhv;->l()Ljava/lang/String;

    move-result-object v2

    .line 435
    :cond_0
    invoke-static {p0}, Lbja;->c(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 437
    invoke-static {v1}, Lbqq;->e(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 439
    :try_start_0
    const-string v3, "id"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 446
    new-instance v0, Lcom/facebook/AccessToken;

    .line 452
    invoke-static {p0}, Lbja;->g(Landroid/os/Bundle;)Lbgy;

    move-result-object v6

    const-string v7, "com.facebook.TokenCachingStrategy.ExpirationDate"

    .line 453
    invoke-static {p0, v7}, Lbja;->c(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    const-string v8, "com.facebook.TokenCachingStrategy.LastRefreshDate"

    .line 456
    invoke-static {p0, v8}, Lbja;->c(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Lbgy;Ljava/util/Date;Ljava/util/Date;)V

    .line 446
    :goto_0
    return-object v0

    .line 440
    :catch_0
    move-exception v0

    .line 443
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Lcom/facebook/AccessToken;Landroid/os/Bundle;)Lcom/facebook/AccessToken;
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "FieldGetter"
        }
    .end annotation

    .prologue
    .line 399
    iget-object v0, p0, Lcom/facebook/AccessToken;->u:Lbgy;

    sget-object v1, Lbgy;->FACEBOOK_APPLICATION_WEB:Lbgy;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/AccessToken;->u:Lbgy;

    sget-object v1, Lbgy;->FACEBOOK_APPLICATION_NATIVE:Lbgy;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/AccessToken;->u:Lbgy;

    sget-object v1, Lbgy;->FACEBOOK_APPLICATION_SERVICE:Lbgy;

    if-eq v0, v1, :cond_0

    .line 402
    new-instance v0, Lbhp;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid token source: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/AccessToken;->u:Lbgy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbhp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 405
    :cond_0
    const-string v0, "expires_in"

    new-instance v1, Ljava/util/Date;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-static {p1, v0, v1}, Lbqq;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v7

    .line 406
    const-string v0, "access_token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 408
    invoke-static {v1}, Lbqq;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 409
    const/4 v0, 0x0

    .line 411
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/facebook/AccessToken;

    iget-object v2, p0, Lcom/facebook/AccessToken;->w:Ljava/lang/String;

    .line 414
    invoke-virtual {p0}, Lcom/facebook/AccessToken;->j()Ljava/lang/String;

    move-result-object v3

    .line 415
    invoke-virtual {p0}, Lcom/facebook/AccessToken;->e()Ljava/util/Set;

    move-result-object v4

    .line 416
    invoke-virtual {p0}, Lcom/facebook/AccessToken;->f()Ljava/util/Set;

    move-result-object v5

    iget-object v6, p0, Lcom/facebook/AccessToken;->u:Lbgy;

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-direct/range {v0 .. v8}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Lbgy;Ljava/util/Date;Ljava/util/Date;)V

    goto :goto_0
.end method

.method public static synthetic a(Ljava/util/List;Landroid/os/Bundle;Lbgy;Ljava/util/Date;Ljava/lang/String;)Lcom/facebook/AccessToken;
    .locals 1

    .prologue
    .line 53
    invoke-static {p0, p1, p2, p3, p4}, Lcom/facebook/AccessToken;->b(Ljava/util/List;Landroid/os/Bundle;Lbgy;Ljava/util/Date;Ljava/lang/String;)Lcom/facebook/AccessToken;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/facebook/AccessToken;
    .locals 9

    .prologue
    .line 502
    const-string v0, "version"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 503
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 504
    new-instance v0, Lbhp;

    const-string v1, "Unknown AccessToken serialization format."

    invoke-direct {v0, v1}, Lbhp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 507
    :cond_0
    const-string v0, "token"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 508
    new-instance v7, Ljava/util/Date;

    const-string v0, "expires_at"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v7, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 509
    const-string v0, "permissions"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 510
    const-string v0, "declined_permissions"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 511
    new-instance v8, Ljava/util/Date;

    const-string v0, "last_refresh"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v8, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 512
    const-string v0, "source"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbgy;->valueOf(Ljava/lang/String;)Lbgy;

    move-result-object v6

    .line 513
    const-string v0, "application_id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 514
    const-string v0, "user_id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 516
    new-instance v0, Lcom/facebook/AccessToken;

    .line 520
    invoke-static {v4}, Lbqq;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v4

    .line 521
    invoke-static {v5}, Lbqq;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v0 .. v8}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Lbgy;Ljava/util/Date;Ljava/util/Date;)V

    .line 516
    return-object v0
.end method

.method static a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 464
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 466
    if-nez v0, :cond_0

    .line 467
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 471
    :goto_0
    return-object v0

    .line 469
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Intent;Ljava/lang/String;Lbgo;)V
    .locals 4

    .prologue
    .line 290
    const-string v0, "intent"

    invoke-static {p0, v0}, Lbqx;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 292
    new-instance v0, Lbhp;

    const-string v1, "No extras found on intent"

    invoke-direct {v0, v1}, Lbhp;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lbgo;->a(Lbhp;)V

    .line 341
    :goto_0
    return-void

    .line 296
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 298
    const-string v1, "access_token"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 299
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 300
    :cond_1
    new-instance v0, Lbhp;

    const-string v1, "No access token found on intent"

    invoke-direct {v0, v1}, Lbhp;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lbgo;->a(Lbhp;)V

    goto :goto_0

    .line 304
    :cond_2
    const-string v2, "user_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 306
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 307
    :cond_3
    new-instance v2, Lbgm;

    invoke-direct {v2, v0, p2, p1}, Lbgm;-><init>(Landroid/os/Bundle;Lbgo;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lbqq;->a(Ljava/lang/String;Lbqt;)V

    goto :goto_0

    .line 334
    :cond_4
    const/4 v1, 0x0

    sget-object v2, Lbgy;->FACEBOOK_APPLICATION_WEB:Lbgy;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v1, v0, v2, v3, p1}, Lcom/facebook/AccessToken;->b(Ljava/util/List;Landroid/os/Bundle;Lbgy;Ljava/util/Date;Ljava/lang/String;)Lcom/facebook/AccessToken;

    move-result-object v0

    invoke-interface {p2, v0}, Lbgo;->a(Lcom/facebook/AccessToken;)V

    goto :goto_0
.end method

.method public static a(Lbgp;)V
    .locals 1

    .prologue
    .line 174
    invoke-static {}, Lbgs;->a()Lbgs;

    move-result-object v0

    invoke-virtual {v0, p0}, Lbgs;->a(Lbgp;)V

    .line 175
    return-void
.end method

.method public static a(Lcom/facebook/AccessToken;)V
    .locals 1

    .prologue
    .line 157
    invoke-static {}, Lbgs;->a()Lbgs;

    move-result-object v0

    invoke-virtual {v0, p0}, Lbgs;->a(Lcom/facebook/AccessToken;)V

    .line 158
    return-void
.end method

.method private a(Ljava/lang/StringBuilder;)V
    .locals 2

    .prologue
    .line 563
    const-string v0, " permissions:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    iget-object v0, p0, Lcom/facebook/AccessToken;->r:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 565
    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    :goto_0
    return-void

    .line 567
    :cond_0
    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    const-string v0, ", "

    iget-object v1, p0, Lcom/facebook/AccessToken;->r:Ljava/util/Set;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static b(Ljava/util/List;Landroid/os/Bundle;Lbgy;Ljava/util/Date;Ljava/lang/String;)Lcom/facebook/AccessToken;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Lbgy;",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            ")",
            "Lcom/facebook/AccessToken;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 533
    const-string v0, "access_token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 534
    const-string v0, "expires_in"

    invoke-static {p1, v0, p3}, Lbqq;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v7

    .line 535
    const-string v0, "user_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 537
    invoke-static {v1}, Lbqq;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez v7, :cond_1

    :cond_0
    move-object v0, v5

    .line 541
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/facebook/AccessToken;

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    move-object v2, p4

    move-object v4, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v8}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Lbgy;Ljava/util/Date;Ljava/util/Date;)V

    goto :goto_0
.end method

.method public static b()V
    .locals 2

    .prologue
    .line 165
    invoke-static {}, Lbgs;->a()Lbgs;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbgs;->a(Lbgp;)V

    .line 166
    return-void
.end method

.method private m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/facebook/AccessToken;->t:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 554
    const-string v0, "null"

    .line 558
    :goto_0
    return-object v0

    .line 555
    :cond_0
    sget-object v0, Lbjb;->INCLUDE_ACCESS_TOKENS:Lbjb;

    invoke-static {v0}, Lbhv;->c(Lbjb;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 556
    iget-object v0, p0, Lcom/facebook/AccessToken;->t:Ljava/lang/String;

    goto :goto_0

    .line 558
    :cond_1
    const-string v0, "ACCESS_TOKEN_REMOVED"

    goto :goto_0
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/facebook/AccessToken;->t:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/util/Date;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/facebook/AccessToken;->q:Ljava/util/Date;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 591
    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Lcom/facebook/AccessToken;->r:Ljava/util/Set;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 357
    if-ne p0, p1, :cond_1

    .line 367
    :cond_0
    :goto_0
    return v0

    .line 361
    :cond_1
    instance-of v2, p1, Lcom/facebook/AccessToken;

    if-nez v2, :cond_2

    move v0, v1

    .line 362
    goto :goto_0

    .line 365
    :cond_2
    check-cast p1, Lcom/facebook/AccessToken;

    .line 367
    iget-object v2, p0, Lcom/facebook/AccessToken;->q:Ljava/util/Date;

    iget-object v3, p1, Lcom/facebook/AccessToken;->q:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/facebook/AccessToken;->r:Ljava/util/Set;

    iget-object v3, p1, Lcom/facebook/AccessToken;->r:Ljava/util/Set;

    .line 368
    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/facebook/AccessToken;->s:Ljava/util/Set;

    iget-object v3, p1, Lcom/facebook/AccessToken;->s:Ljava/util/Set;

    .line 369
    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/facebook/AccessToken;->t:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/AccessToken;->t:Ljava/lang/String;

    .line 370
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/facebook/AccessToken;->u:Lbgy;

    iget-object v3, p1, Lcom/facebook/AccessToken;->u:Lbgy;

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/facebook/AccessToken;->v:Ljava/util/Date;

    iget-object v3, p1, Lcom/facebook/AccessToken;->v:Ljava/util/Date;

    .line 372
    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/facebook/AccessToken;->w:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/facebook/AccessToken;->w:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 375
    :goto_1
    iget-object v2, p0, Lcom/facebook/AccessToken;->x:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/AccessToken;->x:Ljava/lang/String;

    .line 376
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 372
    :cond_4
    iget-object v2, p0, Lcom/facebook/AccessToken;->w:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/AccessToken;->w:Ljava/lang/String;

    .line 375
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1
.end method

.method public f()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 224
    iget-object v0, p0, Lcom/facebook/AccessToken;->s:Ljava/util/Set;

    return-object v0
.end method

.method public g()Lbgy;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/facebook/AccessToken;->u:Lbgy;

    return-object v0
.end method

.method public h()Ljava/util/Date;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/facebook/AccessToken;->v:Ljava/util/Date;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 381
    .line 383
    iget-object v0, p0, Lcom/facebook/AccessToken;->q:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 384
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/facebook/AccessToken;->r:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 385
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/facebook/AccessToken;->s:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 386
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/facebook/AccessToken;->t:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 387
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/facebook/AccessToken;->u:Lbgy;

    invoke-virtual {v1}, Lbgy;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 388
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/facebook/AccessToken;->v:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 389
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/facebook/AccessToken;->w:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 390
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/facebook/AccessToken;->x:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 392
    return v0

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/facebook/AccessToken;->w:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/facebook/AccessToken;->w:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/facebook/AccessToken;->x:Ljava/lang/String;

    return-object v0
.end method

.method public k()Z
    .locals 2

    .prologue
    .line 480
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iget-object v1, p0, Lcom/facebook/AccessToken;->q:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    return v0
.end method

.method public l()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 484
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 486
    const-string v1, "version"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 487
    const-string v1, "token"

    iget-object v2, p0, Lcom/facebook/AccessToken;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 488
    const-string v1, "expires_at"

    iget-object v2, p0, Lcom/facebook/AccessToken;->q:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 489
    new-instance v1, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/facebook/AccessToken;->r:Ljava/util/Set;

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 490
    const-string v2, "permissions"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 491
    new-instance v1, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/facebook/AccessToken;->s:Ljava/util/Set;

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 492
    const-string v2, "declined_permissions"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 493
    const-string v1, "last_refresh"

    iget-object v2, p0, Lcom/facebook/AccessToken;->v:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 494
    const-string v1, "source"

    iget-object v2, p0, Lcom/facebook/AccessToken;->u:Lbgy;

    invoke-virtual {v2}, Lbgy;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 495
    const-string v1, "application_id"

    iget-object v2, p0, Lcom/facebook/AccessToken;->w:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 496
    const-string v1, "user_id"

    iget-object v2, p0, Lcom/facebook/AccessToken;->x:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 498
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 347
    const-string v1, "{AccessToken"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    const-string v1, " token:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/facebook/AccessToken;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    invoke-direct {p0, v0}, Lcom/facebook/AccessToken;->a(Ljava/lang/StringBuilder;)V

    .line 350
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 596
    iget-object v0, p0, Lcom/facebook/AccessToken;->q:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 597
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/facebook/AccessToken;->r:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 598
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/facebook/AccessToken;->s:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 599
    iget-object v0, p0, Lcom/facebook/AccessToken;->t:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 600
    iget-object v0, p0, Lcom/facebook/AccessToken;->u:Lbgy;

    invoke-virtual {v0}, Lbgy;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 601
    iget-object v0, p0, Lcom/facebook/AccessToken;->v:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 602
    iget-object v0, p0, Lcom/facebook/AccessToken;->w:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 603
    iget-object v0, p0, Lcom/facebook/AccessToken;->x:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 604
    return-void
.end method
