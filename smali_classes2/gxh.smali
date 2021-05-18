.class Lgxh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Lgxg;


# direct methods
.method constructor <init>(Lgxg;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lgxh;->a:Lgxg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lgxh;->a:Lgxg;

    check-cast p1, Lgxc;

    invoke-static {v0, p1}, Lgxg;->a(Lgxg;Lgxc;)Lgxc;

    .line 135
    iget-object v0, p0, Lgxh;->a:Lgxg;

    invoke-virtual {v0}, Lgxg;->c()V

    .line 136
    return-void
.end method
