.class public Lbbw;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lorg/json/JSONObject;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final b:F

.field private final c:Lawr;

.field private final d:Lbbv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbbv",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/json/JSONObject;FLawr;Lbbv;)V
    .locals 0
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "F",
            "Lawr;",
            "Lbbv",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lbbw;->a:Lorg/json/JSONObject;

    .line 23
    iput p2, p0, Lbbw;->b:F

    .line 24
    iput-object p3, p0, Lbbw;->c:Lawr;

    .line 25
    iput-object p4, p0, Lbbw;->d:Lbbv;

    .line 26
    return-void
.end method

.method static a(Lorg/json/JSONObject;FLawr;Lbbv;)Lbbw;
    .locals 1
    .param p0    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONObject;",
            "F",
            "Lawr;",
            "Lbbv",
            "<TT;>;)",
            "Lbbw",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 30
    new-instance v0, Lbbw;

    invoke-direct {v0, p0, p1, p2, p3}, Lbbw;-><init>(Lorg/json/JSONObject;FLawr;Lbbv;)V

    return-object v0
.end method

.method private a(Ljava/util/List;)Ljava/lang/Object;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Laxz",
            "<TT;>;>;)TT;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lbbw;->a:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    .line 54
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxz;

    iget-object v0, v0, Laxz;->a:Ljava/lang/Object;

    .line 60
    :goto_0
    return-object v0

    .line 57
    :cond_0
    iget-object v0, p0, Lbbw;->d:Lbbv;

    iget-object v1, p0, Lbbw;->a:Lorg/json/JSONObject;

    const-string v2, "k"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lbbw;->b:F

    invoke-interface {v0, v1, v2}, Lbbv;->b(Ljava/lang/Object;F)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 60
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 65
    instance-of v0, p0, Lorg/json/JSONArray;

    if-nez v0, :cond_0

    .line 69
    :goto_0
    return v1

    .line 68
    :cond_0
    check-cast p0, Lorg/json/JSONArray;

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 69
    instance-of v2, v0, Lorg/json/JSONObject;

    if-eqz v2, :cond_1

    check-cast v0, Lorg/json/JSONObject;

    const-string v2, "t"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private b()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Laxz",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lbbw;->a:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    .line 41
    iget-object v0, p0, Lbbw;->a:Lorg/json/JSONObject;

    const-string v1, "k"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 42
    invoke-static {v0}, Lbbw;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    check-cast v0, Lorg/json/JSONArray;

    iget-object v1, p0, Lbbw;->c:Lawr;

    iget v2, p0, Lbbw;->b:F

    iget-object v3, p0, Lbbw;->d:Lbbv;

    invoke-static {v0, v1, v2, v3}, Laya;->a(Lorg/json/JSONArray;Lawr;FLbbv;)Ljava/util/List;

    move-result-object v0

    .line 48
    :goto_0
    return-object v0

    .line 45
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 48
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method a()Lbbx;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbbx",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Lbbw;->b()Ljava/util/List;

    move-result-object v0

    .line 35
    invoke-direct {p0, v0}, Lbbw;->a(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    .line 36
    new-instance v2, Lbbx;

    invoke-direct {v2, v0, v1}, Lbbx;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    return-object v2
.end method
