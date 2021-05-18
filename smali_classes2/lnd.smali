.class Llnd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lllp;


# instance fields
.field final synthetic a:Llnc;


# direct methods
.method constructor <init>(Llnc;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Llnd;->a:Llnc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lkql;)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Llnd;->a:Llnc;

    invoke-static {v0}, Llnc;->a(Llnc;)Llne;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Llnd;->a:Llnc;

    invoke-static {v0}, Llnc;->a(Llnc;)Llne;

    move-result-object v0

    invoke-interface {v0, p1}, Llne;->a(Lkql;)V

    .line 68
    :cond_0
    iget-object v0, p0, Llnd;->a:Llnc;

    invoke-virtual {v0}, Llnc;->dismiss()V

    .line 69
    return-void
.end method
