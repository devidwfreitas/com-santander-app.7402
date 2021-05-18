.class Lasc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lary;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lary;)V
    .locals 5

    .prologue
    .line 2142
    iput-object p1, p0, Lasc;->a:Lary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lasc;->b:Ljava/util/Map;

    .line 2146
    iget-object v0, p0, Lasc;->b:Ljava/util/Map;

    const-string v1, "00001"

    const-string v2, "erro gen\u00e9rico"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2147
    iget-object v0, p0, Lasc;->b:Ljava/util/Map;

    const-string v1, "00002"

    const-string v2, "erro na valida\u00e7\u00e3o do token de sess\u00e3o do MBB"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2148
    iget-object v0, p0, Lasc;->b:Ljava/util/Map;

    const-string v1, "00003"

    const-string v2, "erro na valida\u00e7\u00e3o do token de sess\u00e3o do MBJ"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2149
    iget-object v0, p0, Lasc;->b:Ljava/util/Map;

    const-string v1, "00004"

    const-string v2, "token de sess\u00e3o n\u00e3o informado"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2150
    iget-object v0, p0, Lasc;->b:Ljava/util/Map;

    const-string v1, "00005"

    const-string v2, "app dummy n\u00e3o permitido neste ambiente"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2151
    iget-object v0, p0, Lasc;->b:Ljava/util/Map;

    const-string v1, "00006"

    const-string v2, "token de sess\u00e3o para app dummy tem que ser o penumper do cliente"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2152
    iget-object v0, p0, Lasc;->b:Ljava/util/Map;

    const-string v1, "00007"

    const-string v2, "canal n\u00e3o autorizado"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2153
    iget-object v0, p0, Lasc;->b:Ljava/util/Map;

    const-string v1, "00008"

    const-string v2, "erro de comunica\u00e7\u00e3o com GMS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2154
    iget-object v0, p0, Lasc;->b:Ljava/util/Map;

    const-string v1, "00010"

    const-string v2, "evento de transcri\u00e7\u00e3o desconhecido"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2155
    iget-object v0, p0, Lasc;->b:Ljava/util/Map;

    const-string v1, "00011"

    const-string v2, "query string inv\u00e1lida"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2156
    iget-object v0, p0, Lasc;->b:Ljava/util/Map;

    const-string v1, "00012"

    const-string v2, "configura\u00e7\u00e3o inv\u00e1lida"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2157
    iget-object v0, p0, Lasc;->b:Ljava/util/Map;

    const-string v1, "00013"

    const-string v2, "motivo desconhecido"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2158
    iget-object v0, p0, Lasc;->b:Ljava/util/Map;

    const-string v1, "00014"

    const-string v2, "cliente ineleg\u00edvel"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2159
    iget-object v0, p0, Lasc;->b:Ljava/util/Map;

    const-string v1, "00016"

    const-string v2, "sess\u00e3o no GMS desconectada, n\u00e3o foi poss\u00edvel criar uma sess\u00e3o"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2160
    iget-object v0, p0, Lasc;->b:Ljava/util/Map;

    const-string v1, "00022"

    const-string v2, "o header SessionToken foi informado desnecessariamente"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2161
    iget-object v0, p0, Lasc;->b:Ljava/util/Map;

    const-string v1, "00023"

    const-string v2, "verifica\u00e7\u00e3o de assinatura de request incorreta"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2162
    iget-object v0, p0, Lasc;->b:Ljava/util/Map;

    const-string v1, "00201"

    const-string v2, "foi atingido o tamanho total de arquivos transferidos (somat\u00f3ria de kb dos arquivos)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2163
    iget-object v0, p0, Lasc;->b:Ljava/util/Map;

    const-string v1, "00202"

    const-string v2, "foi atingido o n\u00famero total de arquivos transferidos permitidos"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2164
    iget-object v0, p0, Lasc;->b:Ljava/util/Map;

    const-string v1, "00203"

    const-string v2, "tipo de arquivo incorreto, n\u00e3o configurado no GMS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2165
    iget-object v0, p0, Lasc;->b:Ljava/util/Map;

    const-string v1, "00004"

    const-string v2, "nenhum header foi informado; nem SessionToken nem ChatSessionID"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2167
    iget-object v0, p0, Lasc;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2168
    const-string v2, "[ChatServiceImpl]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2170
    :cond_0
    return-void
.end method
