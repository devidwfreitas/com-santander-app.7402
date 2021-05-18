.class public Lgxt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgxu;


# instance fields
.field private a:Lgyf;

.field private b:Lgxs;


# direct methods
.method public constructor <init>(Lgyf;Landroid/app/Activity;Lgww;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lgxt;->a:Lgyf;

    .line 30
    new-instance v0, Lgxg;

    invoke-direct {v0, p0, p2, p3}, Lgxg;-><init>(Lgxu;Landroid/app/Activity;Lgww;)V

    iput-object v0, p0, Lgxt;->b:Lgxs;

    .line 31
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lgxt;->b:Lgxs;

    invoke-interface {v0}, Lgxs;->a()V

    .line 36
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lgxt;->a:Lgyf;

    invoke-interface {v0, p1}, Lgyf;->a(I)V

    .line 96
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lgxt;->a:Lgyf;

    invoke-interface {v0, p1}, Lgyf;->a(Landroid/content/Intent;)V

    .line 101
    return-void
.end method

.method public a(Lgsz;)V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lgxt;->a:Lgyf;

    invoke-interface {v0, p1}, Lgyf;->a(Lgsz;)V

    .line 76
    return-void
.end method

.method public a(Lgta;)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lgxt;->a:Lgyf;

    invoke-interface {v0, p1}, Lgyf;->a(Lgta;)V

    .line 66
    return-void
.end method

.method public a(Lgxa;)V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lgxt;->a:Lgyf;

    invoke-interface {v0, p1}, Lgyf;->a(Lgxa;)V

    .line 106
    return-void
.end method

.method public a(Ljava/lang/Class;)V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lgxt;->a:Lgyf;

    invoke-interface {v0, p1}, Lgyf;->a(Ljava/lang/Class;)V

    .line 86
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lgta;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lgxt;->a:Lgyf;

    invoke-interface {v0, p1}, Lgyf;->a(Ljava/util/ArrayList;)V

    .line 71
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lgxt;->b:Lgxs;

    invoke-interface {v0}, Lgxs;->b()V

    .line 41
    return-void
.end method

.method public b(Lgta;)V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lgxt;->a:Lgyf;

    invoke-interface {v0, p1}, Lgyf;->b(Lgta;)V

    .line 81
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lgxt;->a:Lgyf;

    invoke-interface {v0}, Lgyf;->a()V

    .line 46
    return-void
.end method

.method public c(Lgta;)V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lgxt;->a:Lgyf;

    invoke-interface {v0, p1}, Lgyf;->c(Lgta;)V

    .line 91
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lgxt;->a:Lgyf;

    invoke-interface {v0}, Lgyf;->b()V

    .line 51
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lgxt;->a:Lgyf;

    invoke-interface {v0}, Lgyf;->c()V

    .line 56
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lgxt;->a:Lgyf;

    invoke-interface {v0}, Lgyf;->d()V

    .line 61
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lgxt;->a:Lgyf;

    invoke-interface {v0}, Lgyf;->e()V

    .line 110
    return-void
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lgxt;->a:Lgyf;

    invoke-interface {v0}, Lgyf;->f()Z

    move-result v0

    return v0
.end method
