.class public Lbnm;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lbnp;Lbnt;Lbns;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lbnp",
            "<TT;>;",
            "Lbnt;",
            "Lbns;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    new-instance v0, Lbpw;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lbpw;-><init>(Ljava/lang/Object;)V

    .line 39
    new-instance v1, Lbpw;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lbpw;-><init>(Ljava/lang/Object;)V

    .line 40
    new-instance v2, Lbnn;

    invoke-direct {v2, v0, v1, p2}, Lbnn;-><init>(Lbpw;Lbpw;Lbns;)V

    .line 61
    invoke-interface {p0}, Lbnp;->a()Ljava/util/Iterator;

    move-result-object v0

    .line 62
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 63
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 64
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 67
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 68
    invoke-interface {p0, v0}, Lbnp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 69
    new-instance v5, Lbno;

    invoke-direct {v5, p0, v0, v2}, Lbno;-><init>(Lbnp;Ljava/lang/Object;Lbns;)V

    .line 82
    iget-object v0, v1, Lbpw;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    iget-object v0, v1, Lbpw;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lbpw;->a:Ljava/lang/Object;

    .line 83
    invoke-interface {p1, v4, v5}, Lbnt;->a(Ljava/lang/Object;Lbnr;)V

    goto :goto_1

    .line 85
    :cond_1
    invoke-interface {v2}, Lbns;->a()V

    .line 86
    return-void
.end method
