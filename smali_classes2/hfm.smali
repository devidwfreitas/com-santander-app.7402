.class Lhfm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhfz;


# instance fields
.field final synthetic a:Lhfl;


# direct methods
.method constructor <init>(Lhfl;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lhfm;->a:Lhfl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lhfm;->a:Lhfl;

    invoke-static {v0}, Lhfl;->b(Lhfl;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lhfm;->a:Lhfl;

    invoke-static {v0}, Lhfl;->c(Lhfl;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lhga;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 171
    iget-object v0, p0, Lhfm;->a:Lhfl;

    invoke-static {v0}, Lhfl;->d(Lhfl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhfp;

    .line 172
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 174
    :cond_0
    return-object v1
.end method
