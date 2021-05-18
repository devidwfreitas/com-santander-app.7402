.class Lelb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leml;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Leml",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lejv;

.field final synthetic b:Ljava/lang/reflect/Type;

.field final synthetic c:Lela;


# direct methods
.method constructor <init>(Lela;Lejv;Ljava/lang/reflect/Type;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lelb;->c:Lela;

    iput-object p2, p0, Lelb;->a:Lejv;

    iput-object p3, p0, Lelb;->b:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lelb;->a:Lejv;

    iget-object v1, p0, Lelb;->b:Ljava/lang/reflect/Type;

    invoke-interface {v0, v1}, Lejv;->a(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
