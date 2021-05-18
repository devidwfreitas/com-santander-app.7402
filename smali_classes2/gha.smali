.class Lgha;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfoh;


# instance fields
.field final synthetic a:Lggs;

.field final synthetic b:Lggz;


# direct methods
.method constructor <init>(Lggz;Lggs;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lgha;->b:Lggz;

    iput-object p2, p0, Lgha;->a:Lggs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 70
    iget-object v0, p0, Lgha;->b:Lggz;

    iget-object v0, v0, Lggz;->c:Lggy;

    invoke-static {v0}, Lggy;->b(Lggy;)Lghd;

    move-result-object v0

    iget-object v1, p0, Lgha;->b:Lggz;

    iget-object v1, v1, Lggz;->c:Lggy;

    iget-object v2, p0, Lgha;->b:Lggz;

    iget-object v2, v2, Lggz;->a:Lghu;

    iget-object v3, p0, Lgha;->a:Lggs;

    iget-object v4, p0, Lgha;->b:Lggz;

    iget-object v4, v4, Lggz;->b:Lggx;

    invoke-static {v1, v2, v3, v4}, Lggy;->a(Lggy;Lghu;Lggs;Lggx;)Lgvb;

    move-result-object v1

    invoke-interface {v0, v1}, Lghd;->a(Lgvb;)V

    .line 71
    return-void
.end method
