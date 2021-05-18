.class Ljeu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljep;


# direct methods
.method constructor <init>(Ljep;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Ljeu;->b:Ljep;

    iput-object p2, p0, Ljeu;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 123
    check-cast p1, Ljava/lang/String;

    .line 124
    if-eqz p1, :cond_1

    .line 125
    const-string v0, "%PDF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Ljeu;->b:Ljep;

    invoke-static {v0}, Ljep;->a(Ljep;)Ljeo;

    move-result-object v0

    iget-object v1, p0, Ljeu;->b:Ljep;

    iget-object v2, p0, Ljeu;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Ljep;->a(Ljep;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljeo;->a(Ljava/lang/String;)V

    .line 131
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Ljeu;->b:Ljep;

    invoke-static {v0}, Ljep;->a(Ljep;)Ljeo;

    move-result-object v0

    invoke-interface {v0}, Ljeo;->a()V

    goto :goto_0

    .line 130
    :cond_1
    iget-object v0, p0, Ljeu;->b:Ljep;

    invoke-static {v0}, Ljep;->a(Ljep;)Ljeo;

    move-result-object v0

    invoke-interface {v0}, Ljeo;->a()V

    goto :goto_0
.end method
