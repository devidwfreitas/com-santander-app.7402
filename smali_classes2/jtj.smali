.class Ljtj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfoh;


# instance fields
.field final synthetic a:Ljsu;

.field final synthetic b:Ljti;


# direct methods
.method constructor <init>(Ljti;Ljsu;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Ljtj;->b:Ljti;

    iput-object p2, p0, Ljtj;->a:Ljsu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 98
    iget-object v0, p0, Ljtj;->b:Ljti;

    iget-object v0, v0, Ljti;->a:Ljth;

    invoke-static {v0}, Ljth;->a(Ljth;)Ljtg;

    move-result-object v0

    iget-object v1, p0, Ljtj;->b:Ljti;

    iget-object v1, v1, Ljti;->a:Ljth;

    iget-object v2, p0, Ljtj;->a:Ljsu;

    invoke-static {v1, v2}, Ljth;->a(Ljth;Ljsu;)Lgvb;

    move-result-object v1

    invoke-interface {v0, v1}, Ljtg;->a(Lgvb;)V

    .line 100
    return-void
.end method
