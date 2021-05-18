.class Lmzo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfoh;


# instance fields
.field final synthetic a:Lirr;

.field final synthetic b:Lfoh;

.field final synthetic c:Lmzn;


# direct methods
.method constructor <init>(Lmzn;Lirr;Lfoh;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lmzo;->c:Lmzn;

    iput-object p2, p0, Lmzo;->a:Lirr;

    iput-object p3, p0, Lmzo;->b:Lfoh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 31
    iget-object v1, p0, Lmzo;->a:Lirr;

    move-object v0, p1

    check-cast v0, Liph;

    invoke-interface {v1, v0}, Lirr;->a(Liph;)V

    .line 32
    iget-object v0, p0, Lmzo;->b:Lfoh;

    invoke-interface {v0, p1}, Lfoh;->a(Ljava/lang/Object;)V

    .line 33
    return-void
.end method
