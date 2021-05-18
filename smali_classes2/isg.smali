.class Lisg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lito;


# instance fields
.field final synthetic a:Lise;


# direct methods
.method constructor <init>(Lise;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lisg;->a:Lise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lisg;->a:Lise;

    invoke-virtual {v0}, Lise;->d()V

    .line 179
    return-void
.end method

.method public a(Liry;)V
    .locals 2

    .prologue
    .line 163
    invoke-virtual {p1}, Liry;->c()I

    move-result v0

    .line 164
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 165
    iget-object v1, p0, Lisg;->a:Lise;

    invoke-static {v1}, Lise;->b(Lise;)V

    .line 166
    iget-object v1, p0, Lisg;->a:Lise;

    invoke-static {v1}, Lise;->c(Lise;)Litf;

    move-result-object v1

    invoke-interface {v1, v0}, Litf;->b(I)V

    .line 174
    :goto_0
    return-void

    .line 168
    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lisg;->a:Lise;

    .line 169
    invoke-static {v1}, Lise;->d(Lise;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    iget-object v1, p0, Lisg;->a:Lise;

    invoke-static {v1}, Lise;->c(Lise;)Litf;

    move-result-object v1

    invoke-interface {v1, v0}, Litf;->b(I)V

    .line 172
    :cond_1
    iget-object v0, p0, Lisg;->a:Lise;

    invoke-virtual {v0}, Lise;->d()V

    goto :goto_0
.end method
