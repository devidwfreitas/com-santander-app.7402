.class Ldb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldu",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcz;


# direct methods
.method constructor <init>(Lcz;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Ldb;->a:Lcz;

    .line 653
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 658
    new-instance v0, Ldc;

    invoke-direct {v0, p0}, Ldc;-><init>(Ldb;)V

    .line 666
    invoke-virtual {v0}, Ldc;->a()Ljava/lang/Object;

    move-result-object v0

    .line 658
    return-object v0
.end method
