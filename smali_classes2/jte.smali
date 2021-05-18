.class Ljte;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Ljtd;


# direct methods
.method constructor <init>(Ljtd;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Ljte;->a:Ljtd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 47
    if-eqz p1, :cond_1

    .line 48
    check-cast p1, Lis;

    .line 49
    invoke-virtual {p1}, Lis;->a()Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Ljte;->a:Ljtd;

    invoke-static {v0}, Ljtd;->a(Ljtd;)Ljtc;

    move-result-object v0

    invoke-interface {v0}, Ljtc;->a()V

    .line 57
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Ljte;->a:Ljtd;

    invoke-static {v0}, Ljtd;->a(Ljtd;)Ljtc;

    move-result-object v0

    invoke-interface {v0, p1}, Ljtc;->a(Lis;)V

    goto :goto_0

    .line 55
    :cond_1
    iget-object v0, p0, Ljte;->a:Ljtd;

    invoke-static {v0}, Ljtd;->a(Ljtd;)Ljtc;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljtc;->a(Lis;)V

    goto :goto_0
.end method
