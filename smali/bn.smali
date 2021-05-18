.class Lbn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbc",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lbh;->a()Lbh;

    move-result-object v0

    iget-object v0, v0, Lbh;->a:Ljava/lang/Object;

    return-object v0
.end method
