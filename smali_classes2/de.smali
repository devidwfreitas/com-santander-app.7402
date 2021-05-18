.class Lde;
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
.field final synthetic a:Ldd;


# direct methods
.method constructor <init>(Ldd;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lde;->a:Ldd;

    .line 675
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Lde;->a:Ldd;

    invoke-static {v0}, Ldd;->a(Ldd;)Lcz;

    move-result-object v0

    invoke-static {v0}, Lcz;->a(Lcz;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
