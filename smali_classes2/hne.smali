.class Lhne;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lih;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lhna;

.field final synthetic c:Lhnc;


# direct methods
.method constructor <init>(Lhnc;Ljava/util/List;Lhna;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lhne;->c:Lhnc;

    iput-object p2, p0, Lhne;->a:Ljava/util/List;

    iput-object p3, p0, Lhne;->b:Lhna;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lis;)V
    .locals 3

    .prologue
    .line 97
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StatusCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lis;->a()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nResponse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 98
    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 99
    const-string v1, "CancelamentoRepository"

    const-string v2, "consultarConsig"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    iget-object v0, p0, Lhne;->b:Lhna;

    const/4 v1, 0x0

    iget-object v2, p0, Lhne;->a:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lhna;->a(ZLjava/util/List;)V

    .line 101
    return-void
.end method

.method public onSuccess(Lis;)V
    .locals 3

    .prologue
    .line 84
    :try_start_0
    iget-object v0, p0, Lhne;->c:Lhnc;

    invoke-static {v0}, Lhnc;->a(Lhnc;)Lmwy;

    move-result-object v0

    invoke-virtual {p1}, Lis;->d()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmwy;->a(Ljava/util/Map;)V

    .line 85
    invoke-static {}, Lmys;->a()Lejm;

    move-result-object v0

    .line 86
    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lhlf;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhlf;

    .line 87
    iget-object v1, p0, Lhne;->a:Ljava/util/List;

    invoke-virtual {v0}, Lhlf;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 88
    iget-object v0, p0, Lhne;->b:Lhna;

    const/4 v1, 0x1

    iget-object v2, p0, Lhne;->a:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lhna;->a(ZLjava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 90
    const-string v1, "CancelamentoRepository"

    const-string v2, "consultarConsig"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    invoke-virtual {p0, p1}, Lhne;->onFailure(Lis;)V

    goto :goto_0
.end method
