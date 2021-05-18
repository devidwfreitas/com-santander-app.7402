.class public Lgwx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lgta;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/Boolean;

.field private c:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgwx;->a:Ljava/util/ArrayList;

    .line 20
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lgwx;->b:Ljava/lang/Boolean;

    .line 21
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lgwx;->c:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public a(Lgwq;)Lgta;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lgwx;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgta;

    .line 50
    invoke-virtual {v0}, Lgta;->e()Lgwq;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 54
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lgta;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lgwx;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lgwx;->b:Ljava/lang/Boolean;

    .line 37
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lgta;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    iput-object p1, p0, Lgwx;->a:Ljava/util/ArrayList;

    .line 29
    return-void
.end method

.method public b()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lgwx;->b:Ljava/lang/Boolean;

    return-object v0
.end method

.method public b(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lgwx;->c:Ljava/lang/Boolean;

    .line 45
    return-void
.end method

.method public c()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lgwx;->c:Ljava/lang/Boolean;

    return-object v0
.end method
