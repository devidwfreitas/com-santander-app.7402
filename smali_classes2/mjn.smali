.class Lmjn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Lmjk;


# direct methods
.method constructor <init>(Lmjk;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lmjn;->a:Lmjk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 143
    check-cast p1, Lmjf;

    .line 144
    if-eqz p1, :cond_1

    .line 145
    invoke-virtual {p1}, Lmjf;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lmjf;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lmjn;->a:Lmjk;

    invoke-static {v0}, Lmjk;->a(Lmjk;)Lmjj;

    move-result-object v0

    invoke-interface {v0, p1}, Lmjj;->a(Lmjf;)V

    .line 153
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lmjn;->a:Lmjk;

    invoke-static {v0}, Lmjk;->a(Lmjk;)Lmjj;

    move-result-object v0

    invoke-interface {v0, p1}, Lmjj;->b(Lmjf;)V

    goto :goto_0

    .line 152
    :cond_1
    iget-object v0, p0, Lmjn;->a:Lmjk;

    invoke-static {v0}, Lmjk;->a(Lmjk;)Lmjj;

    move-result-object v0

    invoke-interface {v0, p1}, Lmjj;->b(Lmjf;)V

    goto :goto_0
.end method
