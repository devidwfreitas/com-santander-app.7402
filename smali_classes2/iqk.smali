.class public Liqk;
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

.field final synthetic d:Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;Ljava/lang/String;JJ)V
    .locals 1

    .prologue
    .line 727
    iput-object p1, p0, Liqk;->d:Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    iput-object p2, p0, Liqk;->a:Ljava/lang/String;

    iput-wide p3, p0, Liqk;->b:J

    iput-wide p5, p0, Liqk;->c:J

    invoke-direct {p0}, Lgne;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 727
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Liqk;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6

    .prologue
    .line 732
    :try_start_0
    invoke-static {}, Lhat;->l()Lhaz;

    move-result-object v0

    iget-object v1, p0, Liqk;->a:Ljava/lang/String;

    iget-wide v2, p0, Liqk;->b:J

    iget-wide v4, p0, Liqk;->c:J

    invoke-virtual/range {v0 .. v5}, Lhaz;->a(Ljava/lang/String;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 737
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 734
    :catch_0
    move-exception v0

    .line 735
    const-string v1, "HomeLogadaActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 727
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Liqk;->a(Ljava/lang/Void;)V

    return-void
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 0

    .prologue
    .line 742
    invoke-super {p0, p1}, Lgne;->a(Ljava/lang/Object;)V

    .line 743
    return-void
.end method
