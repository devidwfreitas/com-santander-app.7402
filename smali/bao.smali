.class public Lbao;
.super Lbby;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbby",
        "<",
        "Ljava/lang/Float;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p0, v0}, Lbby;-><init>(Ljava/lang/Object;)V

    .line 17
    return-void
.end method

.method synthetic constructor <init>(Lbap;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lbao;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Ljava/lang/Float;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Laxz",
            "<",
            "Ljava/lang/Float;",
            ">;>;",
            "Ljava/lang/Float;",
            ")V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lbby;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    .line 21
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Ljava/lang/Float;Lbap;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lbao;-><init>(Ljava/util/List;Ljava/lang/Float;)V

    return-void
.end method


# virtual methods
.method public a()Layy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Layy",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    invoke-virtual {p0}, Lbao;->a_()Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lazo;

    iget-object v1, p0, Lbao;->b:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lazo;-><init>(Ljava/lang/Object;)V

    .line 28
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lazb;

    iget-object v1, p0, Lbao;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Lazb;-><init>(Ljava/util/List;)V

    goto :goto_0
.end method

.method public b()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lbao;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    return-object v0
.end method

.method public synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lbao;->b()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
