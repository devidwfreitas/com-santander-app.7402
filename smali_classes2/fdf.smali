.class Lfdf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lfda;


# direct methods
.method constructor <init>(Lfda;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lfdf;->a:Lfda;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lfdf;->a:Lfda;

    invoke-virtual {v0}, Lfda;->f()V

    .line 169
    return-void
.end method
