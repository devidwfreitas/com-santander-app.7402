.class Liwb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgyx;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Livz;


# direct methods
.method constructor <init>(Livz;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Liwb;->b:Livz;

    iput-object p2, p0, Liwb;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 82
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    :cond_0
    iget-object v0, p0, Liwb;->b:Livz;

    invoke-static {v0}, Livz;->a(Livz;)Ljal;

    move-result-object v0

    const-string v1, "falhaComunicacao|"

    const-string v2, "d0000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljal;->a(Ljava/lang/String;)V

    .line 93
    :goto_0
    return-void

    .line 85
    :cond_1
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    iget-object v0, p0, Liwb;->b:Livz;

    invoke-static {v0}, Livz;->a(Livz;)Ljal;

    move-result-object v0

    iget-object v1, p0, Liwb;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljal;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 87
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 88
    iget-object v0, p0, Liwb;->b:Livz;

    invoke-static {v0}, Livz;->a(Livz;)Ljal;

    move-result-object v0

    const-string v1, "falhaComunicacao|"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljal;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :cond_3
    iget-object v0, p0, Liwb;->b:Livz;

    invoke-static {v0}, Livz;->a(Livz;)Ljal;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljal;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
