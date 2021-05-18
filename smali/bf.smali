.class Lbf;
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
.field final synthetic a:Lbe;


# direct methods
.method constructor <init>(Lbe;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbf;->a:Lbe;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    new-instance v0, Lbg;

    invoke-direct {v0}, Lbg;-><init>()V

    return-object v0
.end method
