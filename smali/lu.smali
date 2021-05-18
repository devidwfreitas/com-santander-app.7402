.class public Llu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lll;
    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "cart"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lll;

    invoke-direct {v0}, Lll;-><init>()V

    iput-object v0, p0, Llu;->a:Lll;

    .line 35
    iget-object v0, p0, Llu;->a:Lll;

    invoke-virtual {v0, p1}, Lll;->a(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Llu;->a:Lll;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lll;->a(Ljava/util/List;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lace;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lll;

    invoke-direct {v0}, Lll;-><init>()V

    iput-object v0, p0, Llu;->a:Lll;

    .line 22
    iget-object v0, p0, Llu;->a:Lll;

    invoke-virtual {v0, p1}, Lll;->a(Ljava/lang/String;)V

    .line 24
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lace;

    .line 26
    new-instance v3, Lln;

    invoke-direct {v3, v0}, Lln;-><init>(Lace;)V

    .line 27
    invoke-virtual {v3}, Lln;->f()V

    .line 28
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 30
    :cond_0
    iget-object v0, p0, Llu;->a:Lll;

    invoke-virtual {v0, v1}, Lll;->a(Ljava/util/List;)V

    .line 31
    return-void
.end method
