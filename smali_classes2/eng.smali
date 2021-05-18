.class public final Leng;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lekp;


# instance fields
.field final a:Z

.field private final b:Lela;


# direct methods
.method public constructor <init>(Lela;Z)V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Leng;->b:Lela;

    .line 112
    iput-boolean p2, p0, Leng;->a:Z

    .line 113
    return-void
.end method

.method private a(Lejm;Ljava/lang/reflect/Type;)Lekn;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lejm;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lekn",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 140
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_0

    const-class v0, Ljava/lang/Boolean;

    if-ne p2, v0, :cond_1

    :cond_0
    sget-object v0, Leny;->f:Lekn;

    :goto_0
    return-object v0

    .line 142
    :cond_1
    invoke-static {p2}, Lepn;->get(Ljava/lang/reflect/Type;)Lepn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lejm;->a(Lepn;)Lekn;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(Lejm;Lepn;)Lekn;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lejm;",
            "Lepn",
            "<TT;>;)",
            "Lekn",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 116
    invoke-virtual {p2}, Lepn;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 118
    invoke-virtual {p2}, Lepn;->getRawType()Ljava/lang/Class;

    move-result-object v1

    .line 119
    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 120
    const/4 v0, 0x0

    .line 133
    :goto_0
    return-object v0

    .line 123
    :cond_0
    invoke-static {v0}, Lekw;->e(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    .line 124
    invoke-static {v0, v1}, Lekw;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;)[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 125
    aget-object v0, v1, v3

    invoke-direct {p0, p1, v0}, Leng;->a(Lejm;Ljava/lang/reflect/Type;)Lekn;

    move-result-object v4

    .line 126
    aget-object v0, v1, v5

    invoke-static {v0}, Lepn;->get(Ljava/lang/reflect/Type;)Lepn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lejm;->a(Lepn;)Lekn;

    move-result-object v6

    .line 127
    iget-object v0, p0, Leng;->b:Lela;

    invoke-virtual {v0, p2}, Lela;->a(Lepn;)Leml;

    move-result-object v7

    .line 131
    new-instance v0, Lenh;

    aget-object v3, v1, v3

    aget-object v5, v1, v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lenh;-><init>(Leng;Lejm;Ljava/lang/reflect/Type;Lekn;Ljava/lang/reflect/Type;Lekn;Leml;)V

    goto :goto_0
.end method
