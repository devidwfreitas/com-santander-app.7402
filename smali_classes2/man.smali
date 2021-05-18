.class Lman;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lmal;


# direct methods
.method constructor <init>(Lmal;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lman;->a:Lmal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lman;->a:Lmal;

    iget-object v0, v0, Lmal;->b:Lmaj;

    invoke-static {v0}, Lmaj;->a(Lmaj;)V

    .line 160
    return-void
.end method
