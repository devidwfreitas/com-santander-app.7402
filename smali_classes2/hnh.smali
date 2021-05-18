.class Lhnh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lih;


# instance fields
.field final synthetic a:Lhxl;

.field final synthetic b:Lhmz;

.field final synthetic c:Lhnc;


# direct methods
.method constructor <init>(Lhnc;Lhxl;Lhmz;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lhnh;->c:Lhnc;

    iput-object p2, p0, Lhnh;->a:Lhxl;

    iput-object p3, p0, Lhnh;->b:Lhmz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lis;)V
    .locals 3

    .prologue
    .line 186
    iget-object v0, p0, Lhnh;->c:Lhnc;

    invoke-static {v0}, Lhnc;->a(Lhnc;)Lmwy;

    move-result-object v0

    invoke-virtual {v0}, Lmwy;->l()V

    .line 187
    invoke-static {}, Lmys;->a()Lejm;

    move-result-object v0

    .line 188
    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lhle;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhle;

    .line 189
    iget-object v1, p0, Lhnh;->a:Lhxl;

    invoke-interface {v1, v0}, Lhxl;->a(Lhlh;)V

    .line 190
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

    .line 191
    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 192
    const-string v1, "CancelamentoRepository"

    const-string v2, "cancelarConsig"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    iget-object v0, p0, Lhnh;->b:Lhmz;

    invoke-interface {v0}, Lhmz;->b()V

    .line 194
    return-void
.end method

.method public onSuccess(Lis;)V
    .locals 3

    .prologue
    .line 172
    :try_start_0
    iget-object v0, p0, Lhnh;->c:Lhnc;

    invoke-static {v0}, Lhnc;->a(Lhnc;)Lmwy;

    move-result-object v0

    invoke-virtual {v0}, Lmwy;->l()V

    .line 173
    invoke-static {}, Lmys;->a()Lejm;

    move-result-object v0

    .line 174
    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lhle;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhle;

    .line 175
    iget-object v1, p0, Lhnh;->a:Lhxl;

    invoke-interface {v1, v0}, Lhxl;->a(Lhlh;)V

    .line 176
    iget-object v0, p0, Lhnh;->c:Lhnc;

    iget-object v1, p0, Lhnh;->b:Lhmz;

    invoke-static {v0, v1}, Lhnc;->a(Lhnc;Lhmz;)V

    .line 177
    iget-object v0, p0, Lhnh;->c:Lhnc;

    invoke-static {v0}, Lhnc;->b(Lhnc;)Lhya;

    move-result-object v0

    invoke-interface {v0}, Lhya;->h()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :goto_0
    return-void

    .line 178
    :catch_0
    move-exception v0

    .line 179
    const-string v1, "CancelamentoRepository"

    const-string v2, "cancelarConsig"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    invoke-virtual {p0, p1}, Lhnh;->onFailure(Lis;)V

    goto :goto_0
.end method
