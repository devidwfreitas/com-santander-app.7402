.class Lbk;
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
.field final synthetic a:Lbj;


# direct methods
.method constructor <init>(Lbj;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbk;->a:Lbj;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lbe;

    invoke-direct {v0}, Lbe;-><init>()V

    invoke-virtual {v0}, Lbe;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
