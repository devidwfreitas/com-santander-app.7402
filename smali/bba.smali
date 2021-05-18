.class public Lbba;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbbu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbbu",
        "<",
        "Landroid/graphics/PointF;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lazg;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/graphics/PointF;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbba;->a:Ljava/util/List;

    .line 38
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lbba;->b:Landroid/graphics/PointF;

    .line 39
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Lawr;)V
    .locals 4

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbba;->a:Ljava/util/List;

    .line 42
    invoke-direct {p0, p1}, Lbba;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    check-cast p1, Lorg/json/JSONArray;

    .line 44
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 45
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 46
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 48
    invoke-static {}, Lbbb;->a()Lbbv;

    move-result-object v3

    .line 47
    invoke-static {v2, p2, v3}, Lazi;->a(Lorg/json/JSONObject;Lawr;Lbbv;)Lazg;

    move-result-object v2

    .line 49
    iget-object v3, p0, Lbba;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_0
    iget-object v0, p0, Lbba;->a:Ljava/util/List;

    invoke-static {v0}, Laxz;->a(Ljava/util/List;)V

    .line 55
    :goto_1
    return-void

    .line 53
    :cond_1
    check-cast p1, Lorg/json/JSONArray;

    invoke-virtual {p2}, Lawr;->p()F

    move-result v0

    invoke-static {p1, v0}, Lbes;->a(Lorg/json/JSONArray;F)Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lbba;->b:Landroid/graphics/PointF;

    goto :goto_1
.end method

.method public static a(Lorg/json/JSONObject;Lawr;)Lbbu;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lawr;",
            ")",
            "Lbbu",
            "<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    const-string v0, "k"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    new-instance v0, Lbba;

    const-string v1, "k"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lbba;-><init>(Ljava/lang/Object;Lawr;)V

    .line 27
    :goto_0
    return-object v0

    .line 25
    :cond_0
    new-instance v0, Lbbl;

    const-string v1, "x"

    .line 26
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1, p1}, Lbaq;->a(Lorg/json/JSONObject;Lawr;)Lbao;

    move-result-object v1

    const-string v2, "y"

    .line 27
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2, p1}, Lbaq;->a(Lorg/json/JSONObject;Lawr;)Lbao;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lbbl;-><init>(Lbao;Lbao;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 58
    instance-of v0, p1, Lorg/json/JSONArray;

    if-nez v0, :cond_0

    .line 63
    :goto_0
    return v1

    .line 62
    :cond_0
    check-cast p1, Lorg/json/JSONArray;

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 63
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


# virtual methods
.method public a()Layy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Layy",
            "<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    invoke-virtual {p0}, Lbba;->a_()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lazo;

    iget-object v1, p0, Lbba;->b:Landroid/graphics/PointF;

    invoke-direct {v0, v1}, Lazo;-><init>(Ljava/lang/Object;)V

    .line 72
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lazj;

    iget-object v1, p0, Lbba;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Lazj;-><init>(Ljava/util/List;)V

    goto :goto_0
.end method

.method public a_()Z
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lbba;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initialPoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbba;->b:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
