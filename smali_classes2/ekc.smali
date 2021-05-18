.class public final Lekc;
.super Lejz;
.source "SourceFile"


# instance fields
.field private final a:Lemd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lemd",
            "<",
            "Ljava/lang/String;",
            "Lejz;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lejz;-><init>()V

    .line 33
    new-instance v0, Lemd;

    invoke-direct {v0}, Lemd;-><init>()V

    iput-object v0, p0, Lekc;->a:Lemd;

    return-void
.end method

.method private a(Ljava/lang/Object;)Lejz;
    .locals 1

    .prologue
    .line 122
    if-nez p1, :cond_0

    sget-object v0, Lekb;->a:Lekb;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lekf;

    invoke-direct {v0, p1}, Lekf;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lejz;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lekc;->a:Lemd;

    invoke-virtual {v0, p1}, Lemd;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lejz;

    return-object v0
.end method

.method a()Lekc;
    .locals 4

    .prologue
    .line 38
    new-instance v2, Lekc;

    invoke-direct {v2}, Lekc;-><init>()V

    .line 39
    iget-object v0, p0, Lekc;->a:Lemd;

    invoke-virtual {v0}, Lemd;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 40
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lejz;

    invoke-virtual {v0}, Lejz;->o()Lejz;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lekc;->a(Ljava/lang/String;Lejz;)V

    goto :goto_0

    .line 42
    :cond_0
    return-object v2
.end method

.method public a(Ljava/lang/String;Lejz;)V
    .locals 1

    .prologue
    .line 54
    if-nez p2, :cond_0

    .line 55
    sget-object p2, Lekb;->a:Lekb;

    .line 57
    :cond_0
    iget-object v0, p0, Lekc;->a:Lemd;

    invoke-virtual {v0, p1, p2}, Lemd;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0, p2}, Lekc;->a(Ljava/lang/Object;)Lejz;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lekc;->a(Ljava/lang/String;Lejz;)V

    .line 102
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Character;)V
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0, p2}, Lekc;->a(Ljava/lang/Object;)Lejz;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lekc;->a(Ljava/lang/String;Lejz;)V

    .line 113
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0, p2}, Lekc;->a(Ljava/lang/Object;)Lejz;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lekc;->a(Ljava/lang/String;Lejz;)V

    .line 91
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0, p2}, Lekc;->a(Ljava/lang/Object;)Lejz;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lekc;->a(Ljava/lang/String;Lejz;)V

    .line 80
    return-void
.end method

.method public b()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lejz;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lekc;->a:Lemd;

    invoke-virtual {v0}, Lemd;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lekc;->a:Lemd;

    invoke-virtual {v0, p1}, Lemd;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;)Lejz;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lekc;->a:Lemd;

    invoke-virtual {v0, p1}, Lemd;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lejz;

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lekf;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lekc;->a:Lemd;

    invoke-virtual {v0, p1}, Lemd;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lekf;

    return-object v0
.end method

.method public e(Ljava/lang/String;)Lejw;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lekc;->a:Lemd;

    invoke-virtual {v0, p1}, Lemd;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lejw;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 196
    if-eq p1, p0, :cond_0

    instance-of v0, p1, Lekc;

    if-eqz v0, :cond_1

    check-cast p1, Lekc;

    iget-object v0, p1, Lekc;->a:Lemd;

    iget-object v1, p0, Lekc;->a:Lemd;

    .line 197
    invoke-virtual {v0, v1}, Lemd;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 196
    :goto_0
    return v0

    .line 197
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f(Ljava/lang/String;)Lekc;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lekc;->a:Lemd;

    invoke-virtual {v0, p1}, Lemd;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lekc;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lekc;->a:Lemd;

    invoke-virtual {v0}, Lemd;->hashCode()I

    move-result v0

    return v0
.end method

.method synthetic o()Lejz;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lekc;->a()Lekc;

    move-result-object v0

    return-object v0
.end method

.method public y()I
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lekc;->a:Lemd;

    invoke-virtual {v0}, Lemd;->size()I

    move-result v0

    return v0
.end method
