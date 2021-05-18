.class Livx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Livt;


# direct methods
.method constructor <init>(Livt;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Livx;->a:Livt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 169
    check-cast p1, Lftz;

    .line 171
    new-instance v0, Livl;

    invoke-direct {v0}, Livl;-><init>()V

    .line 173
    invoke-virtual {v0, p1}, Livl;->a(Lftz;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 174
    invoke-virtual {v0, p1}, Livl;->b(Lftz;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    iget-object v0, p0, Livx;->a:Livt;

    invoke-static {v0}, Livt;->c(Livt;)Ljaj;

    move-result-object v0

    invoke-virtual {p1}, Lftz;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljaj;->a(Ljava/lang/String;Z)V

    .line 189
    :goto_0
    return-void

    .line 177
    :cond_0
    invoke-virtual {v0, p1}, Livl;->c(Lftz;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 178
    iget-object v0, p0, Livx;->a:Livt;

    invoke-static {v0}, Livt;->c(Livt;)Ljaj;

    move-result-object v0

    invoke-virtual {p1}, Lftz;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljaj;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 180
    :cond_1
    invoke-virtual {v0, p1}, Livl;->d(Lftz;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 181
    iget-object v0, p0, Livx;->a:Livt;

    invoke-static {v0}, Livt;->c(Livt;)Ljaj;

    move-result-object v0

    invoke-virtual {p1}, Lftz;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljaj;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 184
    :cond_2
    iget-object v0, p0, Livx;->a:Livt;

    invoke-static {v0}, Livt;->c(Livt;)Ljaj;

    move-result-object v0

    invoke-virtual {p1}, Lftz;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljaj;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 187
    :cond_3
    iget-object v0, p0, Livx;->a:Livt;

    invoke-static {v0}, Livt;->c(Livt;)Ljaj;

    move-result-object v0

    invoke-interface {v0}, Ljaj;->f()V

    goto :goto_0
.end method
