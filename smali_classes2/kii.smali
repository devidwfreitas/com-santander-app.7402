.class Lkii;
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
        "Lkht;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkig;


# direct methods
.method constructor <init>(Lkig;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lkii;->a:Lkig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 132
    check-cast p1, Lkht;

    invoke-virtual {p0, p1}, Lkii;->a(Lkht;)V

    return-void
.end method

.method public a(Lkht;)V
    .locals 4

    .prologue
    .line 135
    if-nez p1, :cond_0

    .line 136
    iget-object v0, p0, Lkii;->a:Lkig;

    invoke-static {v0}, Lkig;->a(Lkig;)Lkip;

    move-result-object v0

    const-string v1, "Ocorreu um erro ao carregar as informa\u00e7\u00f5es"

    invoke-virtual {v0, v1}, Lkip;->a(Ljava/lang/String;)V

    .line 169
    :goto_0
    iget-object v0, p0, Lkii;->a:Lkig;

    invoke-static {v0}, Lkig;->a(Lkig;)Lkip;

    move-result-object v0

    invoke-virtual {v0}, Lkip;->b()V

    .line 170
    return-void

    .line 138
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lkht;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lkht;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 139
    :cond_1
    invoke-virtual {p1}, Lkht;->getMensagemErro()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, ""

    invoke-virtual {p1}, Lkht;->getMensagemErro()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 140
    :cond_2
    iget-object v0, p0, Lkii;->a:Lkig;

    invoke-static {v0}, Lkig;->a(Lkig;)Lkip;

    move-result-object v0

    invoke-virtual {p1}, Lkht;->getMensagemErro()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkip;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :cond_3
    iget-object v0, p0, Lkii;->a:Lkig;

    invoke-static {v0}, Lkig;->a(Lkig;)Lkip;

    move-result-object v0

    const-string v1, "Erro ao buscar operadoras. Tente novamente mais tarde"

    invoke-virtual {v0, v1}, Lkip;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 145
    :cond_4
    iget-object v0, p0, Lkii;->a:Lkig;

    new-instance v1, Lkhx;

    invoke-direct {v1}, Lkhx;-><init>()V

    invoke-static {v0, v1}, Lkig;->a(Lkig;Lkhx;)Lkhx;

    .line 147
    iget-object v0, p0, Lkii;->a:Lkig;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-static {v0, v1}, Lkig;->a(Lkig;Ljava/util/Vector;)Ljava/util/Vector;

    .line 150
    invoke-virtual {p1}, Lkht;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkhw;

    .line 152
    new-instance v2, Lfvf;

    invoke-direct {v2}, Lfvf;-><init>()V

    .line 153
    invoke-virtual {v0}, Lkhw;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lfvf;->a(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v0}, Lkhw;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lfvf;->b(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0}, Lkhw;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lfvf;->c(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v0}, Lkhw;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lfvf;->d(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v0}, Lkhw;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lfvf;->e(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v0}, Lkhw;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lfvf;->f(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lkii;->a:Lkig;

    invoke-static {v0}, Lkig;->b(Lkig;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 163
    :cond_5
    iget-object v0, p0, Lkii;->a:Lkig;

    invoke-static {v0}, Lkig;->c(Lkig;)Lkhx;

    move-result-object v0

    iget-object v1, p0, Lkii;->a:Lkig;

    invoke-static {v1}, Lkig;->b(Lkig;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkhx;->a(Ljava/util/Vector;)V

    .line 164
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    iget-object v1, p0, Lkii;->a:Lkig;

    invoke-static {v1}, Lkig;->c(Lkig;)Lkhx;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmir;->a(Lkhx;)V

    .line 166
    iget-object v0, p0, Lkii;->a:Lkig;

    invoke-static {v0}, Lkig;->d(Lkig;)V

    goto/16 :goto_0
.end method
