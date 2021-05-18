.class Lepd;
.super Lekn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lekn",
        "<TT1;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Class;

.field final synthetic b:Lepc;


# direct methods
.method constructor <init>(Lepc;Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 904
    iput-object p1, p0, Lepd;->b:Lepc;

    iput-object p2, p0, Lepd;->a:Ljava/lang/Class;

    invoke-direct {p0}, Lekn;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Leps;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leps;",
            "TT1;)V"
        }
    .end annotation

    .prologue
    .line 906
    iget-object v0, p0, Lepd;->b:Lepc;

    iget-object v0, v0, Lepc;->b:Lekn;

    invoke-virtual {v0, p1, p2}, Lekn;->a(Leps;Ljava/lang/Object;)V

    .line 907
    return-void
.end method

.method public b(Lepo;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lepo;",
            ")TT1;"
        }
    .end annotation

    .prologue
    .line 910
    iget-object v0, p0, Lepd;->b:Lepc;

    iget-object v0, v0, Lepc;->b:Lekn;

    invoke-virtual {v0, p1}, Lekn;->b(Lepo;)Ljava/lang/Object;

    move-result-object v0

    .line 911
    if-eqz v0, :cond_0

    iget-object v1, p0, Lepd;->a:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 912
    new-instance v1, Lekj;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lepd;->a:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 913
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lekj;-><init>(Ljava/lang/String;)V

    throw v1

    .line 915
    :cond_0
    return-object v0
.end method
