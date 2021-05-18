.class abstract Lhtn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhtm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Response:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lhtm",
        "<TResponse;>;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "ConsignadoHUBExecutor"

.field private static final b:I = 0x1a4


# instance fields
.field private c:Lhtn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhtn",
            "<TResponse;>;"
        }
    .end annotation
.end field

.field private d:Lir;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private f:Lis;

.field private g:Lih;


# direct methods
.method constructor <init>(Lir;)V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lhto;

    invoke-direct {v0, p0}, Lhto;-><init>(Lhtn;)V

    iput-object v0, p0, Lhtn;->g:Lih;

    .line 96
    iput-object p0, p0, Lhtn;->c:Lhtn;

    .line 97
    iput-object p1, p0, Lhtn;->d:Lir;

    .line 98
    return-void
.end method

.method static synthetic a(Lhtn;)Lis;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lhtn;->f:Lis;

    return-object v0
.end method

.method static synthetic a(Lhtn;Lis;)Lis;
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lhtn;->f:Lis;

    return-object p1
.end method

.method static synthetic a(Lhtn;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lhtn;->e:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic b(Lhtn;)Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lhtn;->c()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lhtn;)Lhtn;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lhtn;->c:Lhtn;

    return-object v0
.end method

.method private c()Ljava/lang/reflect/Type;
    .locals 2

    .prologue
    .line 115
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 117
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 115
    return-object v0
.end method


# virtual methods
.method a()V
    .locals 3

    .prologue
    .line 102
    :try_start_0
    const-string v0, "ConsignadoHUBExecutor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lhtn;->d:Lir;

    invoke-virtual {v2}, Lir;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const-string v0, "ConsignadoHUBExecutor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "body "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lhtn;->d:Lir;

    invoke-virtual {v2}, Lir;->e()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v0

    invoke-virtual {v0}, Lgnp;->b()Lie;

    move-result-object v0

    iget-object v1, p0, Lhtn;->d:Lir;

    iget-object v2, p0, Lhtn;->g:Lih;

    invoke-virtual {v0, v1, v2}, Lie;->a(Lir;Lih;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lhtn;->a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;)V

    goto :goto_0
.end method

.method public b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lhtn;->e:Ljava/util/Map;

    return-object v0
.end method
