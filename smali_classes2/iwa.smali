.class Liwa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Livz;


# direct methods
.method constructor <init>(Livz;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Liwa;->a:Livz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 44
    if-eqz p1, :cond_3

    instance-of v0, p1, Livf;

    if-eqz v0, :cond_3

    .line 46
    check-cast p1, Livf;

    .line 48
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Livf;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 50
    invoke-virtual {p1}, Livf;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    invoke-virtual {p1}, Livf;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Livf;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    .line 52
    iget-object v0, p0, Liwa;->a:Livz;

    invoke-static {v0}, Livz;->a(Livz;)Ljal;

    move-result-object v0

    invoke-virtual {p1}, Livf;->c()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljal;->a(Ljava/util/List;)V

    .line 65
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Liwa;->a:Livz;

    invoke-static {v0}, Livz;->a(Livz;)Ljal;

    move-result-object v0

    invoke-interface {v0}, Ljal;->b()V

    goto :goto_0

    .line 57
    :cond_1
    iget-object v0, p0, Liwa;->a:Livz;

    invoke-static {v0}, Livz;->a(Livz;)Ljal;

    move-result-object v0

    const-string v1, "falhaComunicacao|"

    invoke-virtual {p1}, Livf;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljal;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :cond_2
    iget-object v0, p0, Liwa;->a:Livz;

    invoke-static {v0}, Livz;->a(Livz;)Ljal;

    move-result-object v0

    const-string v1, "falhaComunicacao|"

    const-string v2, "s0002"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljal;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :cond_3
    iget-object v0, p0, Liwa;->a:Livz;

    invoke-static {v0}, Livz;->a(Livz;)Ljal;

    move-result-object v0

    const-string v1, "falhaComunicacao|"

    const-string v2, "s0001"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljal;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
