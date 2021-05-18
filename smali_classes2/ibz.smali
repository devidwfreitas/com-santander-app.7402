.class Libz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Lfoh;

.field final synthetic b:Liby;


# direct methods
.method constructor <init>(Liby;Lfoh;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Libz;->b:Liby;

    iput-object p2, p0, Libz;->a:Lfoh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Libz;->b:Liby;

    invoke-static {v0}, Liby;->a(Liby;)Lidj;

    move-result-object v0

    invoke-interface {v0}, Lidj;->b()V

    .line 43
    iget-object v0, p0, Libz;->a:Lfoh;

    invoke-interface {v0, p1}, Lfoh;->a(Ljava/lang/Object;)V

    .line 44
    return-void
.end method
