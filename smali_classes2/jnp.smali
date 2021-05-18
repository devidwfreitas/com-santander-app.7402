.class Ljnp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljok;


# instance fields
.field final synthetic a:Ljnn;

.field final synthetic b:Ljno;


# direct methods
.method constructor <init>(Ljno;Ljnn;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Ljnp;->b:Ljno;

    iput-object p2, p0, Ljnp;->a:Ljnn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/santander/app/lojaonline/domain/LojaTerm;)V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Ljnp;->a:Ljnn;

    invoke-interface {v0, p1}, Ljnn;->a(Lcom/santander/app/lojaonline/domain/LojaTerm;)V

    .line 31
    return-void
.end method

.method public a(Ljnb;)V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Ljnp;->a:Ljnn;

    invoke-interface {v0, p1}, Ljnn;->a(Ljnb;)V

    .line 36
    return-void
.end method
