.class Lfdc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lfcq;

.field final synthetic b:Lfdb;


# direct methods
.method constructor <init>(Lfdb;Lfcq;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lfdc;->b:Lfdb;

    iput-object p2, p0, Lfdc;->a:Lfcq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lfdc;->b:Lfdb;

    iget-object v0, v0, Lfdb;->a:Lfda;

    iget-object v1, p0, Lfdc;->a:Lfcq;

    invoke-virtual {v0, v1}, Lfda;->a(Lfcq;)V

    .line 81
    return-void
.end method
