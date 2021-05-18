.class Lmvc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lmva;


# direct methods
.method constructor <init>(Lmva;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lmvc;->a:Lmva;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lmvc;->a:Lmva;

    invoke-static {v0}, Lmva;->a(Lmva;)V

    .line 125
    return-void
.end method
