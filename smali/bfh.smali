.class Lbfh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbfg;


# direct methods
.method constructor <init>(Lbfg;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lbfh;->a:Lbfg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lbfh;->a:Lbfg;

    invoke-static {v0}, Lbfg;->a(Lbfg;)V

    .line 252
    return-void
.end method
