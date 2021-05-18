.class Lhha;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhge;


# instance fields
.field final synthetic a:Lhgz;


# direct methods
.method constructor <init>(Lhgz;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lhha;->a:Lhgz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhfy;)V
    .locals 1

    .prologue
    .line 78
    invoke-static {p1}, Lhhr;->a(Lhfy;)V

    .line 79
    iget-object v0, p0, Lhha;->a:Lhgz;

    invoke-static {v0}, Lhgz;->a(Lhgz;)Lhgs;

    move-result-object v0

    invoke-interface {v0}, Lhgs;->f()V

    .line 80
    iget-object v0, p0, Lhha;->a:Lhgz;

    invoke-static {v0}, Lhgz;->a(Lhgz;)Lhgs;

    move-result-object v0

    invoke-interface {v0, p1}, Lhgs;->b(Lhfy;)V

    .line 81
    return-void
.end method

.method public b(Lhfy;)V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lhha;->a:Lhgz;

    invoke-static {v0}, Lhgz;->a(Lhgz;)Lhgs;

    move-result-object v0

    invoke-interface {v0}, Lhgs;->f()V

    .line 86
    iget-object v0, p0, Lhha;->a:Lhgz;

    invoke-static {v0}, Lhgz;->a(Lhgz;)Lhgs;

    move-result-object v0

    invoke-interface {v0, p1}, Lhgs;->c(Lhfy;)V

    .line 87
    return-void
.end method
