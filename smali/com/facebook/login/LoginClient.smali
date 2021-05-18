.class public Lcom/facebook/login/LoginClient;
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
            "Lcom/facebook/login/LoginClient;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:[Lcom/facebook/login/LoginMethodHandler;

.field b:I

.field c:Landroid/support/v4/app/Fragment;

.field d:Lbsh;

.field e:Lbsg;

.field f:Z

.field g:Lcom/facebook/login/LoginClient$Request;

.field h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lbso;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 683
    new-instance v0, Lbsf;

    invoke-direct {v0}, Lbsf;-><init>()V

    sput-object v0, Lcom/facebook/login/LoginClient;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    .line 658
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/login/LoginClient;->b:I

    .line 659
    const-class v0, Lcom/facebook/login/LoginMethodHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 660
    array-length v0, v2

    new-array v0, v0, [Lcom/facebook/login/LoginMethodHandler;

    iput-object v0, p0, Lcom/facebook/login/LoginClient;->a:[Lcom/facebook/login/LoginMethodHandler;

    .line 661
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v2

    if-ge v1, v0, :cond_0

    .line 662
    iget-object v3, p0, Lcom/facebook/login/LoginClient;->a:[Lcom/facebook/login/LoginMethodHandler;

    aget-object v0, v2, v1

    check-cast v0, Lcom/facebook/login/LoginMethodHandler;

    aput-object v0, v3, v1

    .line 663
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->a:[Lcom/facebook/login/LoginMethodHandler;

    aget-object v0, v0, v1

    invoke-virtual {v0, p0}, Lcom/facebook/login/LoginMethodHandler;->a(Lcom/facebook/login/LoginClient;)V

    .line 661
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 665
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/login/LoginClient;->b:I

    .line 666
    const-class v0, Lcom/facebook/login/LoginClient$Request;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/login/LoginClient$Request;

    iput-object v0, p0, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    .line 667
    invoke-static {p1}, Lbqq;->a(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/LoginClient;->h:Ljava/util/Map;

    .line 668
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/login/LoginClient;->b:I

    .line 73
    iput-object p1, p0, Lcom/facebook/login/LoginClient;->c:Landroid/support/v4/app/Fragment;

    .line 74
    return-void
.end method

.method private static a(Lcom/facebook/AccessToken;Ljava/util/Collection;Ljava/util/Collection;)Lcom/facebook/AccessToken;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/AccessToken;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/AccessToken;"
        }
    .end annotation

    .prologue
    .line 361
    new-instance v0, Lcom/facebook/AccessToken;

    .line 362
    invoke-virtual {p0}, Lcom/facebook/AccessToken;->c()Ljava/lang/String;

    move-result-object v1

    .line 363
    invoke-virtual {p0}, Lcom/facebook/AccessToken;->i()Ljava/lang/String;

    move-result-object v2

    .line 364
    invoke-virtual {p0}, Lcom/facebook/AccessToken;->j()Ljava/lang/String;

    move-result-object v3

    .line 367
    invoke-virtual {p0}, Lcom/facebook/AccessToken;->g()Lbgy;

    move-result-object v6

    .line 368
    invoke-virtual {p0}, Lcom/facebook/AccessToken;->d()Ljava/util/Date;

    move-result-object v7

    .line 369
    invoke-virtual {p0}, Lcom/facebook/AccessToken;->h()Ljava/util/Date;

    move-result-object v8

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v8}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Lbgy;Ljava/util/Date;Ljava/util/Date;)V

    .line 361
    return-object v0
.end method

.method private a(Ljava/lang/String;Lcom/facebook/login/LoginClient$Result;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/login/LoginClient$Result;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 403
    iget-object v0, p2, Lcom/facebook/login/LoginClient$Result;->a:Lbsk;

    .line 404
    invoke-virtual {v0}, Lbsk;->getLoggingValue()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Lcom/facebook/login/LoginClient$Result;->c:Ljava/lang/String;

    iget-object v4, p2, Lcom/facebook/login/LoginClient$Result;->d:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    .line 403
    invoke-direct/range {v0 .. v5}, Lcom/facebook/login/LoginClient;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 408
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 416
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    if-nez v0, :cond_0

    .line 418
    invoke-direct {p0}, Lcom/facebook/login/LoginClient;->q()Lbso;

    move-result-object v0

    const-string v1, "fb_mobile_login_method_complete"

    const-string v2, "Unexpected call to logCompleteLogin with null pendingAuthorizationRequest."

    invoke-virtual {v0, v1, v2, p1}, Lbso;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    :goto_0
    return-void

    .line 424
    :cond_0
    invoke-direct {p0}, Lcom/facebook/login/LoginClient;->q()Lbso;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    invoke-virtual {v1}, Lcom/facebook/login/LoginClient$Request;->e()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lbso;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->h:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 235
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/login/LoginClient;->h:Ljava/util/Map;

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/facebook/login/LoginClient;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->h:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    return-void
.end method

.method public static d()I
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lbnl;->Login:Lbnl;

    invoke-virtual {v0}, Lbnl;->toRequestCode()I

    move-result v0

    return v0
.end method

.method private d(Lcom/facebook/login/LoginClient$Result;)V
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->d:Lbsh;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->d:Lbsh;

    invoke-interface {v0, p1}, Lbsh;->a(Lcom/facebook/login/LoginClient$Result;)V

    .line 385
    :cond_0
    return-void
.end method

.method static o()Ljava/lang/String;
    .locals 4

    .prologue
    .line 430
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 432
    :try_start_0
    const-string v1, "init"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 433
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private p()V
    .locals 3

    .prologue
    .line 230
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    const-string v1, "Login attempt failed."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/facebook/login/LoginClient$Result;->a(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/login/LoginClient;->b(Lcom/facebook/login/LoginClient$Result;)V

    .line 231
    return-void
.end method

.method private q()Lbso;
    .locals 3

    .prologue
    .line 373
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->i:Lbso;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/login/LoginClient;->i:Lbso;

    .line 374
    invoke-virtual {v0}, Lbso;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    invoke-virtual {v1}, Lcom/facebook/login/LoginClient$Request;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 376
    :cond_0
    new-instance v0, Lbso;

    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->b()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    invoke-virtual {v2}, Lcom/facebook/login/LoginClient$Request;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lbso;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/login/LoginClient;->i:Lbso;

    .line 378
    :cond_1
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->i:Lbso;

    return-object v0
.end method


# virtual methods
.method a(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->b()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentActivity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->c:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public a(Landroid/support/v4/app/Fragment;)V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->c:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 82
    new-instance v0, Lbhp;

    const-string v1, "Can\'t set fragment once it is already set."

    invoke-direct {v0, v1}, Lbhp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    iput-object p1, p0, Lcom/facebook/login/LoginClient;->c:Landroid/support/v4/app/Fragment;

    .line 85
    return-void
.end method

.method public a(Lbsg;)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Lcom/facebook/login/LoginClient;->e:Lbsg;

    .line 322
    return-void
.end method

.method public a(Lbsh;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lcom/facebook/login/LoginClient;->d:Lbsh;

    .line 312
    return-void
.end method

.method public a(Lcom/facebook/login/LoginClient$Request;)V
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    invoke-virtual {p0, p1}, Lcom/facebook/login/LoginClient;->b(Lcom/facebook/login/LoginClient$Request;)V

    .line 104
    :cond_0
    return-void
.end method

.method a(Lcom/facebook/login/LoginClient$Result;)V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p1, Lcom/facebook/login/LoginClient$Result;->b:Lcom/facebook/AccessToken;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {p0, p1}, Lcom/facebook/login/LoginClient;->c(Lcom/facebook/login/LoginClient$Result;)V

    .line 281
    :goto_0
    return-void

    .line 279
    :cond_0
    invoke-virtual {p0, p1}, Lcom/facebook/login/LoginClient;->b(Lcom/facebook/login/LoginClient$Result;)V

    goto :goto_0
.end method

.method public a(IILandroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->g()Lcom/facebook/login/LoginMethodHandler;

    move-result-object v0

    .line 145
    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/login/LoginMethodHandler;->a(IILandroid/content/Intent;)Z

    move-result v0

    .line 147
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()Landroid/support/v4/app/FragmentActivity;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->c:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method b(Lcom/facebook/login/LoginClient$Request;)V
    .locals 2

    .prologue
    .line 107
    if-nez p1, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    if-eqz v0, :cond_2

    .line 112
    new-instance v0, Lbhp;

    const-string v1, "Attempted to authorize while a request is pending."

    invoke-direct {v0, v1}, Lbhp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_2
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    :cond_3
    iput-object p1, p0, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    .line 120
    invoke-virtual {p0, p1}, Lcom/facebook/login/LoginClient;->c(Lcom/facebook/login/LoginClient$Request;)[Lcom/facebook/login/LoginMethodHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/LoginClient;->a:[Lcom/facebook/login/LoginMethodHandler;

    .line 121
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->i()V

    goto :goto_0
.end method

.method public b(Lcom/facebook/login/LoginClient$Result;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 284
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->g()Lcom/facebook/login/LoginMethodHandler;

    move-result-object v0

    .line 288
    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {v0}, Lcom/facebook/login/LoginMethodHandler;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/facebook/login/LoginMethodHandler;->a:Ljava/util/Map;

    invoke-direct {p0, v1, p1, v0}, Lcom/facebook/login/LoginClient;->a(Ljava/lang/String;Lcom/facebook/login/LoginClient$Result;Ljava/util/Map;)V

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->h:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->h:Ljava/util/Map;

    iput-object v0, p1, Lcom/facebook/login/LoginClient$Result;->f:Ljava/util/Map;

    .line 298
    :cond_1
    iput-object v2, p0, Lcom/facebook/login/LoginClient;->a:[Lcom/facebook/login/LoginMethodHandler;

    .line 299
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/login/LoginClient;->b:I

    .line 300
    iput-object v2, p0, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    .line 301
    iput-object v2, p0, Lcom/facebook/login/LoginClient;->h:Ljava/util/Map;

    .line 303
    invoke-direct {p0, p1}, Lcom/facebook/login/LoginClient;->d(Lcom/facebook/login/LoginClient$Result;)V

    .line 304
    return-void
.end method

.method public c()Lcom/facebook/login/LoginClient$Request;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    return-object v0
.end method

.method c(Lcom/facebook/login/LoginClient$Result;)V
    .locals 3

    .prologue
    .line 329
    iget-object v0, p1, Lcom/facebook/login/LoginClient$Result;->b:Lcom/facebook/AccessToken;

    if-nez v0, :cond_0

    .line 330
    new-instance v0, Lbhp;

    const-string v1, "Can\'t validate without a token"

    invoke-direct {v0, v1}, Lbhp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :cond_0
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 334
    iget-object v1, p1, Lcom/facebook/login/LoginClient$Result;->b:Lcom/facebook/AccessToken;

    .line 338
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 339
    :try_start_0
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/facebook/AccessToken;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    iget-object v1, p1, Lcom/facebook/login/LoginClient$Result;->b:Lcom/facebook/AccessToken;

    invoke-static {v0, v1}, Lcom/facebook/login/LoginClient$Result;->a(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/AccessToken;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v0

    .line 348
    :goto_0
    invoke-virtual {p0, v0}, Lcom/facebook/login/LoginClient;->b(Lcom/facebook/login/LoginClient$Result;)V

    .line 355
    :goto_1
    return-void

    .line 342
    :cond_1
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    const-string v1, "User logged in as different Facebook user."

    const/4 v2, 0x0

    .line 343
    invoke-static {v0, v1, v2}, Lcom/facebook/login/LoginClient$Result;->a(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 349
    :catch_0
    move-exception v0

    .line 350
    iget-object v1, p0, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    const-string v2, "Caught exception"

    .line 353
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 350
    invoke-static {v1, v2, v0}, Lcom/facebook/login/LoginClient$Result;->a(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/login/LoginClient;->b(Lcom/facebook/login/LoginClient$Result;)V

    goto :goto_1
.end method

.method protected c(Lcom/facebook/login/LoginClient$Request;)[Lcom/facebook/login/LoginMethodHandler;
    .locals 3

    .prologue
    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 153
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->b()Lbse;

    move-result-object v1

    .line 155
    invoke-virtual {v1}, Lbse;->allowsGetTokenAuth()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    new-instance v2, Lcom/facebook/login/GetTokenLoginMethodHandler;

    invoke-direct {v2, p0}, Lcom/facebook/login/GetTokenLoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    :cond_0
    invoke-virtual {v1}, Lbse;->allowsKatanaAuth()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 160
    new-instance v2, Lcom/facebook/login/KatanaProxyLoginMethodHandler;

    invoke-direct {v2, p0}, Lcom/facebook/login/KatanaProxyLoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    :cond_1
    invoke-virtual {v1}, Lbse;->allowsFacebookLiteAuth()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 164
    new-instance v2, Lcom/facebook/login/FacebookLiteLoginMethodHandler;

    invoke-direct {v2, p0}, Lcom/facebook/login/FacebookLiteLoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    :cond_2
    invoke-virtual {v1}, Lbse;->allowsCustomTabAuth()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 168
    new-instance v2, Lcom/facebook/login/CustomTabLoginMethodHandler;

    invoke-direct {v2, p0}, Lcom/facebook/login/CustomTabLoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    :cond_3
    invoke-virtual {v1}, Lbse;->allowsWebViewAuth()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 172
    new-instance v2, Lcom/facebook/login/WebViewLoginMethodHandler;

    invoke-direct {v2, p0}, Lcom/facebook/login/WebViewLoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    :cond_4
    invoke-virtual {v1}, Lbse;->allowsDeviceAuth()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 176
    new-instance v1, Lcom/facebook/login/DeviceAuthMethodHandler;

    invoke-direct {v1, p0}, Lcom/facebook/login/DeviceAuthMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/facebook/login/LoginMethodHandler;

    .line 180
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 181
    return-object v1
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 672
    const/4 v0, 0x0

    return v0
.end method

.method e()Z
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/login/LoginClient;->b:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/facebook/login/LoginClient;->b:I

    if-ltz v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->g()Lcom/facebook/login/LoginMethodHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/login/LoginMethodHandler;->b()V

    .line 132
    :cond_0
    return-void
.end method

.method g()Lcom/facebook/login/LoginMethodHandler;
    .locals 2

    .prologue
    .line 135
    iget v0, p0, Lcom/facebook/login/LoginClient;->b:I

    if-ltz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->a:[Lcom/facebook/login/LoginMethodHandler;

    iget v1, p0, Lcom/facebook/login/LoginClient;->b:I

    aget-object v0, v0, v1

    .line 138
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method h()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 185
    iget-boolean v1, p0, Lcom/facebook/login/LoginClient;->f:Z

    if-eqz v1, :cond_0

    .line 200
    :goto_0
    return v0

    .line 189
    :cond_0
    const-string v1, "android.permission.INTERNET"

    invoke-virtual {p0, v1}, Lcom/facebook/login/LoginClient;->a(Ljava/lang/String;)I

    move-result v1

    .line 190
    if-eqz v1, :cond_1

    .line 191
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->b()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 192
    sget v1, Lbjx;->com_facebook_internet_permission_error_title:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 193
    sget v2, Lbjx;->com_facebook_internet_permission_error_message:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 194
    iget-object v2, p0, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    invoke-static {v2, v1, v0}, Lcom/facebook/login/LoginClient$Result;->a(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/login/LoginClient;->b(Lcom/facebook/login/LoginClient$Result;)V

    .line 196
    const/4 v0, 0x0

    goto :goto_0

    .line 199
    :cond_1
    iput-boolean v0, p0, Lcom/facebook/login/LoginClient;->f:Z

    goto :goto_0
.end method

.method i()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 204
    iget v0, p0, Lcom/facebook/login/LoginClient;->b:I

    if-ltz v0, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->g()Lcom/facebook/login/LoginMethodHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/login/LoginMethodHandler;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "skipped"

    .line 210
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->g()Lcom/facebook/login/LoginMethodHandler;

    move-result-object v0

    iget-object v5, v0, Lcom/facebook/login/LoginMethodHandler;->a:Ljava/util/Map;

    move-object v0, p0

    move-object v4, v3

    .line 205
    invoke-direct/range {v0 .. v5}, Lcom/facebook/login/LoginClient;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->a:[Lcom/facebook/login/LoginMethodHandler;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/facebook/login/LoginClient;->b:I

    iget-object v1, p0, Lcom/facebook/login/LoginClient;->a:[Lcom/facebook/login/LoginMethodHandler;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    .line 214
    iget v0, p0, Lcom/facebook/login/LoginClient;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/login/LoginClient;->b:I

    .line 216
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->j()Z

    move-result v0

    .line 218
    if-eqz v0, :cond_0

    .line 227
    :cond_1
    :goto_0
    return-void

    .line 223
    :cond_2
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    if-eqz v0, :cond_1

    .line 225
    invoke-direct {p0}, Lcom/facebook/login/LoginClient;->p()V

    goto :goto_0
.end method

.method j()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 244
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->g()Lcom/facebook/login/LoginMethodHandler;

    move-result-object v1

    .line 245
    invoke-virtual {v1}, Lcom/facebook/login/LoginMethodHandler;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->h()Z

    move-result v2

    if-nez v2, :cond_0

    .line 246
    const-string v1, "no_internet_permission"

    const-string v2, "1"

    invoke-direct {p0, v1, v2, v0}, Lcom/facebook/login/LoginClient;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 270
    :goto_0
    return v0

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    invoke-virtual {v1, v0}, Lcom/facebook/login/LoginMethodHandler;->a(Lcom/facebook/login/LoginClient$Request;)Z

    move-result v0

    .line 255
    if-eqz v0, :cond_1

    .line 256
    invoke-direct {p0}, Lcom/facebook/login/LoginClient;->q()Lbso;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    invoke-virtual {v3}, Lcom/facebook/login/LoginClient$Request;->e()Ljava/lang/String;

    move-result-object v3

    .line 257
    invoke-virtual {v1}, Lcom/facebook/login/LoginMethodHandler;->a()Ljava/lang/String;

    move-result-object v1

    .line 256
    invoke-virtual {v2, v3, v1}, Lbso;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 261
    :cond_1
    invoke-direct {p0}, Lcom/facebook/login/LoginClient;->q()Lbso;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    invoke-virtual {v3}, Lcom/facebook/login/LoginClient$Request;->e()Ljava/lang/String;

    move-result-object v3

    .line 262
    invoke-virtual {v1}, Lcom/facebook/login/LoginMethodHandler;->a()Ljava/lang/String;

    move-result-object v4

    .line 261
    invoke-virtual {v2, v3, v4}, Lbso;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v2, "not_tried"

    .line 265
    invoke-virtual {v1}, Lcom/facebook/login/LoginMethodHandler;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    .line 263
    invoke-direct {p0, v2, v1, v3}, Lcom/facebook/login/LoginClient;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method k()Lbsh;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->d:Lbsh;

    return-object v0
.end method

.method l()Lbsg;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->e:Lbsg;

    return-object v0
.end method

.method m()V
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->e:Lbsg;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->e:Lbsg;

    invoke-interface {v0}, Lbsg;->a()V

    .line 391
    :cond_0
    return-void
.end method

.method n()V
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->e:Lbsg;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->e:Lbsg;

    invoke-interface {v0}, Lbsg;->b()V

    .line 397
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->a:[Lcom/facebook/login/LoginMethodHandler;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 678
    iget v0, p0, Lcom/facebook/login/LoginClient;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 679
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 680
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->h:Ljava/util/Map;

    invoke-static {p1, v0}, Lbqq;->a(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 681
    return-void
.end method
