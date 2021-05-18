.class abstract Lhgo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lgkv",
        "<",
        "Lhfl;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field final synthetic e:Lhgh;


# direct methods
.method constructor <init>(Lhgh;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lhgo;->e:Lhgh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    iput-object p2, p0, Lhgo;->a:Ljava/lang/String;

    .line 238
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public a(Lhfl;)V
    .locals 3

    .prologue
    .line 243
    :try_start_0
    iget-object v0, p0, Lhgo;->e:Lhgh;

    invoke-static {v0, p1}, Lhgh;->a(Lhgh;Lhfl;)V

    .line 244
    invoke-virtual {p1}, Lhfl;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {p0}, Lhgo;->a()V

    .line 253
    :goto_0
    return-void

    .line 247
    :cond_0
    invoke-virtual {p0}, Lhgo;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 249
    :catch_0
    move-exception v0

    .line 250
    const-string v1, "AcordoInteractor"

    iget-object v2, p0, Lhgo;->a:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 251
    invoke-virtual {p0}, Lhgo;->c()V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 233
    check-cast p1, Lhfl;

    invoke-virtual {p0, p1}, Lhgo;->a(Lhfl;)V

    return-void
.end method

.method public abstract b()V
.end method

.method public abstract c()V
.end method
