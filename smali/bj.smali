.class Lbj;
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


# instance fields
.field final synthetic a:Lbh;


# direct methods
.method constructor <init>(Lbh;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbj;->a:Lbh;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lbj;->a:Lbh;

    new-instance v1, Lbk;

    invoke-direct {v1, p0}, Lbk;-><init>(Lbj;)V

    .line 30
    invoke-virtual {v1}, Lbk;->a()Ljava/lang/Object;

    move-result-object v1

    .line 25
    iput-object v1, v0, Lbh;->a:Ljava/lang/Object;

    .line 31
    const/4 v0, 0x0

    return-object v0
.end method
