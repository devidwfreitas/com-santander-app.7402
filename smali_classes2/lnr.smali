.class Llnr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llmh;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Llnp;


# direct methods
.method constructor <init>(Llnp;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Llnr;->b:Llnp;

    iput-object p2, p0, Llnr;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Llnr;->b:Llnp;

    invoke-static {v0}, Llnp;->a(Llnp;)Llns;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Llnr;->b:Llnp;

    invoke-static {v0}, Llnp;->a(Llnp;)Llns;

    move-result-object v1

    iget-object v0, p0, Llnr;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkrn;

    invoke-interface {v1, v0}, Llns;->a(Lkrn;)V

    .line 134
    :cond_0
    return-void
.end method
