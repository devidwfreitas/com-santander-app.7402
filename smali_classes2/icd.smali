.class Licd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lgkw",
        "<",
        "Lhzt;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Licc;


# direct methods
.method constructor <init>(Licc;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Licd;->a:Licc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhzt;)V
    .locals 3

    .prologue
    .line 46
    if-eqz p1, :cond_0

    .line 47
    invoke-virtual {p1}, Lhzt;->d()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 48
    invoke-virtual {p1}, Lhzt;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p1}, Lhzt;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Licd;->a:Licc;

    invoke-static {v0}, Licc;->a(Licc;)Licj;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Licj;->a(ZLhzt;)V

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Licd;->a:Licc;

    invoke-static {v0}, Licc;->a(Licc;)Licj;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Licj;->a(ZLhzt;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 43
    check-cast p1, Lhzt;

    invoke-virtual {p0, p1}, Licd;->a(Lhzt;)V

    return-void
.end method
