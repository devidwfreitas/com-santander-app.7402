.class Lmmn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfoh;


# instance fields
.field final synthetic a:Lmlp;

.field final synthetic b:Lmmm;


# direct methods
.method constructor <init>(Lmmm;Lmlp;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lmmn;->b:Lmmm;

    iput-object p2, p0, Lmmn;->a:Lmlp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 168
    iget-object v0, p0, Lmmn;->b:Lmmm;

    iget-object v0, v0, Lmmm;->a:Lmml;

    iget-object v0, v0, Lmml;->b:Lmmi;

    invoke-static {v0}, Lmmi;->c(Lmmi;)Lmmh;

    move-result-object v0

    iget-object v1, p0, Lmmn;->b:Lmmm;

    iget-object v1, v1, Lmmm;->a:Lmml;

    iget-object v1, v1, Lmml;->b:Lmmi;

    iget-object v2, p0, Lmmn;->b:Lmmm;

    iget-object v2, v2, Lmmm;->a:Lmml;

    iget-object v2, v2, Lmml;->a:Lmlo;

    iget-object v3, p0, Lmmn;->a:Lmlp;

    invoke-static {v1, v2, v3}, Lmmi;->b(Lmmi;Lmlo;Lmlp;)Lgvb;

    move-result-object v1

    invoke-interface {v0, v1}, Lmmh;->a(Lgvb;)V

    .line 169
    return-void
.end method
