.class Llng;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llkh;


# instance fields
.field final synthetic a:Llnf;


# direct methods
.method constructor <init>(Llnf;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Llng;->a:Llnf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILkqi;)V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Llng;->a:Llnf;

    invoke-static {v0}, Llnf;->a(Llnf;)Llni;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Llng;->a:Llnf;

    invoke-static {v0}, Llnf;->a(Llnf;)Llni;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Llni;->a(ILkqi;)V

    .line 103
    :cond_0
    iget-object v0, p0, Llng;->a:Llnf;

    invoke-virtual {v0}, Llnf;->dismiss()V

    .line 104
    return-void
.end method
