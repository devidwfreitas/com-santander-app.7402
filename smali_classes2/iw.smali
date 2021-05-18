.class public Liw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Ljava/lang/Integer;

.field protected b:Ljava/lang/String;

.field protected c:Lorg/json/JSONObject;

.field protected d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Liw;->a:Ljava/lang/Integer;

    .line 17
    iput-object v0, p0, Liw;->b:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Liw;->c:Lorg/json/JSONObject;

    .line 19
    iput-object v0, p0, Liw;->d:Ljava/util/Map;

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Liw;->a:Ljava/lang/Integer;

    .line 17
    iput-object v0, p0, Liw;->b:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Liw;->c:Lorg/json/JSONObject;

    .line 19
    iput-object v0, p0, Liw;->d:Ljava/util/Map;

    .line 24
    invoke-virtual {p0, p1}, Liw;->a(Ljava/lang/Integer;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Liw;->a:Ljava/lang/Integer;

    .line 17
    iput-object v0, p0, Liw;->b:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Liw;->c:Lorg/json/JSONObject;

    .line 19
    iput-object v0, p0, Liw;->d:Ljava/util/Map;

    .line 28
    invoke-virtual {p0, p1}, Liw;->a(Ljava/lang/Integer;)V

    .line 29
    invoke-virtual {p0, p2}, Liw;->a(Ljava/lang/String;)V

    .line 30
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Liw;->a:Ljava/lang/Integer;

    return-object v0
.end method

.method public a(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Liw;->a:Ljava/lang/Integer;

    .line 38
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Liw;->b:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 61
    iput-object p1, p0, Liw;->d:Ljava/util/Map;

    .line 62
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Liw;->c:Lorg/json/JSONObject;

    .line 54
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Liw;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Liw;->c:Lorg/json/JSONObject;

    return-object v0
.end method

.method public d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Liw;->d:Ljava/util/Map;

    return-object v0
.end method
