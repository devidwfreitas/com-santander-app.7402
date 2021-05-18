.class Liro;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgwd;


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lirm;


# direct methods
.method constructor <init>(Lirm;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Liro;->b:Lirm;

    iput-object p2, p0, Liro;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lipk;)V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Liro;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 108
    return-void
.end method

.method public a(Lis;)V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Liro;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 118
    return-void
.end method

.method public b(Lipk;)V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Liro;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 113
    return-void
.end method
