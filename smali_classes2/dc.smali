.class Ldc;
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
.field final synthetic a:Ldb;


# direct methods
.method constructor <init>(Ldb;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Ldc;->a:Ldb;

    .line 658
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 663
    new-instance v0, Ldn;

    invoke-direct {v0}, Ldn;-><init>()V

    return-object v0
.end method
