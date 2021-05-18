.class public Lbww;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final A:Ljava/lang/String; = "unlike_token"

.field private static final B:I = 0xdad

.field private static C:Lbon; = null

.field private static final D:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lbww;",
            ">;"
        }
    .end annotation
.end field

.field private static E:Lbri; = null

.field private static F:Lbri; = null

.field private static G:Landroid/os/Handler; = null

.field private static H:Ljava/lang/String; = null

.field private static I:Z = false

.field private static volatile J:I = 0x0

.field private static K:Lbgz; = null

.field public static final a:Ljava/lang/String; = "com.facebook.sdk.LikeActionController.UPDATED"

.field public static final b:Ljava/lang/String; = "com.facebook.sdk.LikeActionController.DID_ERROR"

.field public static final c:Ljava/lang/String; = "com.facebook.sdk.LikeActionController.DID_RESET"

.field public static final d:Ljava/lang/String; = "com.facebook.sdk.LikeActionController.OBJECT_ID"

.field public static final e:Ljava/lang/String; = "Invalid Object Id"

.field public static final f:Ljava/lang/String; = "Unable to publish the like/unlike action"

.field private static final g:Ljava/lang/String;

.field private static final h:I = 0x3

.field private static final i:I = 0x80

.field private static final j:I = 0x3e8

.field private static final k:Ljava/lang/String; = "com.facebook.LikeActionController.CONTROLLER_STORE_KEY"

.field private static final l:Ljava/lang/String; = "PENDING_CONTROLLER_KEY"

.field private static final m:Ljava/lang/String; = "OBJECT_SUFFIX"

.field private static final n:Ljava/lang/String; = "com.facebook.share.internal.LikeActionController.version"

.field private static final o:Ljava/lang/String; = "object_id"

.field private static final p:Ljava/lang/String; = "object_type"

.field private static final q:Ljava/lang/String; = "like_count_string_with_like"

.field private static final r:Ljava/lang/String; = "like_count_string_without_like"

.field private static final s:Ljava/lang/String; = "social_sentence_with_like"

.field private static final t:Ljava/lang/String; = "social_sentence_without_like"

.field private static final u:Ljava/lang/String; = "is_object_liked"

.field private static final v:Ljava/lang/String; = "unlike_token"

.field private static final w:Ljava/lang/String; = "facebook_dialog_analytics_bundle"

.field private static final x:Ljava/lang/String; = "object_is_liked"

.field private static final y:Ljava/lang/String; = "like_count_string"

.field private static final z:Ljava/lang/String; = "social_sentence"


# instance fields
.field private L:Ljava/lang/String;

.field private M:Lccn;

.field private N:Z

.field private O:Ljava/lang/String;

.field private P:Ljava/lang/String;

.field private Q:Ljava/lang/String;

.field private R:Ljava/lang/String;

.field private S:Ljava/lang/String;

.field private T:Ljava/lang/String;

.field private U:Z

.field private V:Z

.field private W:Z

.field private X:Landroid/os/Bundle;

.field private Y:Lbla;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 76
    const-class v0, Lbww;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbww;->g:Ljava/lang/String;

    .line 115
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lbww;->D:Ljava/util/concurrent/ConcurrentHashMap;

    .line 119
    new-instance v0, Lbri;

    invoke-direct {v0, v1}, Lbri;-><init>(I)V

    sput-object v0, Lbww;->E:Lbri;

    .line 121
    new-instance v0, Lbri;

    invoke-direct {v0, v1}, Lbri;-><init>(I)V

    sput-object v0, Lbww;->F:Lbri;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lccn;)V
    .locals 0

    .prologue
    .line 600
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 601
    iput-object p1, p0, Lbww;->L:Ljava/lang/String;

    .line 602
    iput-object p2, p0, Lbww;->M:Lccn;

    .line 603
    return-void
.end method

.method static synthetic a(I)I
    .locals 0

    .prologue
    .line 61
    sput p0, Lbww;->J:I

    return p0
.end method

.method private static a(Ljava/lang/String;)Lbww;
    .locals 5

    .prologue
    .line 388
    invoke-static {p0}, Lbww;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 390
    sget-object v0, Lbww;->D:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbww;

    .line 391
    if-eqz v0, :cond_0

    .line 393
    sget-object v2, Lbww;->E:Lbri;

    new-instance v3, Lbxv;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lbxv;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v2, v3}, Lbri;->a(Ljava/lang/Runnable;)Lbrk;

    .line 396
    :cond_0
    return-object v0
.end method

.method private a(Landroid/os/Bundle;)Lbyu;
    .locals 2

    .prologue
    .line 856
    new-instance v0, Lbxf;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lbxf;-><init>(Lbww;Lbhl;Landroid/os/Bundle;)V

    return-object v0
.end method

.method static synthetic a(Lbww;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lbww;->o()V

    return-void
.end method

.method static synthetic a(Lbww;IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lbww;->b(IILandroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lbww;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lbww;->e(Landroid/os/Bundle;)V

    return-void
.end method

.method private static a(Lbww;Lccn;Lbxo;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 227
    iget-object v0, p0, Lbww;->M:Lccn;

    invoke-static {p1, v0}, Lbze;->a(Lccn;Lccn;)Lccn;

    move-result-object v0

    .line 231
    if-nez v0, :cond_0

    .line 234
    new-instance v0, Lbhp;

    const-string v2, "Object with id:\"%s\" is already marked as type:\"%s\". Cannot change the type to:\"%s\""

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lbww;->L:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lbww;->M:Lccn;

    .line 238
    invoke-virtual {v5}, Lccn;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 239
    invoke-virtual {p1}, Lccn;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v0, v2, v3}, Lbhp;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    :goto_0
    invoke-static {p2, v1, v0}, Lbww;->a(Lbxo;Lbww;Lbhp;)V

    .line 246
    return-void

    .line 242
    :cond_0
    iput-object v0, p0, Lbww;->M:Lccn;

    move-object v0, v1

    move-object v1, p0

    goto :goto_0
.end method

.method static synthetic a(Lbww;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    invoke-static {p0, p1}, Lbww;->d(Lbww;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lbww;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lbww;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lbww;Ljava/lang/String;Lcom/facebook/FacebookRequestError;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lbww;->a(Ljava/lang/String;Lcom/facebook/FacebookRequestError;)V

    return-void
.end method

.method static synthetic a(Lbww;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct/range {p0 .. p6}, Lbww;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Lbxo;Lbww;Lbhp;)V
    .locals 2

    .prologue
    .line 327
    if-nez p0, :cond_0

    .line 337
    :goto_0
    return-void

    .line 331
    :cond_0
    sget-object v0, Lbww;->G:Landroid/os/Handler;

    new-instance v1, Lbxd;

    invoke-direct {v1, p0, p1, p2}, Lbxd;-><init>(Lbxo;Lbww;Lbhp;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private a(Lbxy;)V
    .locals 4

    .prologue
    .line 1199
    iget-object v0, p0, Lbww;->T:Ljava/lang/String;

    invoke-static {v0}, Lbqq;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1200
    if-eqz p1, :cond_0

    .line 1201
    invoke-interface {p1}, Lbxy;->a()V

    .line 1244
    :cond_0
    :goto_0
    return-void

    .line 1207
    :cond_1
    new-instance v0, Lbxq;

    iget-object v1, p0, Lbww;->L:Ljava/lang/String;

    iget-object v2, p0, Lbww;->M:Lccn;

    invoke-direct {v0, p0, v1, v2}, Lbxq;-><init>(Lbww;Ljava/lang/String;Lccn;)V

    .line 1209
    new-instance v1, Lbxs;

    iget-object v2, p0, Lbww;->L:Ljava/lang/String;

    iget-object v3, p0, Lbww;->M:Lccn;

    invoke-direct {v1, p0, v2, v3}, Lbxs;-><init>(Lbww;Ljava/lang/String;Lccn;)V

    .line 1212
    new-instance v2, Lbiu;

    invoke-direct {v2}, Lbiu;-><init>()V

    .line 1213
    invoke-virtual {v0, v2}, Lbxq;->a(Lbiu;)V

    .line 1214
    invoke-virtual {v1, v2}, Lbxs;->a(Lbiu;)V

    .line 1216
    new-instance v3, Lbwz;

    invoke-direct {v3, p0, v0, v1, p1}, Lbwz;-><init>(Lbww;Lbxq;Lbxs;Lbxy;)V

    invoke-virtual {v2, v3}, Lbiu;->a(Lbiv;)V

    .line 1243
    invoke-virtual {v2}, Lbiu;->h()Lbit;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 1247
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1248
    const-string v1, "object_id"

    iget-object v2, p0, Lbww;->L:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    const-string v1, "object_type"

    iget-object v2, p0, Lbww;->M:Lccn;

    invoke-virtual {v2}, Lccn;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1250
    const-string v1, "current_action"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    invoke-direct {p0}, Lbww;->l()Lbla;

    move-result-object v1

    const-string v2, "fb_like_control_error"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lbla;->a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 1253
    return-void
.end method

.method private static a(Ljava/lang/String;Lbww;)V
    .locals 4

    .prologue
    .line 380
    invoke-static {p0}, Lbww;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 382
    sget-object v1, Lbww;->E:Lbri;

    new-instance v2, Lbxv;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lbxv;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Lbri;->a(Ljava/lang/Runnable;)Lbrk;

    .line 384
    sget-object v1, Lbww;->D:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    return-void
.end method

.method public static a(Ljava/lang/String;Lccn;Lbxo;)V
    .locals 2

    .prologue
    .line 209
    sget-boolean v0, Lbww;->I:Z

    if-nez v0, :cond_0

    .line 210
    invoke-static {}, Lbww;->j()V

    .line 213
    :cond_0
    invoke-static {p0}, Lbww;->a(Ljava/lang/String;)Lbww;

    move-result-object v0

    .line 214
    if-eqz v0, :cond_1

    .line 216
    invoke-static {v0, p1, p2}, Lbww;->a(Lbww;Lccn;Lbxo;)V

    .line 221
    :goto_0
    return-void

    .line 218
    :cond_1
    sget-object v0, Lbww;->F:Lbri;

    new-instance v1, Lbxn;

    invoke-direct {v1, p0, p1, p2}, Lbxn;-><init>(Ljava/lang/String;Lccn;Lbxo;)V

    invoke-virtual {v0, v1}, Lbri;->a(Ljava/lang/Runnable;)Lbrk;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Lcom/facebook/FacebookRequestError;)V
    .locals 3

    .prologue
    .line 1256
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1257
    if-eqz p2, :cond_0

    .line 1258
    invoke-virtual {p2}, Lcom/facebook/FacebookRequestError;->k()Lorg/json/JSONObject;

    move-result-object v1

    .line 1259
    if-eqz v1, :cond_0

    .line 1260
    const-string v2, "error"

    .line 1262
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1260
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    :cond_0
    invoke-direct {p0, p1, v0}, Lbww;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1266
    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    invoke-static {p0, p1}, Lbww;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    .prologue
    .line 727
    invoke-direct {p0, p1}, Lbww;->b(Z)V

    .line 729
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 730
    const-string v1, "com.facebook.platform.status.ERROR_DESCRIPTION"

    const-string v2, "Unable to publish the like/unlike action"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    const-string v1, "com.facebook.sdk.LikeActionController.DID_ERROR"

    invoke-static {p0, v1, v0}, Lbww;->c(Lbww;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 738
    return-void
.end method

.method private a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 756
    invoke-static {p2, v0}, Lbqq;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 758
    invoke-static {p3, v0}, Lbqq;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 759
    invoke-static {p4, v0}, Lbqq;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 761
    invoke-static {p5, v0}, Lbqq;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 762
    invoke-static {p6, v0}, Lbqq;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 764
    iget-boolean v0, p0, Lbww;->N:Z

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lbww;->O:Ljava/lang/String;

    .line 765
    invoke-static {v1, v0}, Lbqq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbww;->P:Ljava/lang/String;

    .line 768
    invoke-static {v2, v0}, Lbqq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbww;->Q:Ljava/lang/String;

    .line 771
    invoke-static {v3, v0}, Lbqq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbww;->R:Ljava/lang/String;

    .line 772
    invoke-static {v4, v0}, Lbqq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbww;->S:Ljava/lang/String;

    .line 775
    invoke-static {v5, v0}, Lbqq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 777
    :goto_0
    if-nez v0, :cond_2

    .line 791
    :goto_1
    return-void

    .line 775
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 781
    :cond_2
    iput-boolean p1, p0, Lbww;->N:Z

    .line 782
    iput-object v1, p0, Lbww;->O:Ljava/lang/String;

    .line 783
    iput-object v2, p0, Lbww;->P:Ljava/lang/String;

    .line 784
    iput-object v3, p0, Lbww;->Q:Ljava/lang/String;

    .line 785
    iput-object v4, p0, Lbww;->R:Ljava/lang/String;

    .line 786
    iput-object v5, p0, Lbww;->S:Ljava/lang/String;

    .line 788
    invoke-static {p0}, Lbww;->l(Lbww;)V

    .line 790
    const-string v0, "com.facebook.sdk.LikeActionController.UPDATED"

    invoke-static {p0, v0}, Lbww;->d(Lbww;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static a(IILandroid/content/Intent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 161
    sget-object v1, Lbww;->H:Ljava/lang/String;

    invoke-static {v1}, Lbqq;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    invoke-static {}, Lbhv;->h()Landroid/content/Context;

    move-result-object v1

    .line 163
    const-string v2, "com.facebook.LikeActionController.CONTROLLER_STORE_KEY"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 167
    const-string v2, "PENDING_CONTROLLER_KEY"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lbww;->H:Ljava/lang/String;

    .line 172
    :cond_0
    sget-object v1, Lbww;->H:Ljava/lang/String;

    invoke-static {v1}, Lbqq;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 196
    :goto_0
    return v0

    .line 177
    :cond_1
    sget-object v0, Lbww;->H:Ljava/lang/String;

    sget-object v1, Lccn;->UNKNOWN:Lccn;

    new-instance v2, Lbwx;

    invoke-direct {v2, p0, p1, p2}, Lbwx;-><init>(IILandroid/content/Intent;)V

    invoke-static {v0, v1, v2}, Lbww;->a(Ljava/lang/String;Lccn;Lbxo;)V

    .line 196
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lbww;Z)Z
    .locals 0

    .prologue
    .line 61
    iput-boolean p1, p0, Lbww;->W:Z

    return p1
.end method

.method private a(ZLandroid/os/Bundle;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 708
    const/4 v1, 0x0

    .line 709
    invoke-direct {p0}, Lbww;->n()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 710
    if-eqz p1, :cond_0

    .line 712
    invoke-direct {p0, p2}, Lbww;->c(Landroid/os/Bundle;)V

    .line 719
    :goto_0
    return v0

    .line 713
    :cond_0
    iget-object v2, p0, Lbww;->S:Ljava/lang/String;

    invoke-static {v2}, Lbqq;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 715
    invoke-direct {p0, p2}, Lbww;->d(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Lbww;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 436
    .line 440
    :try_start_0
    invoke-static {p0}, Lbww;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 441
    sget-object v2, Lbww;->C:Lbon;

    invoke-virtual {v2, v1}, Lbon;->a(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 442
    if-eqz v2, :cond_0

    .line 443
    :try_start_1
    invoke-static {v2}, Lbqq;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 444
    invoke-static {v1}, Lbqq;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 445
    invoke-static {v1}, Lbww;->c(Ljava/lang/String;)Lbww;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 452
    :cond_0
    if-eqz v2, :cond_1

    .line 453
    invoke-static {v2}, Lbqq;->a(Ljava/io/Closeable;)V

    .line 457
    :cond_1
    :goto_0
    return-object v0

    .line 448
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 449
    :goto_1
    :try_start_2
    sget-object v3, Lbww;->g:Ljava/lang/String;

    const-string v4, "Unable to deserialize controller from disk"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 452
    if-eqz v2, :cond_1

    .line 453
    invoke-static {v2}, Lbqq;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 452
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    if-eqz v2, :cond_2

    .line 453
    invoke-static {v2}, Lbqq;->a(Ljava/io/Closeable;)V

    :cond_2
    throw v0

    .line 452
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 448
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method static synthetic b(Lbww;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lbww;->O:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lbww;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lbww;->S:Ljava/lang/String;

    return-object p1
.end method

.method private b(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 844
    iget-object v0, p0, Lbww;->X:Landroid/os/Bundle;

    .line 848
    invoke-direct {p0, v0}, Lbww;->a(Landroid/os/Bundle;)Lbyu;

    move-result-object v0

    .line 844
    invoke-static {p1, p2, p3, v0}, Lbze;->a(IILandroid/content/Intent;Lbyu;)Z

    .line 852
    invoke-direct {p0}, Lbww;->m()V

    .line 853
    return-void
.end method

.method private b(Landroid/app/Activity;Lbpa;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 797
    .line 799
    invoke-static {}, Lbyf;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 800
    const-string v0, "fb_like_control_did_present_dialog"

    .line 815
    :goto_0
    if-eqz v0, :cond_0

    .line 816
    iget-object v0, p0, Lbww;->M:Lccn;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lbww;->M:Lccn;

    .line 817
    invoke-virtual {v0}, Lccn;->toString()Ljava/lang/String;

    move-result-object v0

    .line 819
    :goto_1
    new-instance v2, Lbye;

    invoke-direct {v2}, Lbye;-><init>()V

    iget-object v3, p0, Lbww;->L:Ljava/lang/String;

    .line 820
    invoke-virtual {v2, v3}, Lbye;->a(Ljava/lang/String;)Lbye;

    move-result-object v2

    .line 821
    invoke-virtual {v2, v0}, Lbye;->b(Ljava/lang/String;)Lbye;

    move-result-object v0

    .line 822
    invoke-virtual {v0}, Lbye;->b()Lcom/facebook/share/internal/LikeContent;

    move-result-object v0

    .line 824
    if-eqz p2, :cond_4

    .line 825
    new-instance v2, Lbyf;

    invoke-direct {v2, p2}, Lbyf;-><init>(Lbpa;)V

    invoke-virtual {v2, v0}, Lbyf;->b(Ljava/lang/Object;)V

    .line 830
    :goto_2
    invoke-direct {p0, p3}, Lbww;->b(Landroid/os/Bundle;)V

    .line 832
    invoke-direct {p0}, Lbww;->l()Lbla;

    move-result-object v0

    const-string v2, "fb_like_control_did_present_dialog"

    invoke-virtual {v0, v2, v1, p3}, Lbla;->a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 837
    :cond_0
    return-void

    .line 801
    :cond_1
    invoke-static {}, Lbyf;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 802
    const-string v0, "fb_like_control_did_present_fallback_dialog"

    goto :goto_0

    .line 805
    :cond_2
    const-string v0, "present_dialog"

    invoke-direct {p0, v0, p3}, Lbww;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 806
    sget-object v0, Lbww;->g:Ljava/lang/String;

    const-string v2, "Cannot show the Like Dialog on this device."

    invoke-static {v0, v2}, Lbqq;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    const-string v0, "com.facebook.sdk.LikeActionController.UPDATED"

    invoke-static {v1, v0}, Lbww;->d(Lbww;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 817
    :cond_3
    sget-object v0, Lccn;->UNKNOWN:Lccn;

    .line 818
    invoke-virtual {v0}, Lccn;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 827
    :cond_4
    new-instance v2, Lbyf;

    invoke-direct {v2, p1}, Lbyf;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v0}, Lbyf;->b(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 940
    iget-object v0, p0, Lbww;->L:Ljava/lang/String;

    invoke-static {v0}, Lbww;->e(Ljava/lang/String;)V

    .line 943
    iput-object p1, p0, Lbww;->X:Landroid/os/Bundle;

    .line 946
    invoke-static {p0}, Lbww;->l(Lbww;)V

    .line 947
    return-void
.end method

.method static synthetic b(Lbww;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 61
    invoke-static {p0, p1, p2}, Lbww;->c(Lbww;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic b(Lbww;Z)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lbww;->a(Z)V

    return-void
.end method

.method static synthetic b(Ljava/lang/String;Lccn;Lbxo;)V
    .locals 0

    .prologue
    .line 61
    invoke-static {p0, p1, p2}, Lbww;->c(Ljava/lang/String;Lccn;Lbxo;)V

    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 418
    const/4 v1, 0x0

    .line 420
    :try_start_0
    sget-object v0, Lbww;->C:Lbon;

    invoke-virtual {v0, p0}, Lbon;->b(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v1

    .line 421
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 425
    if-eqz v1, :cond_0

    .line 426
    invoke-static {v1}, Lbqq;->a(Ljava/io/Closeable;)V

    .line 429
    :cond_0
    :goto_0
    return-void

    .line 422
    :catch_0
    move-exception v0

    .line 423
    :try_start_1
    sget-object v2, Lbww;->g:Ljava/lang/String;

    const-string v3, "Unable to serialize controller to disk"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 425
    if-eqz v1, :cond_0

    .line 426
    invoke-static {v1}, Lbqq;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 425
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    .line 426
    invoke-static {v1}, Lbqq;->a(Ljava/io/Closeable;)V

    :cond_1
    throw v0
.end method

.method private b(Z)V
    .locals 7

    .prologue
    .line 741
    iget-object v2, p0, Lbww;->O:Ljava/lang/String;

    iget-object v3, p0, Lbww;->P:Ljava/lang/String;

    iget-object v4, p0, Lbww;->Q:Ljava/lang/String;

    iget-object v5, p0, Lbww;->R:Ljava/lang/String;

    iget-object v6, p0, Lbww;->S:Ljava/lang/String;

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lbww;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    return-void
.end method

.method private static c(Ljava/lang/String;)Lbww;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 464
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 465
    const-string v0, "com.facebook.share.internal.LikeActionController.version"

    const/4 v3, -0x1

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 466
    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    .line 505
    :goto_0
    return-object v1

    .line 472
    :cond_0
    const-string v0, "object_id"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 473
    const-string v0, "object_type"

    sget-object v4, Lccn;->UNKNOWN:Lccn;

    .line 475
    invoke-virtual {v4}, Lccn;->getValue()I

    move-result v4

    .line 473
    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 477
    new-instance v0, Lbww;

    .line 479
    invoke-static {v4}, Lccn;->fromInt(I)Lccn;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lbww;-><init>(Ljava/lang/String;Lccn;)V

    .line 483
    const-string v3, "like_count_string_with_like"

    const/4 v4, 0x0

    .line 484
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lbww;->O:Ljava/lang/String;

    .line 485
    const-string v3, "like_count_string_without_like"

    const/4 v4, 0x0

    .line 486
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lbww;->P:Ljava/lang/String;

    .line 487
    const-string v3, "social_sentence_with_like"

    const/4 v4, 0x0

    .line 488
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lbww;->Q:Ljava/lang/String;

    .line 489
    const-string v3, "social_sentence_without_like"

    const/4 v4, 0x0

    .line 490
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lbww;->R:Ljava/lang/String;

    .line 491
    const-string v3, "is_object_liked"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v0, Lbww;->N:Z

    .line 492
    const-string v3, "unlike_token"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lbww;->S:Ljava/lang/String;

    .line 494
    const-string v3, "facebook_dialog_analytics_bundle"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 496
    if-eqz v2, :cond_1

    .line 498
    invoke-static {v2}, Lbna;->a(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v0, Lbww;->X:Landroid/os/Bundle;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    move-object v1, v0

    .line 505
    goto :goto_0

    .line 500
    :catch_0
    move-exception v0

    .line 501
    sget-object v2, Lbww;->g:Ljava/lang/String;

    const-string v3, "Unable to deserialize controller from JSON"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 502
    goto :goto_1
.end method

.method static synthetic c(Lbww;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lbww;->P:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lbww;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lbww;->T:Ljava/lang/String;

    return-object p1
.end method

.method private c(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 979
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbww;->W:Z

    .line 981
    new-instance v0, Lbxg;

    invoke-direct {v0, p0, p1}, Lbxg;-><init>(Lbww;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lbww;->a(Lbxy;)V

    .line 1033
    return-void
.end method

.method private static c(Lbww;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 581
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 582
    if-eqz p0, :cond_1

    .line 583
    if-nez p2, :cond_0

    .line 584
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 587
    :cond_0
    const-string v1, "com.facebook.sdk.LikeActionController.OBJECT_ID"

    invoke-virtual {p0}, Lbww;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    :cond_1
    if-eqz p2, :cond_2

    .line 591
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 593
    :cond_2
    invoke-static {}, Lbhv;->h()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    .line 594
    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 595
    return-void
.end method

.method private static c(Ljava/lang/String;Lccn;Lbxo;)V
    .locals 3

    .prologue
    .line 261
    invoke-static {p0}, Lbww;->a(Ljava/lang/String;)Lbww;

    move-result-object v0

    .line 262
    if-eqz v0, :cond_0

    .line 264
    invoke-static {v0, p1, p2}, Lbww;->a(Lbww;Lccn;Lbxo;)V

    .line 289
    :goto_0
    return-void

    .line 269
    :cond_0
    invoke-static {p0}, Lbww;->b(Ljava/lang/String;)Lbww;

    move-result-object v0

    .line 271
    if-nez v0, :cond_1

    .line 272
    new-instance v0, Lbww;

    invoke-direct {v0, p0, p1}, Lbww;-><init>(Ljava/lang/String;Lccn;)V

    .line 273
    invoke-static {v0}, Lbww;->l(Lbww;)V

    .line 277
    :cond_1
    invoke-static {p0, v0}, Lbww;->a(Ljava/lang/String;Lbww;)V

    .line 281
    sget-object v1, Lbww;->G:Landroid/os/Handler;

    new-instance v2, Lbxb;

    invoke-direct {v2, v0}, Lbxb;-><init>(Lbww;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 288
    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lbww;->a(Lbxo;Lbww;Lbhp;)V

    goto :goto_0
.end method

.method static synthetic c(Lbww;Z)Z
    .locals 0

    .prologue
    .line 61
    iput-boolean p1, p0, Lbww;->V:Z

    return p1
.end method

.method static synthetic d(Lbww;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lbww;->Q:Ljava/lang/String;

    return-object v0
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 547
    const/4 v0, 0x0

    .line 548
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v1

    .line 549
    if-eqz v1, :cond_0

    .line 550
    invoke-virtual {v1}, Lcom/facebook/AccessToken;->c()Ljava/lang/String;

    move-result-object v0

    .line 552
    :cond_0
    if-eqz v0, :cond_1

    .line 557
    invoke-static {v0}, Lbqq;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 559
    :cond_1
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v2, "%s|%s|com.fb.sdk.like|%d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    const-string v5, ""

    .line 563
    invoke-static {v0, v5}, Lbqq;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x2

    sget v4, Lbww;->J:I

    .line 564
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    .line 559
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 1036
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbww;->W:Z

    .line 1039
    new-instance v0, Lbiu;

    invoke-direct {v0}, Lbiu;-><init>()V

    .line 1040
    new-instance v1, Lbxx;

    iget-object v2, p0, Lbww;->S:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lbxx;-><init>(Lbww;Ljava/lang/String;)V

    .line 1042
    invoke-virtual {v1, v0}, Lbxx;->a(Lbiu;)V

    .line 1043
    new-instance v2, Lbxi;

    invoke-direct {v2, p0, v1, p1}, Lbxi;-><init>(Lbww;Lbxx;Landroid/os/Bundle;)V

    invoke-virtual {v0, v2}, Lbiu;->a(Lbiv;)V

    .line 1068
    invoke-virtual {v0}, Lbiu;->h()Lbit;

    .line 1069
    return-void
.end method

.method private static d(Lbww;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 574
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lbww;->c(Lbww;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 575
    return-void
.end method

.method static synthetic d(Lbww;Z)Z
    .locals 0

    .prologue
    .line 61
    iput-boolean p1, p0, Lbww;->U:Z

    return p1
.end method

.method static synthetic e(Lbww;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lbww;->R:Ljava/lang/String;

    return-object v0
.end method

.method private e(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 1190
    iget-boolean v0, p0, Lbww;->N:Z

    iget-boolean v1, p0, Lbww;->V:Z

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lbww;->N:Z

    .line 1191
    invoke-direct {p0, v0, p1}, Lbww;->a(ZLandroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1194
    iget-boolean v0, p0, Lbww;->N:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lbww;->a(Z)V

    .line 1196
    :cond_0
    return-void

    .line 1194
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static e(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 956
    sput-object p0, Lbww;->H:Ljava/lang/String;

    .line 957
    invoke-static {}, Lbhv;->h()Landroid/content/Context;

    move-result-object v0

    .line 959
    const-string v1, "com.facebook.LikeActionController.CONTROLLER_STORE_KEY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 960
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "PENDING_CONTROLLER_KEY"

    sget-object v2, Lbww;->H:Ljava/lang/String;

    .line 961
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 964
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 965
    return-void
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lbww;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lbww;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lbww;->S:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g()I
    .locals 1

    .prologue
    .line 61
    sget v0, Lbww;->J:I

    return v0
.end method

.method static synthetic g(Lbww;)Lbla;
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lbww;->l()Lbla;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Lbww;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lbww;->T:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lbww;->D:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic i()Lbon;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lbww;->C:Lbon;

    return-object v0
.end method

.method static synthetic i(Lbww;)Lccn;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lbww;->M:Lccn;

    return-object v0
.end method

.method static synthetic j(Lbww;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lbww;->L:Ljava/lang/String;

    return-object v0
.end method

.method private static declared-synchronized j()V
    .locals 4

    .prologue
    .line 292
    const-class v1, Lbww;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lbww;->I:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 321
    :goto_0
    monitor-exit v1

    return-void

    .line 296
    :cond_0
    :try_start_1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lbww;->G:Landroid/os/Handler;

    .line 298
    invoke-static {}, Lbhv;->h()Landroid/content/Context;

    move-result-object v0

    .line 299
    const-string v2, "com.facebook.LikeActionController.CONTROLLER_STORE_KEY"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 303
    const-string v2, "OBJECT_SUFFIX"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lbww;->J:I

    .line 304
    new-instance v0, Lbon;

    sget-object v2, Lbww;->g:Ljava/lang/String;

    new-instance v3, Lbow;

    invoke-direct {v3}, Lbow;-><init>()V

    invoke-direct {v0, v2, v3}, Lbon;-><init>(Ljava/lang/String;Lbow;)V

    sput-object v0, Lbww;->C:Lbon;

    .line 306
    invoke-static {}, Lbww;->k()V

    .line 308
    sget-object v0, Lbnl;->Like:Lbnl;

    .line 309
    invoke-virtual {v0}, Lbnl;->toRequestCode()I

    move-result v0

    new-instance v2, Lbxc;

    invoke-direct {v2}, Lbxc;-><init>()V

    .line 308
    invoke-static {v0, v2}, Lbnj;->a(ILbnk;)V

    .line 320
    const/4 v0, 0x1

    sput-boolean v0, Lbww;->I:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 292
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static k()V
    .locals 1

    .prologue
    .line 344
    new-instance v0, Lbxe;

    invoke-direct {v0}, Lbxe;-><init>()V

    sput-object v0, Lbww;->K:Lbgz;

    .line 375
    return-void
.end method

.method static synthetic k(Lbww;)Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lbww;->N:Z

    return v0
.end method

.method private l()Lbla;
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Lbww;->Y:Lbla;

    if-nez v0, :cond_0

    .line 700
    invoke-static {}, Lbhv;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbla;->c(Landroid/content/Context;)Lbla;

    move-result-object v0

    iput-object v0, p0, Lbww;->Y:Lbla;

    .line 702
    :cond_0
    iget-object v0, p0, Lbww;->Y:Lbla;

    return-object v0
.end method

.method private static l(Lbww;)V
    .locals 4

    .prologue
    .line 404
    invoke-static {p0}, Lbww;->m(Lbww;)Ljava/lang/String;

    move-result-object v0

    .line 405
    iget-object v1, p0, Lbww;->L:Ljava/lang/String;

    invoke-static {v1}, Lbww;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 407
    invoke-static {v0}, Lbqq;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lbqq;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 408
    sget-object v2, Lbww;->F:Lbri;

    new-instance v3, Lbya;

    invoke-direct {v3, v1, v0}, Lbya;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lbri;->a(Ljava/lang/Runnable;)Lbrk;

    .line 411
    :cond_0
    return-void
.end method

.method private static m(Lbww;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 509
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 511
    :try_start_0
    const-string v1, "com.facebook.share.internal.LikeActionController.version"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 512
    const-string v1, "object_id"

    iget-object v2, p0, Lbww;->L:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 513
    const-string v1, "object_type"

    iget-object v2, p0, Lbww;->M:Lccn;

    invoke-virtual {v2}, Lccn;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 514
    const-string v1, "like_count_string_with_like"

    iget-object v2, p0, Lbww;->O:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 517
    const-string v1, "like_count_string_without_like"

    iget-object v2, p0, Lbww;->P:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 520
    const-string v1, "social_sentence_with_like"

    iget-object v2, p0, Lbww;->Q:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 523
    const-string v1, "social_sentence_without_like"

    iget-object v2, p0, Lbww;->R:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 526
    const-string v1, "is_object_liked"

    iget-boolean v2, p0, Lbww;->N:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 527
    const-string v1, "unlike_token"

    iget-object v2, p0, Lbww;->S:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 528
    iget-object v1, p0, Lbww;->X:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 529
    iget-object v1, p0, Lbww;->X:Landroid/os/Bundle;

    .line 530
    invoke-static {v1}, Lbna;->a(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v1

    .line 532
    if-eqz v1, :cond_0

    .line 533
    const-string v2, "facebook_dialog_analytics_bundle"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 538
    :catch_0
    move-exception v0

    .line 539
    sget-object v1, Lbww;->g:Ljava/lang/String;

    const-string v2, "Unable to serialize controller to JSON"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 540
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private m()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 950
    iput-object v0, p0, Lbww;->X:Landroid/os/Bundle;

    .line 952
    invoke-static {v0}, Lbww;->e(Ljava/lang/String;)V

    .line 953
    return-void
.end method

.method private n()Z
    .locals 2

    .prologue
    .line 968
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 971
    iget-boolean v1, p0, Lbww;->U:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lbww;->T:Ljava/lang/String;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 974
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->e()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 975
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->e()Ljava/util/Set;

    move-result-object v0

    const-string v1, "publish_actions"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 971
    :goto_0
    return v0

    .line 975
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private o()V
    .locals 1

    .prologue
    .line 1072
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 1073
    if-nez v0, :cond_0

    .line 1077
    invoke-direct {p0}, Lbww;->p()V

    .line 1128
    :goto_0
    return-void

    .line 1081
    :cond_0
    new-instance v0, Lbxj;

    invoke-direct {v0, p0}, Lbxj;-><init>(Lbww;)V

    invoke-direct {p0, v0}, Lbww;->a(Lbxy;)V

    goto :goto_0
.end method

.method private p()V
    .locals 4

    .prologue
    .line 1131
    new-instance v0, Lbyn;

    .line 1132
    invoke-static {}, Lbhv;->h()Landroid/content/Context;

    move-result-object v1

    .line 1133
    invoke-static {}, Lbhv;->l()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lbww;->L:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lbyn;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    invoke-virtual {v0}, Lbyn;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1187
    :goto_0
    return-void

    .line 1139
    :cond_0
    new-instance v1, Lbwy;

    invoke-direct {v1, p0}, Lbwy;-><init>(Lbww;)V

    .line 1186
    invoke-virtual {v0, v1}, Lbyn;->a(Lbql;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lbww;->L:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/app/Activity;Lbpa;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 674
    iget-boolean v0, p0, Lbww;->N:Z

    if-nez v0, :cond_1

    move v0, v1

    .line 676
    :goto_0
    invoke-direct {p0}, Lbww;->n()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 678
    invoke-direct {p0, v0}, Lbww;->b(Z)V

    .line 679
    iget-boolean v3, p0, Lbww;->W:Z

    if-eqz v3, :cond_2

    .line 683
    invoke-direct {p0}, Lbww;->l()Lbla;

    move-result-object v0

    const-string v1, "fb_like_control_did_undo_quickly"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p3}, Lbla;->a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 696
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 674
    goto :goto_0

    .line 687
    :cond_2
    invoke-direct {p0, v0, p3}, Lbww;->a(ZLandroid/os/Bundle;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 690
    if-nez v0, :cond_3

    :goto_2
    invoke-direct {p0, v1}, Lbww;->b(Z)V

    .line 691
    invoke-direct {p0, p1, p2, p3}, Lbww;->b(Landroid/app/Activity;Lbpa;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_3
    move v1, v2

    .line 690
    goto :goto_2

    .line 694
    :cond_4
    invoke-direct {p0, p1, p2, p3}, Lbww;->b(Landroid/app/Activity;Lbpa;Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 620
    iget-boolean v0, p0, Lbww;->N:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbww;->O:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lbww;->P:Ljava/lang/String;

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 629
    iget-boolean v0, p0, Lbww;->N:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbww;->Q:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lbww;->R:Ljava/lang/String;

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 638
    iget-boolean v0, p0, Lbww;->N:Z

    return v0
.end method

.method public e()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 647
    invoke-static {}, Lbyf;->e()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lbyf;->f()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 662
    :cond_0
    :goto_0
    return v0

    .line 650
    :cond_1
    iget-boolean v2, p0, Lbww;->U:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lbww;->M:Lccn;

    sget-object v3, Lccn;->PAGE:Lccn;

    if-ne v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 655
    goto :goto_0

    .line 661
    :cond_3
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v2

    .line 662
    if-eqz v2, :cond_4

    .line 663
    invoke-virtual {v2}, Lcom/facebook/AccessToken;->e()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 664
    invoke-virtual {v2}, Lcom/facebook/AccessToken;->e()Ljava/util/Set;

    move-result-object v2

    const-string v3, "publish_actions"

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method
