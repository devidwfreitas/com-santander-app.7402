.class Lbi;
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
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 14
    new-instance v0, Lbh;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbh;-><init>(Lbh;)V

    return-object v0
.end method
