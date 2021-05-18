.class public Lfid;
.super Lgne;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgne",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;Ljava/lang/String;JJ)V
    .locals 1

    .prologue
    .line 304
    iput-object p1, p0, Lfid;->d:Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;

    iput-object p2, p0, Lfid;->a:Ljava/lang/String;

    iput-wide p3, p0, Lfid;->b:J

    iput-wide p5, p0, Lfid;->c:J

    invoke-direct {p0}, Lgne;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 304
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lfid;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6

    .prologue
    .line 309
    :try_start_0
    invoke-static {}, Lhat;->l()Lhaz;

    move-result-object v0

    iget-object v1, p0, Lfid;->a:Ljava/lang/String;

    iget-wide v2, p0, Lfid;->b:J

    iget-wide v4, p0, Lfid;->c:J

    invoke-virtual/range {v0 .. v5}, Lhaz;->a(Ljava/lang/String;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 311
    :catch_0
    move-exception v0

    .line 312
    const-string v1, "HomeLogadaNCorActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 304
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lfid;->a(Ljava/lang/Void;)V

    return-void
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 319
    const-string v0, "NC1"

    iget-object v1, p0, Lfid;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lfid;->d:Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;

    iget-object v1, p0, Lfid;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;->a(Lcom/santander/app/HomeLogadaNaoCorrentistaActivity;Ljava/lang/String;)Z

    .line 321
    :cond_0
    return-void
.end method
