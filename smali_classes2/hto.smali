.class Lhto;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lih;


# instance fields
.field final synthetic a:Lhtn;


# direct methods
.method constructor <init>(Lhtn;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lhto;->a:Lhtn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lis;)Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 72
    :try_start_0
    invoke-virtual {p1}, Lis;->a()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x1a4

    if-eq v1, v2, :cond_0

    .line 79
    :goto_0
    return-object v0

    .line 74
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 75
    const-string v2, "code"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 76
    const-string v3, "message"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 77
    new-instance v1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;

    invoke-direct {v1, v2, v3}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 78
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private b(Lis;)V
    .locals 4

    .prologue
    .line 84
    if-eqz p1, :cond_1

    .line 85
    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v0

    .line 86
    const-string v1, "ConsignadoHUBExecutor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "statusCode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lis;->a()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const-string v1, "ConsignadoHUBExecutor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const-string v1, "ConsignadoHUBExecutor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :goto_1
    return-void

    .line 88
    :cond_0
    const-string v0, "null"

    goto :goto_0

    .line 90
    :cond_1
    const-string v0, "ConsignadoHUBExecutor"

    const-string v1, "null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public onFailure(Lis;)V
    .locals 2

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lhto;->b(Lis;)V

    .line 65
    iget-object v0, p0, Lhto;->a:Lhtn;

    invoke-static {v0, p1}, Lhtn;->a(Lhtn;Lis;)Lis;

    .line 66
    invoke-direct {p0, p1}, Lhto;->a(Lis;)Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lhto;->a:Lhtn;

    invoke-static {v1}, Lhtn;->c(Lhtn;)Lhtn;

    move-result-object v1

    invoke-virtual {v1, v0}, Lhtn;->a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;)V

    .line 68
    return-void
.end method

.method public onSuccess(Lis;)V
    .locals 4

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lhto;->b(Lis;)V

    .line 44
    iget-object v0, p0, Lhto;->a:Lhtn;

    invoke-static {v0, p1}, Lhtn;->a(Lhtn;Lis;)Lis;

    .line 45
    iget-object v0, p0, Lhto;->a:Lhtn;

    invoke-static {v0}, Lhtn;->a(Lhtn;)Lis;

    move-result-object v0

    invoke-virtual {v0}, Lis;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 46
    iget-object v1, p0, Lhto;->a:Lhtn;

    iget-object v2, p0, Lhto;->a:Lhtn;

    invoke-static {v2}, Lhtn;->a(Lhtn;)Lis;

    move-result-object v2

    invoke-virtual {v2}, Lis;->d()Ljava/util/Map;

    move-result-object v2

    invoke-static {v1, v2}, Lhtn;->a(Lhtn;Ljava/util/Map;)Ljava/util/Map;

    .line 48
    :try_start_0
    iget-object v1, p0, Lhto;->a:Lhtn;

    invoke-static {v1}, Lhtn;->b(Lhtn;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 49
    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 50
    invoke-static {}, Lmys;->a()Lejm;

    move-result-object v3

    .line 51
    invoke-virtual {v3, v2, v1}, Lejm;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 52
    iget-object v2, p0, Lhto;->a:Lhtn;

    invoke-static {v2}, Lhtn;->c(Lhtn;)Lhtn;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lhtn;->a(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    const-string v1, "ONSUCCESS_EXCEPTION"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v0, p0, Lhto;->a:Lhtn;

    invoke-static {v0}, Lhtn;->c(Lhtn;)Lhtn;

    move-result-object v0

    new-instance v1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;

    .line 57
    invoke-virtual {p1}, Lis;->a()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 58
    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0, v1}, Lhtn;->a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;)V

    goto :goto_0
.end method
