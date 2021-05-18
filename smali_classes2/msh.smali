.class Lmsh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmvx;


# instance fields
.field final synthetic a:Lmsd;

.field final synthetic b:Lmse;


# direct methods
.method constructor <init>(Lmse;Lmsd;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lmsh;->b:Lmse;

    iput-object p2, p0, Lmsh;->a:Lmsd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lmsh;->a:Lmsd;

    invoke-interface {v0, p1}, Lmsd;->a(Ljava/lang/Exception;)V

    .line 92
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmro;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lmsh;->b:Lmse;

    invoke-static {v0, p1}, Lmse;->a(Lmse;Ljava/util/List;)Ljava/util/List;

    .line 86
    iget-object v0, p0, Lmsh;->b:Lmse;

    iget-object v1, p0, Lmsh;->a:Lmsd;

    invoke-static {v0, v1}, Lmse;->b(Lmse;Lmsd;)V

    .line 87
    return-void
.end method
