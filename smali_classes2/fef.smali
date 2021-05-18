.class Lfef;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lfec;


# direct methods
.method constructor <init>(Lfec;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lfef;->a:Lfec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 180
    :try_start_0
    invoke-static {}, Lfec;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Opening camera"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v0, p0, Lfef;->a:Lfec;

    invoke-static {v0}, Lfec;->a(Lfec;)Lfej;

    move-result-object v0

    invoke-virtual {v0}, Lfej;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :goto_0
    return-void

    .line 182
    :catch_0
    move-exception v0

    .line 183
    iget-object v1, p0, Lfef;->a:Lfec;

    invoke-static {v1, v0}, Lfec;->a(Lfec;Ljava/lang/Exception;)V

    .line 184
    invoke-static {}, Lfec;->k()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to open camera"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
