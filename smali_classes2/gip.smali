.class Lgip;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Lgio;


# direct methods
.method constructor <init>(Lgio;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lgip;->a:Lgio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lgip;->a:Lgio;

    invoke-static {v0}, Lgio;->a(Lgio;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 81
    check-cast p1, Lghz;

    .line 82
    invoke-virtual {p1}, Lghz;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lghz;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "0"

    invoke-virtual {p1}, Lghz;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 83
    :cond_0
    iget-object v0, p0, Lgip;->a:Lgio;

    invoke-static {v0}, Lgio;->b(Lgio;)Lgin;

    move-result-object v0

    invoke-interface {v0, p1}, Lgin;->b(Lghz;)V

    .line 94
    :goto_0
    return-void

    .line 85
    :cond_1
    iget-object v0, p0, Lgip;->a:Lgio;

    invoke-static {v0}, Lgio;->b(Lgio;)Lgin;

    move-result-object v0

    invoke-interface {v0, p1}, Lgin;->a(Lghz;)V

    goto :goto_0

    .line 87
    :cond_2
    check-cast p1, Lgia;

    .line 88
    invoke-virtual {p1}, Lgia;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "OK"

    invoke-virtual {p1}, Lgia;->getConfirmacao()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 89
    iget-object v0, p0, Lgip;->a:Lgio;

    invoke-static {v0}, Lgio;->b(Lgio;)Lgin;

    move-result-object v0

    invoke-interface {v0, p1}, Lgin;->b(Lgia;)V

    goto :goto_0

    .line 91
    :cond_3
    iget-object v0, p0, Lgip;->a:Lgio;

    invoke-static {v0}, Lgio;->b(Lgio;)Lgin;

    move-result-object v0

    invoke-interface {v0, p1}, Lgin;->a(Lgia;)V

    goto :goto_0
.end method
