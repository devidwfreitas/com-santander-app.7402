.class final Lemy;
.super Lekn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lekn",
        "<",
        "Ljava/util/Collection",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lekn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lekn",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final b:Leml;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leml",
            "<+",
            "Ljava/util/Collection",
            "<TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lejm;Ljava/lang/reflect/Type;Lekn;Leml;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lejm;",
            "Ljava/lang/reflect/Type;",
            "Lekn",
            "<TE;>;",
            "Leml",
            "<+",
            "Ljava/util/Collection",
            "<TE;>;>;)V"
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0}, Lekn;-><init>()V

    .line 68
    new-instance v0, Lenx;

    invoke-direct {v0, p1, p3, p2}, Lenx;-><init>(Lejm;Lekn;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lemy;->a:Lekn;

    .line 70
    iput-object p4, p0, Lemy;->b:Leml;

    .line 71
    return-void
.end method


# virtual methods
.method public a(Lepo;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lepo;",
            ")",
            "Ljava/util/Collection",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 74
    invoke-virtual {p1}, Lepo;->f()Lepr;

    move-result-object v0

    sget-object v1, Lepr;->NULL:Lepr;

    if-ne v0, v1, :cond_0

    .line 75
    invoke-virtual {p1}, Lepo;->j()V

    .line 76
    const/4 v0, 0x0

    .line 86
    :goto_0
    return-object v0

    .line 79
    :cond_0
    iget-object v0, p0, Lemy;->b:Leml;

    invoke-interface {v0}, Leml;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 80
    invoke-virtual {p1}, Lepo;->a()V

    .line 81
    :goto_1
    invoke-virtual {p1}, Lepo;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    iget-object v1, p0, Lemy;->a:Lekn;

    invoke-virtual {v1, p1}, Lekn;->b(Lepo;)Ljava/lang/Object;

    move-result-object v1

    .line 83
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 85
    :cond_1
    invoke-virtual {p1}, Lepo;->b()V

    goto :goto_0
.end method

.method public bridge synthetic a(Leps;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 61
    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lemy;->a(Leps;Ljava/util/Collection;)V

    return-void
.end method

.method public a(Leps;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leps;",
            "Ljava/util/Collection",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 90
    if-nez p2, :cond_0

    .line 91
    invoke-virtual {p1}, Leps;->f()Leps;

    .line 100
    :goto_0
    return-void

    .line 95
    :cond_0
    invoke-virtual {p1}, Leps;->b()Leps;

    .line 96
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 97
    iget-object v2, p0, Lemy;->a:Lekn;

    invoke-virtual {v2, p1, v1}, Lekn;->a(Leps;Ljava/lang/Object;)V

    goto :goto_1

    .line 99
    :cond_1
    invoke-virtual {p1}, Leps;->c()Leps;

    goto :goto_0
.end method

.method public synthetic b(Lepo;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lemy;->a(Lepo;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
