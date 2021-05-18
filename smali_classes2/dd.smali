.class Ldd;
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
        "Ldl;",
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
    iput-object p1, p0, Ldd;->a:Lcz;

    .line 672
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Ldd;)Lcz;
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Ldd;->a:Lcz;

    return-object v0
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Ldd;->b()Ldl;

    move-result-object v0

    return-object v0
.end method

.method public b()Ldl;
    .locals 1

    .prologue
    .line 675
    new-instance v0, Lde;

    invoke-direct {v0, p0}, Lde;-><init>(Ldd;)V

    .line 683
    invoke-virtual {v0}, Lde;->a()Ljava/lang/Object;

    move-result-object v0

    .line 675
    check-cast v0, Ldl;

    return-object v0
.end method
