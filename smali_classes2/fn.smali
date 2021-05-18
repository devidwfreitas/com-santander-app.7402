.class Lfn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lfa",
        "<TTResult;",
        "Lfd",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfd;


# direct methods
.method constructor <init>(Lfd;)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lfn;->a:Lfd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lfd;)Lfd;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfd",
            "<TTResult;>;)",
            "Lfd",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 303
    invoke-virtual {p1}, Lfd;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    invoke-static {}, Lfd;->i()Lfd;

    move-result-object v0

    .line 309
    :goto_0
    return-object v0

    .line 306
    :cond_0
    invoke-virtual {p1}, Lfd;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 307
    invoke-virtual {p1}, Lfd;->g()Ljava/lang/Exception;

    move-result-object v0

    invoke-static {v0}, Lfd;->a(Ljava/lang/Exception;)Lfd;

    move-result-object v0

    goto :goto_0

    .line 309
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lfd;->a(Ljava/lang/Object;)Lfd;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic b(Lfd;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 300
    invoke-virtual {p0, p1}, Lfn;->a(Lfd;)Lfd;

    move-result-object v0

    return-object v0
.end method
