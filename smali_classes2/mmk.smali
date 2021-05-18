.class Lmmk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfoh;


# instance fields
.field final synthetic a:Lmlp;

.field final synthetic b:Lmmj;


# direct methods
.method constructor <init>(Lmmj;Lmlp;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lmmk;->b:Lmmj;

    iput-object p2, p0, Lmmk;->a:Lmlp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 108
    iget-object v0, p0, Lmmk;->b:Lmmj;

    iget-object v0, v0, Lmmj;->b:Lmmi;

    invoke-static {v0}, Lmmi;->c(Lmmi;)Lmmh;

    move-result-object v0

    iget-object v1, p0, Lmmk;->b:Lmmj;

    iget-object v1, v1, Lmmj;->b:Lmmi;

    iget-object v2, p0, Lmmk;->b:Lmmj;

    iget-object v2, v2, Lmmj;->a:Lmlo;

    iget-object v3, p0, Lmmk;->a:Lmlp;

    invoke-static {v1, v2, v3}, Lmmi;->a(Lmmi;Lmlo;Lmlp;)Lgvb;

    move-result-object v1

    invoke-interface {v0, v1}, Lmmh;->a(Lgvb;)V

    .line 109
    return-void
.end method
