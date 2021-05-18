.class public Lbbf;
.super Lbby;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbby",
        "<",
        "Lbaj;",
        "Lbaj;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lbaj;

    invoke-direct {v0}, Lbaj;-><init>()V

    invoke-direct {p0, v0}, Lbby;-><init>(Ljava/lang/Object;)V

    .line 17
    return-void
.end method

.method synthetic constructor <init>(Lbbg;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lbbf;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/util/List;Lbaj;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Laxz",
            "<",
            "Lbaj;",
            ">;>;",
            "Lbaj;",
            ")V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lbby;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    .line 21
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
            "Lbaj;",
            "Lbaj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    invoke-virtual {p0}, Lbbf;->a_()Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lazo;

    iget-object v1, p0, Lbbf;->b:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lazo;-><init>(Ljava/lang/Object;)V

    .line 27
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lazl;

    iget-object v1, p0, Lbbf;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Lazl;-><init>(Ljava/util/List;)V

    goto :goto_0
.end method
