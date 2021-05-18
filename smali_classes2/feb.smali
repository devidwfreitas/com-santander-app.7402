.class Lfeb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lfea;


# direct methods
.method constructor <init>(Lfea;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lfeb;->a:Lfea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lfeb;->a:Lfea;

    iget-object v0, v0, Lfea;->a:Lfdy;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lfdy;->a(Lfdy;Z)Z

    .line 71
    iget-object v0, p0, Lfeb;->a:Lfea;

    iget-object v0, v0, Lfea;->a:Lfdy;

    invoke-static {v0}, Lfdy;->c(Lfdy;)V

    .line 72
    return-void
.end method
