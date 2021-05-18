.class public final Lemx;
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
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lemx;->a:Lela;

    .line 41
    return-void
.end method


# virtual methods
.method public a(Lejm;Lepn;)Lekn;
    .locals 4
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
    .line 45
    invoke-virtual {p2}, Lepn;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 47
    invoke-virtual {p2}, Lepn;->getRawType()Ljava/lang/Class;

    move-result-object v1

    .line 48
    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 49
    const/4 v0, 0x0

    .line 58
    :goto_0
    return-object v0

    .line 52
    :cond_0
    invoke-static {v0, v1}, Lekw;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 53
    invoke-static {v1}, Lepn;->get(Ljava/lang/reflect/Type;)Lepn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lejm;->a(Lepn;)Lekn;

    move-result-object v2

    .line 54
    iget-object v0, p0, Lemx;->a:Lela;

    invoke-virtual {v0, p2}, Lela;->a(Lepn;)Leml;

    move-result-object v3

    .line 57
    new-instance v0, Lemy;

    invoke-direct {v0, p1, v1, v2, v3}, Lemy;-><init>(Lejm;Ljava/lang/reflect/Type;Lekn;Leml;)V

    goto :goto_0
.end method
