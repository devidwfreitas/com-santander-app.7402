.class Lorg/apache/commons/exec/DefaultExecutor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final this$0:Lorg/apache/commons/exec/DefaultExecutor;

.field private final val$command:Lorg/apache/commons/exec/CommandLine;

.field private final val$environment:Ljava/util/Map;

.field private final val$handler:Lorg/apache/commons/exec/ExecuteResultHandler;


# direct methods
.method constructor <init>(Lorg/apache/commons/exec/DefaultExecutor;Lorg/apache/commons/exec/CommandLine;Ljava/util/Map;Lorg/apache/commons/exec/ExecuteResultHandler;)V
    .locals 0

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/exec/DefaultExecutor$1;->this$0:Lorg/apache/commons/exec/DefaultExecutor;

    iput-object p2, p0, Lorg/apache/commons/exec/DefaultExecutor$1;->val$command:Lorg/apache/commons/exec/CommandLine;

    iput-object p3, p0, Lorg/apache/commons/exec/DefaultExecutor$1;->val$environment:Ljava/util/Map;

    iput-object p4, p0, Lorg/apache/commons/exec/DefaultExecutor$1;->val$handler:Lorg/apache/commons/exec/ExecuteResultHandler;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 196
    const v1, -0x21524111

    .line 198
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/exec/DefaultExecutor$1;->this$0:Lorg/apache/commons/exec/DefaultExecutor;

    iget-object v2, p0, Lorg/apache/commons/exec/DefaultExecutor$1;->val$command:Lorg/apache/commons/exec/CommandLine;

    iget-object v3, p0, Lorg/apache/commons/exec/DefaultExecutor$1;->val$environment:Ljava/util/Map;

    iget-object v4, p0, Lorg/apache/commons/exec/DefaultExecutor$1;->this$0:Lorg/apache/commons/exec/DefaultExecutor;

    invoke-static {v4}, Lorg/apache/commons/exec/DefaultExecutor;->access$000(Lorg/apache/commons/exec/DefaultExecutor;)Ljava/io/File;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/commons/exec/DefaultExecutor$1;->this$0:Lorg/apache/commons/exec/DefaultExecutor;

    invoke-static {v5}, Lorg/apache/commons/exec/DefaultExecutor;->access$100(Lorg/apache/commons/exec/DefaultExecutor;)Lorg/apache/commons/exec/ExecuteStreamHandler;

    move-result-object v5

    invoke-static {v0, v2, v3, v4, v5}, Lorg/apache/commons/exec/DefaultExecutor;->access$200(Lorg/apache/commons/exec/DefaultExecutor;Lorg/apache/commons/exec/CommandLine;Ljava/util/Map;Ljava/io/File;Lorg/apache/commons/exec/ExecuteStreamHandler;)I

    move-result v1

    .line 199
    iget-object v0, p0, Lorg/apache/commons/exec/DefaultExecutor$1;->val$handler:Lorg/apache/commons/exec/ExecuteResultHandler;

    invoke-interface {v0, v1}, Lorg/apache/commons/exec/ExecuteResultHandler;->onProcessComplete(I)V
    :try_end_0
    .catch Lorg/apache/commons/exec/ExecuteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 205
    :goto_0
    return-void

    .line 200
    :catch_0
    move-exception v0

    .line 201
    iget-object v1, p0, Lorg/apache/commons/exec/DefaultExecutor$1;->val$handler:Lorg/apache/commons/exec/ExecuteResultHandler;

    invoke-interface {v1, v0}, Lorg/apache/commons/exec/ExecuteResultHandler;->onProcessFailed(Lorg/apache/commons/exec/ExecuteException;)V

    goto :goto_0

    .line 202
    :catch_1
    move-exception v0

    .line 203
    iget-object v2, p0, Lorg/apache/commons/exec/DefaultExecutor$1;->val$handler:Lorg/apache/commons/exec/ExecuteResultHandler;

    new-instance v3, Lorg/apache/commons/exec/ExecuteException;

    const-string v4, "Execution failed"

    invoke-direct {v3, v4, v1, v0}, Lorg/apache/commons/exec/ExecuteException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    invoke-interface {v2, v3}, Lorg/apache/commons/exec/ExecuteResultHandler;->onProcessFailed(Lorg/apache/commons/exec/ExecuteException;)V

    goto :goto_0
.end method
