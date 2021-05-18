.class Lkdn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Lkdm;


# direct methods
.method constructor <init>(Lkdm;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lkdn;->a:Lkdm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 31
    check-cast p1, Lkcw;

    .line 33
    if-eqz p1, :cond_2

    .line 34
    invoke-virtual {p1}, Lkcw;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 35
    invoke-virtual {p1}, Lkcw;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lkdn;->a:Lkdm;

    invoke-static {v0}, Lkdm;->a(Lkdm;)Lkdp;

    move-result-object v0

    invoke-interface {v0, p1}, Lkdp;->a(Lkcw;)V

    .line 46
    :goto_0
    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lkdn;->a:Lkdm;

    invoke-static {v0}, Lkdm;->a(Lkdm;)Lkdp;

    move-result-object v0

    invoke-interface {v0, p1}, Lkdp;->b(Lkcw;)V

    goto :goto_0

    .line 41
    :cond_1
    iget-object v0, p0, Lkdn;->a:Lkdm;

    invoke-static {v0}, Lkdm;->a(Lkdm;)Lkdp;

    move-result-object v0

    invoke-interface {v0, p1}, Lkdp;->b(Lkcw;)V

    goto :goto_0

    .line 44
    :cond_2
    iget-object v0, p0, Lkdn;->a:Lkdm;

    invoke-static {v0}, Lkdm;->a(Lkdm;)Lkdp;

    move-result-object v0

    invoke-interface {v0, p1}, Lkdp;->b(Lkcw;)V

    goto :goto_0
.end method
