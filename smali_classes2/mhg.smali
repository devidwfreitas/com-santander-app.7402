.class public Lmhg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "saved_insurance_family_list"

.field public static final b:Ljava/lang/String; = "saved_coverage_list"

.field public static final c:Ljava/lang/String; = "faq-cache-category-key"

.field public static final d:Ljava/lang/String; = "faq-cache-category-key"

.field public static final e:Ljava/lang/String; = "faq-cache-category-search-key"

.field public static final f:Ljava/lang/String; = "faq-cache-category-key"

.field public static final g:Ljava/lang/String; = "audio-base64-key"

.field public static final h:Ljava/lang/String; = "bank-item-key"

.field private static final i:Ljava/lang/String; = "NO_VALUE"

.field private static k:Lmhg;


# instance fields
.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lmhg;

    invoke-direct {v0}, Lmhg;-><init>()V

    sput-object v0, Lmhg;->k:Lmhg;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmhg;->j:Ljava/util/Map;

    .line 34
    return-void
.end method

.method public static a()Lmhg;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lmhg;->k:Lmhg;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;F)F
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lmhg;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 43
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p2

    :cond_0
    return p2
.end method

.method public a(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lmhg;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 48
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :cond_0
    return p2
.end method

.method public a(Ljava/lang/String;J)J
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lmhg;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 53
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    :cond_0
    return-wide p2
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lmhg;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 58
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "NO_VALUE"

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lmhg;->j:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    return-void
.end method

.method public a(Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lmhg;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 38
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    :cond_0
    return p2
.end method

.method public b()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lmhg;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 87
    return-void
.end method

.method public b(Ljava/lang/String;F)V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lmhg;->j:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-void
.end method

.method public b(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lmhg;->j:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    return-void
.end method

.method public b(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lmhg;->j:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    return-void
.end method

.method public b(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lmhg;->j:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lmhg;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lmhg;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    return-void
.end method
