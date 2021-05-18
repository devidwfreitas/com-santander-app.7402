.class Lisc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Lfoh;

.field final synthetic b:Lisb;


# direct methods
.method constructor <init>(Lisb;Lfoh;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lisc;->b:Lisb;

    iput-object p2, p0, Lisc;->a:Lfoh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lisc;->b:Lisb;

    invoke-static {v0}, Lisb;->a(Lisb;)Liun;

    move-result-object v0

    invoke-interface {v0}, Liun;->d()V

    .line 297
    iget-object v0, p0, Lisc;->a:Lfoh;

    invoke-interface {v0, p1}, Lfoh;->a(Ljava/lang/Object;)V

    .line 298
    return-void
.end method
