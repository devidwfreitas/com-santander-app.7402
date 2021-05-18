.class Licg;
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
.field final synthetic a:Licf;


# direct methods
.method constructor <init>(Licf;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Licg;->a:Licf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhzt;)V
    .locals 2

    .prologue
    .line 82
    if-eqz p1, :cond_0

    .line 83
    invoke-virtual {p1}, Lhzt;->d()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 84
    invoke-virtual {p1}, Lhzt;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
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

    .line 87
    iget-object v0, p0, Licg;->a:Licf;

    invoke-static {v0}, Licf;->a(Licf;)Lick;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lick;->a(ZLhzt;)V

    .line 91
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Licg;->a:Licf;

    invoke-static {v0}, Licf;->a(Licf;)Lick;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lick;->a(ZLhzt;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 79
    check-cast p1, Lhzt;

    invoke-virtual {p0, p1}, Licg;->a(Lhzt;)V

    return-void
.end method
