.class final Lfek;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# instance fields
.field final synthetic a:Lfej;

.field private b:Lfev;

.field private c:Lfdu;


# direct methods
.method public constructor <init>(Lfej;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lfek;->a:Lfej;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    return-void
.end method


# virtual methods
.method public a(Lfdu;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lfek;->c:Lfdu;

    .line 88
    return-void
.end method

.method public a(Lfev;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lfek;->b:Lfev;

    .line 92
    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 7

    .prologue
    .line 96
    iget-object v1, p0, Lfek;->c:Lfdu;

    .line 97
    iget-object v6, p0, Lfek;->b:Lfev;

    .line 98
    if-eqz v1, :cond_1

    if-eqz v6, :cond_1

    .line 99
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v4

    .line 101
    :try_start_0
    new-instance v0, Lfdv;

    iget v2, v1, Lfdu;->a:I

    iget v3, v1, Lfdu;->b:I

    iget-object v1, p0, Lfek;->a:Lfej;

    invoke-virtual {v1}, Lfej;->f()I

    move-result v5

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lfdv;-><init>([BIIII)V

    .line 102
    invoke-interface {v6, v0}, Lfev;->a(Lfdv;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 105
    invoke-static {}, Lfej;->n()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Camera preview failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    invoke-interface {v6, v0}, Lfev;->a(Ljava/lang/Exception;)V

    goto :goto_0

    .line 109
    :cond_1
    invoke-static {}, Lfej;->n()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Got preview callback, but no handler or resolution available"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    if-eqz v6, :cond_0

    .line 112
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "No resolution available"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v0}, Lfev;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
