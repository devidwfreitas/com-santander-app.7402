.class Lasa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Larj;

.field final synthetic b:Z

.field final synthetic c:Lary;


# direct methods
.method constructor <init>(Lary;Larj;Z)V
    .locals 0

    .prologue
    .line 1933
    iput-object p1, p0, Lasa;->c:Lary;

    iput-object p2, p0, Lasa;->a:Larj;

    iput-boolean p3, p0, Lasa;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1936
    :try_start_0
    iget-object v0, p0, Lasa;->c:Lary;

    iget-object v1, p0, Lasa;->a:Larj;

    iget-boolean v2, p0, Lasa;->b:Z

    invoke-virtual {v0, v1, v2}, Lary;->a(Larj;Z)V
    :try_end_0
    .catch Laqd; {:try_start_0 .. :try_end_0} :catch_0

    .line 1941
    :goto_0
    return-void

    .line 1937
    :catch_0
    move-exception v0

    .line 1938
    iget-object v1, p0, Lasa;->a:Larj;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Larj;->i(Z)V

    .line 1939
    const-string v1, "[ChatServiceImpl]"

    invoke-virtual {v0}, Laqd;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
