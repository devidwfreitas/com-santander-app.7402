.class final Lbup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lbum;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbuw;


# direct methods
.method constructor <init>(Lbuw;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lbup;->a:Lbuw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lbum;
    .locals 3

    .prologue
    .line 143
    new-instance v1, Lbum;

    invoke-direct {v1}, Lbum;-><init>()V

    .line 145
    :try_start_0
    iget-object v0, p0, Lbup;->a:Lbuw;

    invoke-interface {v0}, Lbuw;->b()Landroid/location/Location;

    move-result-object v0

    iput-object v0, v1, Lbum;->a:Landroid/location/Location;
    :try_end_0
    .catch Lbuy; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 152
    :goto_0
    return-object v1

    .line 146
    :catch_0
    move-exception v0

    .line 147
    iget-object v2, v0, Lbuy;->a:Lbuz;

    iput-object v2, v1, Lbum;->b:Lbuz;

    .line 148
    const-string v2, "Exception while getting location"

    invoke-static {v2, v0}, Lbun;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 149
    :catch_1
    move-exception v0

    .line 150
    sget-object v0, Lbuz;->UNKNOWN_ERROR:Lbuz;

    iput-object v0, v1, Lbum;->b:Lbuz;

    goto :goto_0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0}, Lbup;->a()Lbum;

    move-result-object v0

    return-object v0
.end method
