.class Llnk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lllu;


# instance fields
.field final synthetic a:Llnj;


# direct methods
.method constructor <init>(Llnj;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Llnk;->a:Llnj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lksd;)V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Llnk;->a:Llnj;

    invoke-static {v0}, Llnj;->a(Llnj;)Llnl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Llnk;->a:Llnj;

    invoke-static {v0}, Llnj;->a(Llnj;)Llnl;

    move-result-object v0

    invoke-interface {v0, p1}, Llnl;->a(Lksd;)V

    .line 66
    iget-object v0, p0, Llnk;->a:Llnj;

    invoke-virtual {v0}, Llnj;->dismiss()V

    .line 68
    :cond_0
    return-void
.end method
