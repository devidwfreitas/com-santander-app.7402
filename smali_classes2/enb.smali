.class public final Lenb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lekp;


# instance fields
.field private final a:Lela;


# direct methods
.method public constructor <init>(Lela;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lenb;->a:Lela;

    .line 39
    return-void
.end method


# virtual methods
.method public a(Lejm;Lepn;)Lekn;
    .locals 2
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
    .line 44
    invoke-virtual {p2}, Lepn;->getRawType()Ljava/lang/Class;

    move-result-object v0

    .line 45
    const-class v1, Lekr;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lekr;

    .line 46
    if-nez v0, :cond_0

    .line 47
    const/4 v0, 0x0

    .line 49
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lenb;->a:Lela;

    invoke-virtual {p0, v1, p1, p2, v0}, Lenb;->a(Lela;Lejm;Lepn;Lekr;)Lekn;

    move-result-object v0

    goto :goto_0
.end method

.method a(Lela;Lejm;Lepn;Lekr;)Lekn;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lela;",
            "Lejm;",
            "Lepn",
            "<*>;",
            "Lekr;",
            ")",
            "Lekn",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 55
    invoke-interface {p4}, Lekr;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lepn;->get(Ljava/lang/Class;)Lepn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lela;->a(Lepn;)Leml;

    move-result-object v0

    invoke-interface {v0}, Leml;->a()Ljava/lang/Object;

    move-result-object v0

    .line 58
    instance-of v1, v0, Lekn;

    if-eqz v1, :cond_1

    .line 59
    check-cast v0, Lekn;

    .line 76
    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {p4}, Lekr;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    invoke-virtual {v0}, Lekn;->a()Lekn;

    move-result-object v0

    .line 80
    :cond_0
    return-object v0

    .line 60
    :cond_1
    instance-of v1, v0, Lekp;

    if-eqz v1, :cond_2

    .line 61
    check-cast v0, Lekp;

    invoke-interface {v0, p2, p3}, Lekp;->a(Lejm;Lepn;)Lekn;

    move-result-object v0

    goto :goto_0

    .line 62
    :cond_2
    instance-of v1, v0, Lekh;

    if-nez v1, :cond_3

    instance-of v1, v0, Lejy;

    if-eqz v1, :cond_6

    .line 63
    :cond_3
    instance-of v1, v0, Lekh;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Lekh;

    .line 66
    :goto_1
    instance-of v2, v0, Lejy;

    if-eqz v2, :cond_5

    check-cast v0, Lejy;

    move-object v2, v0

    .line 69
    :goto_2
    new-instance v0, Lent;

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lent;-><init>(Lekh;Lejy;Lejm;Lepn;Lekp;)V

    goto :goto_0

    :cond_4
    move-object v1, v5

    .line 63
    goto :goto_1

    :cond_5
    move-object v2, v5

    .line 66
    goto :goto_2

    .line 71
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "@JsonAdapter value must be TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer reference."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
