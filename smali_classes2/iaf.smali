.class Liaf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Liae;


# direct methods
.method constructor <init>(Liae;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Liaf;->a:Liae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 31
    check-cast p1, Lhzm;

    .line 32
    if-eqz p1, :cond_2

    .line 34
    invoke-virtual {p1}, Lhzm;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 36
    invoke-virtual {p1}, Lhzm;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Liaf;->a:Liae;

    invoke-static {v0}, Liae;->a(Liae;)Liad;

    move-result-object v0

    invoke-interface {v0, p1}, Liad;->a(Lhzm;)V

    .line 55
    :goto_0
    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Liaf;->a:Liae;

    invoke-static {v0}, Liae;->a(Liae;)Liad;

    move-result-object v0

    invoke-interface {v0, p1}, Liad;->b(Lhzm;)V

    goto :goto_0

    .line 47
    :cond_1
    iget-object v0, p0, Liaf;->a:Liae;

    invoke-static {v0}, Liae;->a(Liae;)Liad;

    move-result-object v0

    invoke-interface {v0, p1}, Liad;->b(Lhzm;)V

    goto :goto_0

    .line 52
    :cond_2
    iget-object v0, p0, Liaf;->a:Liae;

    invoke-static {v0}, Liae;->a(Liae;)Liad;

    move-result-object v0

    invoke-interface {v0, p1}, Liad;->b(Lhzm;)V

    goto :goto_0
.end method
