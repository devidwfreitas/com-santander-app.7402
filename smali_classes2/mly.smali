.class Lmly;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Lmlw;


# direct methods
.method constructor <init>(Lmlw;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lmly;->a:Lmlw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 82
    check-cast p1, Lis;

    .line 83
    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Lmli;

    invoke-direct {v0}, Lmli;-><init>()V

    .line 85
    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmli;->setMensagemErro(Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lmly;->a:Lmlw;

    invoke-static {v1}, Lmlw;->a(Lmlw;)Lmlv;

    move-result-object v1

    invoke-interface {v1, v0}, Lmlv;->b(Lmli;)V

    .line 120
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-static {}, Lmys;->a()Lejm;

    move-result-object v0

    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lmks;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmks;

    .line 92
    invoke-virtual {p1}, Lis;->a()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_1

    .line 93
    iget-object v1, p0, Lmly;->a:Lmlw;

    invoke-static {v1}, Lmlw;->b(Lmlw;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lgkt;

    .line 94
    invoke-virtual {v0}, Lmks;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 95
    invoke-virtual {v0}, Lmks;->getCode()Ljava/lang/String;

    move-result-object v4

    .line 96
    invoke-virtual {v0}, Lmks;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Lgkt;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-static {v1, v2}, Lhav;->a(Landroid/app/Activity;Lgkt;)V

    goto :goto_0

    .line 100
    :cond_1
    new-instance v1, Lmli;

    invoke-direct {v1}, Lmli;-><init>()V

    .line 101
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lmli;->b(Ljava/util/List;)V

    .line 102
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lmli;->a(Ljava/util/List;)V

    .line 106
    invoke-virtual {v0}, Lmks;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmkr;

    .line 107
    new-instance v3, Lmkq;

    invoke-direct {v3}, Lmkq;-><init>()V

    .line 108
    invoke-virtual {v0}, Lmkr;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmkq;->a(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0}, Lmkr;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmkq;->b(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0}, Lmkr;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lmkq;->c(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v1}, Lmli;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 114
    :cond_2
    new-instance v0, Lmkq;

    invoke-direct {v0}, Lmkq;-><init>()V

    .line 115
    const-string v2, "Ver todos os bancos"

    invoke-virtual {v0, v2}, Lmkq;->b(Ljava/lang/String;)V

    .line 116
    const-string v2, "99999"

    invoke-virtual {v0, v2}, Lmkq;->a(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v1}, Lmli;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v0, p0, Lmly;->a:Lmlw;

    invoke-static {v0}, Lmlw;->a(Lmlw;)Lmlv;

    move-result-object v0

    invoke-interface {v0, v1}, Lmlv;->a(Lmli;)V

    goto/16 :goto_0
.end method
